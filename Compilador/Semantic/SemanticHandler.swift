//
//  SemanticHandler.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

class SemanticHandler : CustomStringConvertible {
    
    // MARK: - Properties
    
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
    
    
    // MARK: - Initializer
    
    init() {
        
        self.jumpStack.push(self.quadruples.count)
        self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
        functionAsMainThread = "main"
    }
    
    // MARK: - SymbolTable
    
    /**
     
     This function inserts in the symbol table an identifier and its properties, like the type, kind, and more. If it wasn't possible to insert it to the symbol table, it sends an error indicating that the variable was already declared.
     - Note: When it was inserted it asks for a local or global address in memory depending on the deepth of the symbol table
     - Parameters:
        - id: The identifier to be inserted in the symbolTable
        - constant: Add a flag indicating if the symbol is constant
        - array: Add a flag indicating if the symbol is an array
        - type: Add the type of the symbol, by default is void
        - kind: Add the kind of the symbol (field or method), by default is a field
    */
    func insertSymbolToST(_ id : NSString, _ constant: Bool, _ array : Bool, _ type: TypeSymbol = .void, _ kind : Kind = .field){
        let symbolToInsert = Symbol(lex.line, id, kind, type, constant, array, false)
        
        if (!symbolTable.insertInHashTable(symbolToInsert)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                symbolToInsert.address = newGlobalVariable(s: type)
            }else{
                symbolToInsert.address = newLocalVariable(t: type)
            }
        }
    }
    
    /**
     This function creates a new node at the beginning of the symbol table (Implemeted as a linked list with dictionaries)
    */
    func startScope(){
        symbolTable.newNode()
    }
    
    /**
     This function removes the node first node of the symbol table
    */
    func endScope(){
        symbolTable.pop()
    }
    
    // MARK: - Operation stack
    
    /**
     Adds a new operator to the operators stack
     - Parameter op: The operator to be inserted in the operator stack
    */
    func addOperator(op : Operator){
        operationStack.operators.push(op)
    }
    
    /**
     Adds a new operand to the operands stack (a stack made of tuple (Operand, Type))
     - Parameter symbol: The symbol to be inserted in the operands stack
    */
    func addOperand(symbol : Symbol){
        operationStack.addOperand(operand: "\(symbol.address)", type: symbol.type)
    }
    
    /**
     Adds a new operand to the operands stack (a stack made of tuple (Operand, Type))
     - Parameter memoryAddress: The operand to be inserted in the operands stack
     - Parameter type: The type of the operand to be inserted in the operands stack
    */
    func addOperandByMemory(memoryAddress: Int, type: TypeSymbol) {
        operationStack.addOperand(operand: "\(memoryAddress)", type: type)
    }
    
    
    // MARK: - Memory Handler
    /**
     Ask to the memory for a new global address for a specific type
     - Parameter s: The type of the symbol
    */
    func newGlobalVariable(s : TypeSymbol) -> Int {
        return memory.newGlobalAddress(type: s)
    }
    /**
     Ask to the memory for a new local address for a specific type
     - Parameter t: The type of the symbol
    */
    func newLocalVariable(t: TypeSymbol) -> Int {
        return memory.newLocalAdress(type: t)
    }
    
    // MARK: - Constants
    /**
     Look for the address of an specific value of integer, and save that as an operand
     - Parameter number: The object number
    */
    func addConstantInteger(_ number :NSNumber){
        /// Takes the integer value
        let integerValue = number.intValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(integerValue)") {
            /// If found, add that address as an operand of type integer
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .integer)
        }else{
            /// If not, ask for new constant address of integer type
            let newAddress = memory.newConstantAddress(type: .integer)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: integerValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .integer)
        }
    }
    
    /**
     Look for the address of an specific value of float, and save that as an operand
     - Parameter number: The object number
    */
    func addConstantFloat(_ number : NSNumber){
        /// Takes the float value
        let floatValue = number.floatValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(floatValue)") {
            /// If found, add that address as an operand of type float
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .float)
        }else{
            /// If not, ask for new constant address of float type
            let newAddress = memory.newConstantAddress(type: .float)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: floatValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .float)
        }
        
    }
    /**
     Look for the address of an specific value of double, and save that as an operand
     - Parameter number: The object number
    */
    func addConstantDouble(_ number : NSNumber){
        /// Takes the float value
        let doubleValue = number.doubleValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(doubleValue)") {
            /// If found, add that address as an operand of type double
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .double)
        }else{
            /// If not, ask for new constant address of double type
            let newAddress = memory.newConstantAddress(type: .double)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: doubleValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .double)
        }
    }
    /**
     Look for the address of an specific value of bool, and save that as an operand
     - Parameter number: The object number
    */
    func addConstantBool(_ number : NSNumber){
        /// Takes the bool value
        let boolValue = number.boolValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(boolValue)") {
            /// If found, add that address as an operand of type bool
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .boolean)
        }else{
            /// If not, ask for new constant address of bool type
            let newAddress = memory.newConstantAddress(type: .boolean)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: boolValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .boolean)
        }
    }
    /**
     Look for the address of an specific value of double, and save that as an operand
     - Parameter character: The object nsstring
    */
    func addConstantChar(_ character : NSString){
        // Takes the char value
        let charValue = character.character(at: 0)
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(charValue)") {
            /// If found, add that address as an operand of type bool
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .char)
        }else{
            /// If not, ask for new constant address of char type
            let newAddress = memory.newConstantAddress(type: .char)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: charValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .char)
        }
    }
    
    // FIXME: - No constant string
    func addConstantString(_ string : NSString){
        
        self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .string, true, false, true))
        numConstantes = numConstantes + 1
    }

    /**
     Save address with a new constant and the address
     - Returns: An optional address for a value
     - Parameter constant: The value to be used as index in cosntant table
     - Parameter address: The address of the value
    */
    func saveAddress(constant: Any, address: Int) {
        self.constants["\(constant)"] = address
    }
    
    /**
     Look in the constant table for an address in a specified index
     - Returns: An optional address for a value
     - Parameter value: The value to be searched in constant table
    */
    func lookUpAddressConstantTable(value: String) -> Int? {
        return self.constants[value]
    }
    
    // MARK: - Quadruple Generation
    /**
     This function creates the quadruples for 2 operands.
    */
    func addQuadruple() {
        /// Logic for 2 operands
        /// First check if the operands stack has at least 2 operands, and at least 1 operator in the operators stack
        if(operationStack.operands.size() >= 2 && operationStack.operators.size() >= 1){
            /// Pop the operator
            let op : Operator = operationStack.operators.pop()!
            /// Pop the right operand (last to be inserted in operands stacks)
            let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand()!
            /// Pop the left operand (last to be inserted in operands stacks)
            let (leftOperand, leftType) : (String, TypeSymbol) = operationStack.getLastOperand()!
            /// Check if it possible the operation between left and right operand
            guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
                /// If it is impossible, send an error
                delegate?.sendInvalidOperationBetween(t1: leftType, t2: rightType)
                return
            }
            /// Ask for a temp memory for the result type
            let tempAddress = memory.newTemporalAddress(type: resultType)
            /// Add to the quadruples a new one, with the operation
            self.quadruples.append(Quadruple(argument1: leftOperand , argument2: rightOperand, op: op, result: "\(tempAddress)"))
            /// Add the temp result as an operand in th operands stack
            self.operationStack.addOperand(operand: "\(tempAddress)", type: resultType)
        }
        
    }
    
    /**
     When the main is found
    */
    func foundMain(){
        /// Pop jump stack and take that as the index where the goto main isntruction is
        let indexMain = jumpStack.pop() ?? 0
        /// Use the funtion fill to add the information need fot the main to jump
        fillQuadruple(index: indexMain, value: "\(self.quadruples.count)")
    }
    
    /**
     When the main is found
    */
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
        
        // Save id to iterate in st
        self.insertSymbolToST(id as NSString, false, false, .integer);
        // assign
        self.addOperator(op:.assign)
        // to id the last factor
        self.saveValueVariable(id : id)
        
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
        
       
        
    }
    
    func plusplusOneRange(id: String){
        
        self.operationStack.operators.push(.sum)
        self.addOperand(symbol: self.symbolTable.lookup(id)!)
        self.addConstantInteger(1)
        self.addQuadruple()
        self.addOperator(op: .assign)
        self.saveValueVariable(id: id)
    }
    
    func endForEachRange(id: NSString){
        
        self.plusplusOneRange(id: id as String)
        
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
    
    func whileP1() {
        jumpStack.push(quadruples.count - 1)
    }
    
    func whileP2() {
        let (result,t) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        guard t == TypeSymbol.boolean  else {
            print("ERROR")
            delegate?.sendTypeMismatch()
            return
        }
        print("Added Q for while on \(quadruples.count)")
        quadruples.append(Quadruple(argument1: nil, argument2: result, op: .gotof, result: nil))
        jumpStack.push(quadruples.count - 1)
    }
    
    func whileP3() {
        let end = jumpStack.pop()
        let result = jumpStack.pop()
        quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: "\(result)"))
        fillQuadruple(index: end!, value: String(quadruples.count))
        
    }
    
    // MARK: - FUNCTIONS
    
    func startFunction(_ id: NSString){
        self.functionAsMainThread = id as String
    }
    
    func endFunction(){
        guard let symbolFunction = self.symbolTable.lookup(self.functionAsMainThread ?? "") else {
            print("ERROR no function found")
            return
        }
        let endFunctionQuadruple = Quadruple(argument1: nil, argument2: nil, op: .endFunc, result: nil)
        self.quadruples.append(endFunctionQuadruple)
        self.memory.removeLocalAndTemporalMemory()
    }
    
    func functionCall(_ idFunction : NSString){
       
        guard let symbolFunction = symbolTable.lookup(idFunction as String) else {
            print("Not found function to be called")
            return
        }
        
        // FIXME: - Validate parameters
        /// Validate number parameters
        /// Agarrar los tipos de los argumentos pasados, con los que deberian estar en symbolFunction
        ///
        /// SINO SE MANDA ERROR
        ///
        
        let quadrupleEra = Quadruple(argument1: nil, argument2: nil, op: .era, result: symbolFunction.identifier)
        self.quadruples.append(quadrupleEra)
        
        // FIXME: - Pass paramaters as quadruples

        // CRAETE GOSUB
        let quadrupleGosub = Quadruple(argument1: nil, argument2: nil, op: .gosub, result: symbolFunction.identifier)
        self.quadruples.append(quadrupleGosub)
                    
        // Check if return not void
        let typeFunc = symbolFunction.type
        if(typeFunc != .void && symbolFunction.kind == .method){
//            switch typeFunc {
//            case .void:
//                break
//            case .integer:
//                break
//            case .string:
//                break
//            case .boolean:
//                break
//            case .float:
//                break
//            case .char:
//                break
//            case .double:
//                break
//            case .Integer:
//                break
//            case .String:
//                break
//            case .ID:
//                break
//            }
        }
    }
    
    func returnFunctions(){
        guard let symbolFunction = symbolTable.lookup(functionAsMainThread ?? "") else {
            return
        }
        // Tipo esperado de retorno
        let returnTypeExpected = symbolFunction.type
        let (operand, type) = operationStack.getLastOperand() ?? ("",.void)
        
        guard (returnTypeExpected != type) else {
            print("Mistmatch return and expected")
            return
        }
        // Generar return cuadruple
        // Address of function
    }
    
    public var description: String {
        let q = quadruples.enumerated().reduce("", { res, q in
            res.appending("[\(q.offset)] - Op: \(q.element.op )".padding(toLength: 20, withPad: " ", startingAt: 0) + "Address1: \(q.element.argument1 ?? "")".padding(toLength: 20, withPad: " ", startingAt: 0) + "Address2: \(q.element.argument2 ?? "")".padding(toLength: 20, withPad: " ", startingAt: 0) + "Result: \(q.element.result ?? "")\n")
        })
        
        let constInfo = constants.reduce("") { res, dic in
            res.appending("Constant:[\(dic.key)]".padding(toLength: 20, withPad: " ", startingAt: 0) + "Address: \(dic.value)\n")
        }
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
}

enum ErrorCompiler : Error{
    case TypeMismatch
}


protocol SemanticErrorDelegate {
    func sendVariableRepeated(id : String)
    func sendInvalidOperationBetween(t1 : TypeSymbol, t2: TypeSymbol)
    func sendUndeclareVariable(id: NSString)
    func sendTypeMismatch()
}
