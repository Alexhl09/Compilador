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

class SemanticHandler : CustomStringConvertible {
    var delegate : SemanticErrorDelegate? = nil
    var quadruples : [Quadruple] = []
    var symbolTable : SymbolTable = SymbolTable()
    var jumpStack : Stack<Int> = []
    var operationStack : OperatorStack = OperatorStack()
    var numTemp : Int = 0
    var numConstantes : Int = 0
    var constants: [String: Int] = [:]
    var functionAsMainThread : String? = nil
    var memory : VirtualMemorySemantic = VirtualMemorySemantic()
    
    public var description: String {
        let q = quadruples.enumerated().reduce("", { res, q in
            res.appending("[\(q.offset)] - Op: \(q.element.op )".padding(toLength: 20, withPad: " ", startingAt: 0) + "\tAddress1: \(q.element.argument1 ?? "")\t\tAddress2: \(q.element.argument2 ?? "")\tResult: \(q.element.result ?? "")\n")
        })
        
        let constInfo = constants.description
        return
    """
    Memory: \n \(memory.description)
    
    Cuadruplos:\n\(q)
    
    JumpStack:\n \(jumpStack.description)
    
    Operators:\n \(operationStack.operators.description)
    
    Operands:\n \(operationStack.operands.description)
        
    Last SymbolTable:\n \(symbolTable.description)
    
    Constants: \n \(constInfo)
    
    """
        
    }
    
    init() {
        self.jumpStack.push(self.quadruples.count)
        self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
    }
    
    func insertSymbolToST(_ id : NSString, _ constant: Bool, _ array : Bool, _ type: TypeSymbol = .void, _ kind : Kind = .field){
        let s = Symbol(lex.line, id, kind, type, constant, array, false, address: self.memory.newLocalAdress(type: type))
        
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
        operationStack.addOperand(operand: "\(symbol.address)", type: symbol.type)
    }
    
    func addOperandByMemory(memoryAddress: Int, type: TypeSymbol) {
        operationStack.addOperand(operand: "\(memoryAddress)", type: type)
    }
    
