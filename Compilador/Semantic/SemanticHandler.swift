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
}

class SemanticHandler {
    var delegate : SemanticErrorDelegate? = nil
    var quadruples : [Quadruple] = []
    var symbolTable : SymbolTable = SymbolTable()
    var jumpStack : Stack<Quadruple> = []
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
    
            let symbolTemporal : Symbol = Symbol(0, "temp\(numTemp)" as NSString, .field, resultType, true, false, true)
            numTemp = numTemp + 1
           
            self.quadruples.append(Quadruple(argument1: leftOperand , argument2: rightOperand, op: op, result: symbolTemporal.identifier))
            self.addOperand(symbol: symbolTemporal)
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
        print("OperadorTernario")
    }
    
    
    func addCondicional(){
        // IF el ultimo operando es de tipo boolean sino ERROR
        // Agregar cuadruplo con (GOTOF, resultado del pop, _, _) y agregar a pila de saltos una ubicacion antes de la acutual (num de quadruplos - 1)
        //
    }
    
    func endCodicional(){
        // Sacar cosa de la pila de saltos (puede ser un GOTO) para saber en que indice rellenar
        // Poner en este quadruplo el indice de a donde debe ir una vez que termine como parte del resultado
        // Fill (indice al cual ir, size de cuadruplos)
    }
    
    func addElse(){
        // A comenzar el else
        // Add un nuevo cuadruplo con GOTO para saltar ejecucion de lo siguiente en caso de verdadero
        // Si tenemos algo en la pila de saltos
        // Entonces tomar como indice al utlimo de la pila de saltos inice=pilaSaltos.pop
        // Agregar a la pila de saltos uno antes de ahorita, pila.append(tamano de cuadruplos menos 1)
        // Rellenar en Fill (inice, size de cuadruplos)
    }
    
    
    
    func saveValueVariable(id: String){
        guard let symbol = symbolTable.lookup(id) else {print("No se puede inicializar var, no encontrada"); return}
        // Add to operands stack
        
        if(!symbol.assigned){
            symbol.assigned = true
            symbol.type = operationStack.types.peek() ?? .void
        }
        
        self.addOperand(symbol: symbol)
        self.addOperator(op: .assign)
        
        
        let op : Operator = operationStack.operators.pop()!

        let rightOperand : String = operationStack.operands.pop() ?? ""
        let rightType : TypeSymbol = operationStack.types.pop() ?? .void

        
        let leftOperand  : String = operationStack.operands.pop() ?? ""
        let leftType : TypeSymbol = operationStack.types.pop() ?? .void
        
        guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
            print("ERROR")
            return
        }
        self.quadruples.append(Quadruple(argument1: leftOperand , argument2: nil, op: op, result: rightOperand))
    }
}
