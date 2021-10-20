//
//  SemanticHandler.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

protocol SemanticErrorDelegate {
    func sendVariableRepeated(id : String)
    func sendInvalidOperationBetween(t1 : TypeSymbol, t2: TypeSymbol)
    func sendUndeclareVariable(id: NSString)
    func sendTypeMismatch()
}

class SemanticHandler {
    var delegate : SemanticErrorDelegate? = nil
    var quadruples : [Quadruple] = []
    var symbolTable : SymbolTable = SymbolTable()
    var jumpStack : Stack<Int> = []
    var operationStack : OperatorStack = OperatorStack()
    var numTemp : Int = 0
    var numConstantes : Int = 0
    var memory : VirtualMemorySemantic = VirtualMemorySemantic()
    
    func insertSymbolToST(_ id : NSString, _ constant: Bool, _ array : Bool, _ type: TypeSymbol = .void, _ kind : Kind = .field){
        let s = Symbol(lex.line, id, kind, type, constant, array, false)

        
        if (!symbolTable.insertInHashTable(s)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                s.address = newGlobalVariable(s: type)
            }
        }
        
    }
    
    func startScope(){
        symbolTable.newNode()
    }
    
    func endScope(){
        symbolTable.pop()
    }
    
    func addOperator(op : Operator){
        operationStack.operators.push(op)
    }
    
    func addOperand(symbol : Symbol){
        operationStack.operands.push(symbol.identifier)
        operationStack.types.push(symbol.type)
    }
    
    func addQuadruple() {
        // Logic for 2 operands
        if(operationStack.operands.size() >= 2 && operationStack.operators.size() >= 1){
            
            let op : Operator = operationStack.operators.pop()!

            let rightOperand : String = operationStack.operands.pop() ?? ""
            let rightType : TypeSymbol = operationStack.types.pop() ?? .void
    
            
            let leftOperand  : String = operationStack.operands.pop() ?? ""
            let leftType : TypeSymbol = operationStack.types.pop() ?? .void
    
            
            guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
                print("ERROR")
                delegate?.sendInvalidOperationBetween(t1: leftType, t2: rightType)
                return
            }
           
            self.quadruples.append(Quadruple(argument1: leftOperand , argument2: rightOperand, op: op, result: "temp\(numTemp)"))
            self.operationStack.operands.push("temp\(numTemp)")
            self.operationStack.types.push(resultType)
            numTemp = numTemp + 1

        }
        
    }
    
    func newGlobalVariable(s : TypeSymbol) -> Int {
        return memory.newGlobalAddress(type: s)
    }
    
    func addConstantInteger(_ number :NSNumber){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .integer, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func addConstantFloat(_ number : NSNumber){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .float, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func addConstantString(_ string : NSString){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .string, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func addConstantBool(_ number : NSNumber){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .boolean, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func addIDAsQuadruple(_ id : NSString){
        let identifier : String = String(id)
        guard let operand = self.symbolTable.lookup(identifier) else {
            delegate?.sendUndeclareVariable(id: id)
            return}
        self.addOperand(symbol: operand)
    }
    
    func addQuadrupleWithTernaryOperator(){        
        if(operationStack.operands.size() >= 1){
            
            let rightOperand : String = operationStack.operands.pop() ?? ""
            let rightType : TypeSymbol = operationStack.types.pop() ?? .void
    
            if(rightType != .boolean){
                print("ERROR type mismatch ternary")
            }
            
            self.quadruples.append(Quadruple(argument1: rightOperand, argument2: nil, op: .gotof, result: nil))
            self.jumpStack.push(self.quadruples.count - 1)
        }
    }
    
    func colonTernaryOperator(){
        if(operationStack.operands.size() >= 1){
            let indexToFill = self.jumpStack.pop() ?? 0
            
//            do{
//                try self.generateQuadruple()
//            }catch(let error){
//                print(error.localizedDescription)
//            }
//
            
            self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
            self.jumpStack.push(self.quadruples.count - 1)
            
            self.fillQuadruple(index: indexToFill, value: "\(self.quadruples.count)")
            
        }
    }
    
    func endTernaryOperator(){
        let indexToFill = self.jumpStack.pop() ?? 0
            
//            do{
//                try self.generateQuadruple()
//            }catch(let error){
//                print(error.localizedDescription)
//            }
            
        
            
        self.fillQuadruple(index: indexToFill, value: "\(self.quadruples.count)")
            
        if(self.operationStack.operands.size() >= 2){
            let op : Operator = .assign

            let rightOperand : String = operationStack.operands.pop() ?? ""
            let rightType = operationStack.types.pop() ?? .void

            
            let leftOperand  : String = operationStack.operands.pop() ?? ""
            let leftType = operationStack.types.pop() ?? .void
            
            guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
                print("ERROR")
                delegate?.sendInvalidOperationBetween(t1: leftType, t2: rightType)
                return
            }
            
            self.quadruples.append(Quadruple(argument1: rightOperand, argument2: leftOperand, op: op, result: "temp\(numTemp)"))
            self.operationStack.operands.push("temp\(numTemp)")
            self.operationStack.types.push(resultType)
            numTemp = numTemp + 1
        }
    }
    
    
    func addCondicional(){
        // IF el ultimo operando es de tipo boolean sino ERROR
        // Agregar cuadruplo con (GOTOF, resultado del pop, _, _) y agregar a pila de saltos una ubicacion antes de la acutual (num de quadruplos - 1)
        //
        if (operationStack.types.pop() != TypeSymbol.boolean) {
            print("ERROR")
            delegate?.sendTypeMismatch()
        }
        let result : String = operationStack.operands.pop() ?? ""
        self.quadruples.append(Quadruple(argument1: result, argument2: nil, op: .gotof, result: nil))
        print("Inserted Quadruple \(quadruples.count)")
        jumpStack.push(quadruples.count - 1)
    }
    
    func endCondicional(){
        // Sacar cosa de la pila de saltos (puede ser un GOTO) para saber en que indice rellenar
        // Poner en este quadruplo el indice de a donde debe ir una vez que termine como parte del resultado
        // Fill (indice al cual ir, size de cuadruplos)
        let end = jumpStack.pop() ?? 0
        fillQuadruple(index: end, value: String(quadruples.count))
        print("Filled Quadruple \(end) with address \(quadruples.count)")
    }
    
    func fillQuadruple(index: Int, value : String){
        quadruples[index].result = value
    }
    
    func addElse(){
        // A comenzar el else
        // Add un nuevo cuadruplo con GOTO para saltar ejecucion de lo siguiente en caso de verdadero
        // Si tenemos algo en la pila de saltos
        // Entonces tomar como indice al utlimo de la pila de saltos inice=pilaSaltos.pop
        // Agregar a la pila de saltos uno antes de ahorita, pila.append(tamano de cuadruplos menos 1)
        // Rellenar en Fill (inice, size de cuadruplos)
        self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
        guard let end = jumpStack.pop() else {print("No hay algo en el jumpStack"); return}
        jumpStack.push(quadruples.count - 1)
        fillQuadruple(index: end, value: String(quadruples.count))

        print("Filled Quadruple ELSE \(end) with address \(quadruples.count - 1)")
    }
    
    func addPrint(){
        if(!operationStack.operands.isEmpty){
            let operand = operationStack.operands.pop()
            let _ = operationStack.types.pop()
            let op = operationStack.operators.pop() ?? .print
            self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: op, result: operand))
        }
    }
    
    
    func addForEachCompleteRange(id: String){
        self.jumpStack.push(self.quadruples.count)
        self.operationStack.operators.push(.lessOrEqualThan)
        
        self.addQuadruple()
       
        if (operationStack.types.pop() != TypeSymbol.boolean) {
            print("ERROR")
            delegate?.sendTypeMismatch()
        }
        
        let result : String = operationStack.operands.pop() ?? ""
        
        self.quadruples.append(Quadruple(argument1: result, argument2: nil, op: .gotof, result: nil))
        self.jumpStack.push(self.quadruples.count - 1)
        
        // i++
        
        self.operationStack.operators.push(.sum)
        self.addOperand(symbol: self.symbolTable.lookup(id)!)
        self.operationStack.types.push(.integer)
        self.operationStack.operands.push("1")
        self.addQuadruple()
        self.addOperator(op: .equal)
        self.saveValueVariable(id: id)
        
    }
    
    func endForEachRange(){
        
        guard let indexFalse = self.jumpStack.pop() else { return  }
        guard let indexGoto = self.jumpStack.pop() else { return  }
        
        // SUM 1
        
        self.fillQuadruple(index: indexFalse, value: "\(quadruples.count)")
        self.quadruples.append(Quadruple(argument1: "\(indexGoto)", argument2: nil, op: .goto, result: nil))
        
    }
    
    func getResultFromQuadruple(index: Int) -> String{
        return self.quadruples[index].argument2 ?? ""
    }
    
    
    func changeArgument1Quadruple(arg1: String, index : Int){
        quadruples[index].argument1 = arg1
    }
    
    
    func saveValueVariable(id: String){
        guard let symbol = symbolTable.lookup(id) else {print("No se puede inicializar var, no encontrada"); return}
        // Add to operands stack
        
        if(!symbol.assigned){
            symbol.assigned = true
            symbol.type = operationStack.types.peek() ?? .void
        }
        
        self.addOperand(symbol: symbol)
        
        do {
           try generateQuadruple()
        }catch(let error){
            print(error.localizedDescription)
        }
       
    }
    
    func generateQuadruple() throws {

        let op : Operator = operationStack.operators.pop()!

        let rightOperand : String = operationStack.operands.pop() ?? ""
        let rightType : TypeSymbol = operationStack.types.pop() ?? .void

        
        let leftOperand  : String = operationStack.operands.pop() ?? ""
        let leftType : TypeSymbol = operationStack.types.pop() ?? .void
        
        guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
            print("ERROR")
            throw ErrorCompiler.TypeMismatch
        }
        let generatedQuadruple : Quadruple = Quadruple(argument1: leftOperand , argument2: nil, op: op, result: rightOperand)
        self.quadruples.append(generatedQuadruple)
//        self.operationStack.operands.push(rightOperand)
//        self.operationStack.types.push(rightType)
    }
}

enum ErrorCompiler : Error{
    case TypeMismatch
}