    func addQuadruple() {
        // Logic for 2 operands
        if(operationStack.operands.size() >= 2 && operationStack.operators.size() >= 1){
            
            let op : Operator = operationStack.operators.pop()!

            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand()!
    
            let (leftOperand, leftType) : (String, TypeSymbol) = operationStack.getLastOperand()!
    
            
            guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
                print("ERROR")
                delegate?.sendInvalidOperationBetween(t1: leftType, t2: rightType)
                return
            }
            
            let tempAddress = memory.newTemporalAddress(type: resultType)
           
            self.quadruples.append(Quadruple(argument1: leftOperand , argument2: rightOperand, op: op, result: "\(tempAddress)"))
            self.operationStack.addOperand(operand: "\(tempAddress)", type: resultType)
        }
        
    }
    
    func newGlobalVariable(s : TypeSymbol) -> Int {
        return memory.newGlobalAddress(type: s)
    }
    
    func newLocalVariable(t: TypeSymbol) -> Int {
        return memory.newLocalAdress(type: t)
    }
    
    func addConstantInteger(_ number :NSNumber){
        let integerValue = number.intValue
        
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(integerValue)") {
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .integer)
        }else{
            // Pedir nueva memoria
            let newAddress = memory.newConstantAddress(type: .integer)
            self.saveAddress(constant: integerValue, index: newAddress)
            self.addOperandByMemory(memoryAddress: newAddress, type: .integer)
        }
    }
    
    func addConstantFloat(_ number : NSNumber){
        let floatValue = number.floatValue
        
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(floatValue)") {
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .float)
        }else{
            // Pedir nueva memoria
            let newAddress = memory.newConstantAddress(type: .float)
            self.saveAddress(constant: floatValue, index: newAddress)
            self.addOperandByMemory(memoryAddress: newAddress, type: .float)
        }
        
    }
    
    func addConstantDouble(_ number : NSNumber){
        let doubleValue = number.doubleValue
        
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(doubleValue)") {
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .double)
        }else{
            // Pedir nueva memoria
            let newAddress = memory.newConstantAddress(type: .double)
            self.saveAddress(constant: doubleValue, index: newAddress)
            self.addOperandByMemory(memoryAddress: newAddress, type: .double)
        }
    }
    
    func addConstantString(_ string : NSString){
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .string, true, false, true))
        numConstantes = numConstantes + 1
    }
    
    func getConstantAddress(index: String) -> Int? {
        return self.constants[index]
    }
    
    func addConstantBool(_ number : NSNumber){
        let boolValue = number.boolValue
        
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(boolValue)") {
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .boolean)
        }else{
            // Pedir nueva memoria
            let newAddress = memory.newConstantAddress(type: .boolean)
            self.saveAddress(constant: boolValue, index: newAddress)
            self.addOperandByMemory(memoryAddress: newAddress, type: .boolean)
        }
    }
    
    func addConstantChar(_ character : NSString){
        let charValue = character.character(at: 0)
        
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(charValue)") {
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .boolean)
        }else{
            // Pedir nueva memoria
            let newAddress = memory.newConstantAddress(type: .boolean)
            self.saveAddress(constant: charValue, index: newAddress)
            self.addOperandByMemory(memoryAddress: newAddress, type: .boolean)
        }
    }
    
    func saveAddress(constant: Any, index: Int) {
        self.constants["\(constant)"] = index
    }
    
    func lookUpAddressConstantTable(value: String) -> Int? {
        return self.constants[value]
    }
    
    func foundMain(){
        let indexMain = jumpStack.pop() ?? 0
        
        fillQuadruple(index: indexMain, value: "\(self.quadruples.count)")
        
    }
    
    func addIDAsQuadruple(_ id : NSString){
        let identifier : String = String(id)
        guard let operand = self.symbolTable.lookup(identifier) else {
            delegate?.sendUndeclareVariable(id: id)
            return
        }
        self.addOperand(symbol: operand)
    }
    
    func addQuadrupleWithTernaryOperator(){        
        if(operationStack.operands.size() >= 1){
            
            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("",.void)
    
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

            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            let (leftOperand, leftType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            
            guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
                print("ERROR")
                delegate?.sendInvalidOperationBetween(t1: leftType, t2: rightType)
                return
            }
            
            let tempAddress = memory.newTemporalAddress(type: resultType)
            
            self.quadruples.append(Quadruple(argument1: rightOperand, argument2: leftOperand, op: op, result: "\(tempAddress)"))
            self.operationStack.addOperand(operand: "\(tempAddress)", type: resultType)
        }
    }
    
    func addCondicional(){
        // IF el ultimo operando es de tipo boolean sino ERROR
        // Agregar cuadruplo con (GOTOF, resultado del pop, _, _) y agregar a pila de saltos una ubicacion antes de la acutual (num de quadruplos - 1)
        //
        
        let (result,t) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        guard t == TypeSymbol.boolean  else {
            print("ERROR")
            delegate?.sendTypeMismatch()
            return
        }
        
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
            let (operand, _) = operationStack.getLastOperand() ?? ("", .void)
            let op = operationStack.operators.pop() ?? .print
            self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: op, result: operand))
        }
    }
    
    
    func addForEachRange(range: String, id: String){
        self.jumpStack.push(self.quadruples.count)
        
        if(range == "..."){
            self.operationStack.operators.push(.lessOrEqualThan)
        }else{
            self.operationStack.operators.push(.lessThan)
        }
        
        self.addQuadruple()
       
        let (result, t) = operationStack.getLastOperand() ?? ("", .void)
        
        guard (t == TypeSymbol.boolean) else {
            print("ERROR")
            delegate?.sendTypeMismatch()
            return
        }
                
        self.quadruples.append(Quadruple(argument1: result, argument2: nil, op: .gotof, result: nil))
        self.jumpStack.push(self.quadruples.count - 1)
        
        // i++
        
        self.operationStack.operators.push(.sum)
        self.addOperand(symbol: self.symbolTable.lookup(id)!)
        
        addConstantInteger(1)
        self.addQuadruple()
        self.addOperator(op: .equal)
        self.saveValueVariable(id: id)
        
    }
    
    func endForEachRange(){
        
        guard let indexFalse = self.jumpStack.pop() else { return  }
        guard let indexGoto = self.jumpStack.pop() else { return  }
        
        // SUM 1
        
        self.fillQuadruple(index: indexFalse, value: "\(quadruples.count + 1)")
        self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: "\(indexGoto)"))
        
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
            symbol.type = operationStack.operands.peek()?.1 ?? .void
            let beforeAddres = symbol.address
            if(symbolTable.onlyOneNode()){
                symbol.address = newGlobalVariable(s: symbol.type)
            }else{
                symbol.address = newLocalVariable(t: symbol.type)
            }
//            switch symbol.type {
//                case .integer:
//
//                case
//                default:
//                break
//            }
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

        let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        let (leftOperand, leftType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
            print("ERROR")
            throw ErrorCompiler.TypeMismatch
        }
        let generatedQuadruple : Quadruple = Quadruple(argument1: leftOperand , argument2: nil, op: op, result: rightOperand)
        self.quadruples.append(generatedQuadruple)
//        self.operationStack.operands.push(rightOperand)
//        self.operationStack.types.push(rightType)
    }
    
    func readID(_ id: NSString){
        self.addOperator(op: .read)
        
        self.addIDAsQuadruple(id)
        
        if(!operationStack.operators.isEmpty){
            let op : Operator = operationStack.operators.pop()!
            
            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            
            let generatedQuadruple : Quadruple = Quadruple(argument1: nil , argument2: nil, op: op, result: rightOperand)
            self.quadruples.append(generatedQuadruple)
        }
    }
}

enum ErrorCompiler : Error{
    case TypeMismatch
}
