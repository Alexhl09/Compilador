//
//  SemanticHandler.swift
//  Compilador
//
//  Created by Alejandro Hernández López on 12/10/21.
//

import Foundation

class SemanticHandler : CustomStringConvertible {
    
    // MARK: - Properties
    var globalFinalIndex : Bool = false
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
    var dimensionStack : Stack<(String, Int)> = []
    var globalInfoStack: InfoStack = InfoStack()
    var constanstInfoStack : InfoStack = InfoStack()
    var addressArrays: [Int:  Int] = [:]
    // MARK: - Initializer
    
    init() {
        
      
       
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
    func insertSymbolToST(_ id : NSString, _ constant: Bool, _ array : Bool, _ type: TypeSymbol = .void, _ kind : Kind = .field, params: [Symbol] = []){
        
        let symbolToInsert = Symbol(lex.line, id, kind, type, constant, array, false)
        
        if (!symbolTable.insertInHashTable(symbolToInsert)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                symbolToInsert.address = newGlobalVariable(s: type)
            }else{
                symbolToInsert.address = newLocalVariable(t: type)
            }
            if(params.count > 0){
                symbolToInsert.params = params.reversed() as Array
            }
        }
    }
    
    func insertArrayToST(_ id : NSString, _ dimension : (NSNumber, NSNumber), _ list: ArrayLinkedList, r: Int, const : Bool = true, type: TypeSymbol  = .void){
        let symbolToInsert = Symbol(lex.line, id, .field, type, const, true, false, rows: dimension.0, columns: dimension.1)
        
        var temp = list.head
        var dim = 1
        var offset = 0
        var size = r
        var myR = r
        while temp != nil{
            temp!.m = myR/(temp?.limSup ?? 1 + 1)
            myR = temp!.m
            offset = offset + 0 * temp!.m
            temp!.m = dim
            temp = temp?.next
            dim += 1
        }
        
        self.addConstantInteger(dimension.0, saveOperand: false)
        self.addConstantInteger(dimension.1, saveOperand: false)
        
        let sizeArray = dimension.0.intValue * dimension.1.intValue
        
        if (!symbolTable.insertInHashTable(symbolToInsert)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                symbolToInsert.address = newGlobalVariable(s: type, size: sizeArray)
            }else{
                symbolToInsert.address = newLocalVariable(t: type, size: sizeArray)
            }
        }
    }
    
    func insertArrayMultiDimToST(_ id : NSString, _ list: ArrayLinkedList, r: Int, const : Bool = true, type: TypeSymbol  = .void, _ dimension : (NSNumber, NSNumber) = (NSNumber(value: -1), NSNumber(value: -1))){
        let symbolToInsert = Symbol(lex.line, id, .field, type, const, true, false, rows: dimension.0, columns: dimension.1)
        if(dimension.0 != -1 && dimension.1 != -1){
            self.addConstantInteger(dimension.0, saveOperand: false)
            self.addConstantInteger(dimension.1, saveOperand: false)
        }
        var temp = list.head
        var dim = 1
        var offset = 0
        var size = r
        var myR = r
        while temp != nil{
            self.addConstantInteger( NSNumber(value: temp!.limSup), saveOperand: false)
            temp!.m = myR/(temp?.limSup ?? 1)
            myR = temp!.m
            offset = offset + 0 * temp!.m
            temp!.dim = dim
            temp = temp?.next
            dim += 1
        }
        symbolToInsert.arrayList = list
        symbolToInsert.dimension2D = (0, dim)

        if (!symbolTable.insertInHashTable(symbolToInsert)){
            delegate?.sendVariableRepeated(id: id as String)
        }else{
            if(symbolTable.onlyOneNode()){
                symbolToInsert.address = newGlobalVariable(s: type, size: size)
            }else{
                symbolToInsert.address = newLocalVariable(t: type, size: size)
            }
        }
    }
    
    fileprivate func assignArray(_ symbol: Symbol) {
        symbol.assigned = true
        var sizeArray = Int(symbol.dimension2D?.1 ?? 0) * Int(symbol.dimension2D?.0 ?? 0)
        if(sizeArray == 0){
            sizeArray = symbol.arrayList?.head?.r ?? 0
        }
        if(symbol.type != operationStack.operands.peek()?.1 ?? .void){
            symbol.type = operationStack.operands.peek()?.1 ?? .void
            let beforeAddres = symbol.address
            if(symbolTable.onlyOneNode()){
                symbol.address = self.newGlobalVariable(s: symbol.type, size: sizeArray)
            }else{
                symbol.address = self.newLocalVariable(t: symbol.type, size: sizeArray)
            }
        }
        addressArrays[symbol.address] = sizeArray
    }
    
    func assignOneCellArray(_ id : NSString){
        guard let symbol = symbolTable.lookup(id as String) else {print("No se puede inicializar var, no encontrada");exit(0); return}
        if (!symbol.assigned && !symbol.constant){
            assignArray(symbol)
        }
        
        self.addOperand(symbol: symbol)
        
        do {
            try generateQuadrupleAssignCellArray(symbol: symbol,withValue: true)
        }catch(let error){
            print(error.localizedDescription)
        }
    }
    
    func readOneCellArray(_ id : NSString){
        guard let symbol = symbolTable.lookup(id as String) else {print("No se puede inicializar var, no encontrada");exit(0); return}
       
        self.addOperand(symbol: symbol)
        
        do {
            try generateQuadrupleAssignCellArray(symbol: symbol,withValue: false)
            fillParcheGArrays(t: symbol.type, nameArray: symbol.identifier)
        }catch(let error){
            print(error.localizedDescription)
            exit(0)
        }
    }
    
    func assignArray(_ id: NSString){
        
        
        guard let symbol = symbolTable.lookup(id as String) else {print("No se puede inicializar var, no encontrada"); exit(0);return}

        let sizeArray = symbol.arrayList?.head?.r ?? 0
        guard self.operationStack.operands.size() >= sizeArray else {print("Faltan operandos"); exit(0); return }
    
        if(!symbol.assigned && !symbol.constant){
            assignArray(symbol)
        }
        
        let baseAddress = symbol.address
        let operands : [(String, TypeSymbol)] = self.operationStack.getLastNOperands(sizeArray).reversed()
        
        for i in (0..<sizeArray) {
           
            let quadrupleArrayAssign = Quadruple(argument1: "\(operands[i].0)", argument2: nil, op: .assign, result: "\(baseAddress + i)")
            self.quadruples.append(quadrupleArrayAssign)
        }
        let _ = self.operationStack.operators.pop()
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
    func newGlobalVariable(s : TypeSymbol, size : Int = 1) -> Int {
        fillInfoStack(infoStack: self.globalInfoStack, varSymbolType: s,size: size)
        return memory.newGlobalAddress(type: s, size: size)
    }
    /**
     Ask to the memory for a new local address for a specific type
     - Parameter t: The type of the symbol
    */
    func newLocalVariable(t: TypeSymbol, size : Int = 1) -> Int {
        if let funcSymbol = symbolTable.lookup(functionAsMainThread!) {
            fillInfoStack(infoStack: funcSymbol.localInfoStack, varSymbolType: t, size: size)
        }
        return memory.newLocalAdress(type: t, sizeToReserve: size)
    }
    
    /**
     Ask to the memory for a new temporal address for a specific type
     - Parameter t: The type of the symbol
    */
    func newTemporalAddress(t: TypeSymbol, size : Int = 1) -> Int {
        if let funcSymbol = symbolTable.lookup(functionAsMainThread!) {
            fillInfoStack(infoStack: funcSymbol.temporalInfoStack, varSymbolType: t, size: size)
        }
        return memory.newTemporalAddress(type: t)
    }
    
    func newConstantAddress(t: TypeSymbol, size: Int = 1) -> Int {
        fillInfoStack(infoStack: self.constanstInfoStack, varSymbolType: t, size: size)
        return memory.newConstantAddress(type: t, sizeToReserve: size)
    }
    
    // MARK: - Constants
    /**
     Look for the address of an specific value of integer, and save that as an operand
     - Parameter number: The object number
    */
    func addConstantInteger(_ number :NSNumber, size : Int = 1, saveOperand : Bool = true){
        /// Takes the integer value
        let integerValue = number.intValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(integerValue)") {
            /// If found, add that address as an operand of type integer
            if(saveOperand){
                self.addOperandByMemory(memoryAddress: lookUpAddress, type: .integer)
            }
        }else{
            /// If not, ask for new constant address of integer type
            let newAddress = self.newConstantAddress(t: .integer, size: size)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: integerValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            if(saveOperand){
                self.addOperandByMemory(memoryAddress: newAddress, type: .integer)
            }
        }
    }
    
    /**
     Look for the address of an specific value of float, and save that as an operand
     - Parameter number: The object number
    */
    func addConstantFloat(_ number : NSNumber, size : Int = 1){
        /// Takes the float value
        let floatValue = number.floatValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(floatValue)") {
            /// If found, add that address as an operand of type float
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .float)
        }else{
            /// If not, ask for new constant address of float type
            let newAddress = self.newConstantAddress(t: .float, size: size)
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
    func addConstantDouble(_ number : NSNumber, size : Int = 1){
        /// Takes the float value
        let doubleValue = number.doubleValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(doubleValue)") {
            /// If found, add that address as an operand of type double
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .double)
        }else{
            /// If not, ask for new constant address of double type
            let newAddress = self.newConstantAddress(t: .double, size: size)
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
    func addConstantBool(_ number : NSNumber, size : Int = 1){
        /// Takes the bool value
        let boolValue = number.boolValue
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(boolValue)") {
            /// If found, add that address as an operand of type bool
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .boolean)
        }else{
            /// If not, ask for new constant address of bool type
            let newAddress = self.newConstantAddress(t: .boolean, size: size)
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
    func addConstantChar(_ character : NSString, size : Int = 1){
        // Takes the char value
        var s = (character as String)
        let index = s.index(s.startIndex, offsetBy: 1)
        let charValue : Character = s[index]
        /// Looks for the address in the constant Table
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(charValue)") {
            /// If found, add that address as an operand of type bool
            self.addOperandByMemory(memoryAddress: lookUpAddress, type: .char)
        }else{
            /// If not, ask for new constant address of char type
            let newAddress = self.newConstantAddress(t: .char, size: size)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: charValue, address: newAddress)
            /// Add the new address as an operand in operands stack
            self.addOperandByMemory(memoryAddress: newAddress, type: .char)
        }
    }
    
    // FIXME: - No constant string
    func addConstantString(_ string : NSString,  size : Int = 1){
        var s = (string as String)
        s.removeFirst()
        s.removeLast()
        for (ind,ch) in s.enumerated(){
            let index = s.index(s.startIndex, offsetBy: ind)
            let charValue : Character = s[index]
            if let lookUpAddress = lookUpAddressConstantTable(value: "\(charValue)") {
                /// If found, add that address as an operand of type bool
                self.addOperandByMemory(memoryAddress: lookUpAddress, type: .char)
            }else{
                /// If not, ask for new constant address of char type
                let newAddress = self.newConstantAddress(t: .char, size: size)
                /// Save the value and new address to the constant table
                self.saveAddress(constant: charValue, address: newAddress)
                /// Add the new address as an operand in operands stack
                self.addOperandByMemory(memoryAddress: newAddress, type: .char)
            }
//            print(sub)
//            // Takes the char value
//
//            let charValue : Character = s[indexChar]
//            /// Looks for the address in the constant Table
//            if let lookUpAddress = lookUpAddressConstantTable(value: "\(charValue)") {
//                /// If found, add that address as an operand of type bool
//                self.addOperandByMemory(memoryAddress: lookUpAddress, type: .char)
//            }else{
//                /// If not, ask for new constant address of char type
//                let newAddress = self.newConstantAddress(t: .char, size: size)
//                /// Save the value and new address to the constant table
//                self.saveAddress(constant: charValue, address: newAddress)
//                /// Add the new address as an operand in operands stack
//                self.addOperandByMemory(memoryAddress: newAddress, type: .char)
//            }
        }
        
            //self.addOperand(symbol: Symbol(lex.line, "const\(numConstantes)" as NSString, .field, .string, true, false, true))
      //  numConstantes = numConstantes + 1
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
            let tempAddress = newTemporalAddress(t: resultType)
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
                exit(0)
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
            
            let tempAddress = newTemporalAddress(t: resultType)
            
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
        guard let end = jumpStack.pop() else {print("No hay algo en el jumpStack"); exit(0); return}
        jumpStack.push(quadruples.count - 1)
        fillQuadruple(index: end, value: String(quadruples.count))

        print("Filled Quadruple ELSE \(end) with address \(quadruples.count - 1)")
    }
    
    func addPrint(){
        if(!operationStack.operands.isEmpty){
            let val = addressArrays[Int(operationStack.operands.peek()?.0 ?? "0") ?? 0]
            if(val != nil){
                let (operand, t) = operationStack.getLastOperand() ?? ("", .void)
                for i in 0..<(val ?? 0){
                    guard let o = Int(operand) else { return  }
                    
                    if(t != .char){
                        self.quadruples.append( Quadruple(argument1: "\(-2)", argument2: nil, op: .print, result: "\(o + i)"))
                    }else{
                        self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: .print, result: "\(o + i)"))
                    }
                }
                self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: .print, result: "\(-1)"))
                return
            }
                
            operationStack.operands.reverse()
            while(!operationStack.operands.isEmpty){
                let (operand, _) = operationStack.getLastOperand() ?? ("", .void)
                let op = operationStack.operators.pop() ?? .print
                self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: op, result: operand))
            }
            self.quadruples.append( Quadruple(argument1: nil, argument2: nil, op: .print, result: "\(-1)"))
        }
    }
    
    
    func addForEachRange(range: String, id: String){
        
        // Save id to iterate in st
        self.insertSymbolToST(id as NSString, false, false, .integer)
        // assign
        self.addOperator(op:.assign)
        // to id the last factor

        
        // INVERT RANGE
        
        let firstOperand = self.operationStack.getLastOperand() ?? ("", .void)
        let sencondOperand = self.operationStack.getLastOperand() ?? ("", .void)
        
        self.operationStack.addOperand(operand: firstOperand.0, type: firstOperand.1)
        self.operationStack.addOperand(operand: sencondOperand.0, type: sencondOperand.1)
  
        
        self.saveValueVariable(id : id)
        
        self.jumpStack.push(self.quadruples.count)
        
        if(range == "..."){
            self.operationStack.operators.push(.greaterOrEqualThan)
        }else{
            self.operationStack.operators.push(.greaterThan)
        }
        // Agregar para validacion de for
        self.addOperand(symbol: returnSymbolByID(id) )
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
        
        if(!symbol.assigned && !symbol.constant){
            symbol.assigned = true
            if(symbol.type != operationStack.operands.peek()?.1 ?? .void){
                symbol.type = operationStack.operands.peek()?.1 ?? .void
                let beforeAddres = symbol.address
                if(symbolTable.onlyOneNode()){
                    symbol.address = newGlobalVariable(s: symbol.type)
                }else{
                    symbol.address = newLocalVariable(t: symbol.type)
                }
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

        guard operationStack.operands.size() > 1 else {
            print("Error generating quadruple for line\(lex.line)")
            return
        }
        let op : Operator = operationStack.operators.pop()!

        let (rightOperand, rightType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        let (leftOperand, leftType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        guard let resultType = semanticCube[SemCubeKey(op1: rightType, op2: leftType, o: op)] else {
            print("ERROR")
            throw ErrorCompiler.TypeMismatch
        }
        let generatedQuadruple : Quadruple = Quadruple(argument1: leftOperand , argument2: nil, op: op, result: rightOperand)
        self.quadruples.append(generatedQuadruple)
    }
    
    func generateQuadrupleAssignCellArray(symbol: Symbol, withValue: Bool) throws {
         
        let (symbolOperand, symbolType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        let baseAddress = self.needConstantInt(value: Int(symbolOperand)!)
        
        
        guard let dim = symbol.dimension2D else {print("No es un array");return}
        var temp = symbol.arrayList?.head
        var dimNow = 1
        dimensionStack.push((symbol.identifier, dimNow))
        operationStack.operands.reverse()
        while(temp != nil){
          
            let (valueOperand, valueType) : (String, TypeSymbol) = operationStack.operands.peek() ?? ("", .void)
            
            if let lookUpAddress = lookUpAddressConstantTable(value: "\(temp!.limSup)") {
                let quadrupleVerify = Quadruple(argument1: valueOperand, argument2: nil, op: .vrf, result: "\(lookUpAddress)")
                self.quadruples.append(quadrupleVerify)
            }else{
                let newAddress = self.newConstantAddress(t: .integer)
                /// Save the value and new address to the constant table
                self.saveAddress(constant: temp?.limSup ?? 0, address: newAddress)
                let quadrupleVerify = Quadruple(argument1: valueOperand, argument2: nil, op: .vrf, result: "\(newAddress)")
                self.quadruples.append(quadrupleVerify)
            }
            
            if(temp?.next != nil){
                let (valueOperand, valueType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                
                guard let resultType = semanticCube[SemCubeKey(op1: valueType, op2: .integer, o: .multiply)] else {
                    /// If it is impossible, send an error
                    delegate?.sendInvalidOperationBetween(t1: valueType, t2: .integer)
                    return
                }
                
                let tempAddress = newTemporalAddress(t: resultType)
                
                let auxQ = Quadruple(argument1: valueOperand, argument2: "\(needConstantInt(value: temp!.m))", op: .multiply, result: "\(tempAddress)")
                
                self.quadruples.append(auxQ)
                
                // PREVIOUS
                let (topOperand, topType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                self.operationStack.addOperand(operand: "\(tempAddress)", type: resultType)
                self.operationStack.addOperand(operand: "\(topOperand)", type: topType)
                
            }
            
            if(dimNow > 1){
                
                let (aux2Operand, aux2Type) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                let (aux1Operand, aux1Type) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                
                
                guard let resultType2 = semanticCube[SemCubeKey(op1: aux2Type, op2: aux1Type, o: .sum)] else {
                    /// If it is impossible, send an error
                    delegate?.sendInvalidOperationBetween(t1: aux2Type, t2: aux1Type)
                    return
                }
                
                let tempAddress2 = newTemporalAddress(t: resultType2)
               
                let auxS = Quadruple(argument1: aux1Operand, argument2: aux2Operand, op: .sum, result: "\(tempAddress2)")
                self.quadruples.append(auxS)
                // PREVIOUS
                if(withValue){
                    let (top2Operand, top2Type) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                    self.operationStack.addOperand(operand: "\(tempAddress2)", type: resultType2)
                    self.operationStack.addOperand(operand: "\(top2Operand)", type: top2Type)
                }else {
                   // let (top2Operand, top2Type) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
                    self.operationStack.addOperand(operand: "\(tempAddress2)", type: resultType2)
                    //self.operationStack.addOperand(operand: "\(top2Operand)", type: top2Type)
                }
               
            }
            
            dimNow += 1
            temp = temp?.next
        }
        
        if(withValue){
            if(dimNow < 3){
                self.operationStack.operands.reverse()
            }
            let (assignOperand, assignType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            let (lastAuxOperand, lastAuxType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            
            let tempAddress3 = newTemporalAddress(t: .pointer)
            let lastQuadruple = Quadruple(argument1: "\(lastAuxOperand)", argument2: "\(baseAddress)", op: .sum, result: "\(tempAddress3)")
            self.quadruples.append(lastQuadruple)
            self.operationStack.addOperand(operand: "\(tempAddress3)", type: .pointer)
            self.operationStack.addOperand(operand: "\(assignOperand)", type: assignType)
        }else{
            let (lastAuxOperand, lastAuxType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
            
            let tempAddress3 = newTemporalAddress(t: .pointer)
            let lastQuadruple = Quadruple(argument1: "\(lastAuxOperand)", argument2: "\(baseAddress)", op: .sum, result: "\(tempAddress3)")
            self.quadruples.append(lastQuadruple)
            self.operationStack.addOperand(operand: "\(tempAddress3)", type: .pointer)
        }
        
    }
    
    func assignToPointer(){
        
        
//        // ASSIGN - EQUIS in ADDRESS

        guard operationStack.operands.size() > 1 else {
            print("Error generating quadruple for line\(lex.line)")
            return
        }
        
        let op : Operator = operationStack.operators.pop()!
        

        let (valOperand, valType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        let (pointerOperand, pointerType) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)

        let generatedQuadruple : Quadruple = Quadruple(argument1: valOperand , argument2: nil, op: op, result: pointerOperand)
        self.quadruples.append(generatedQuadruple)
        
    }
    
    func needConstantInt(value : Int) -> Int{
        if let lookUpAddress = lookUpAddressConstantTable(value: "\(value)") {
            return lookUpAddress
        }else{
            let newAddress = self.newConstantAddress(t: .integer)
            /// Save the value and new address to the constant table
            self.saveAddress(constant: value, address: newAddress)
            return newAddress
        }
    }
    
    func returnSymbolByID(_ id: String) -> Symbol{
        return self.symbolTable.lookup(id) ?? Symbol()
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
        jumpStack.push(quadruples.count)
    }
    
    func whileP2() {
        let (result,t) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        
        guard t == TypeSymbol.boolean  else {
            print("ERROR")
            delegate?.sendTypeMismatch()
            return
        }
        print("Added Q for while on \(quadruples.count)")
        quadruples.append(Quadruple(argument1: result, argument2: nil, op: .gotof, result: nil))
        jumpStack.push(quadruples.count - 1)
    }
    
    func whileP3() {
        let end = jumpStack.pop() ?? -1
        let result = jumpStack.pop() ?? -1
        quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: "\(result)"))
        fillQuadruple(index: end, value: String(quadruples.count))
        
    }
    
    // MARK: - FUNCTIONS
    
    func startFunction(_ id: NSString){
        self.functionAsMainThread = id as String
        self.setCurrentCuadruple()
    }
    
    func setCurrentCuadruple(){
        if(globalFinalIndex == false){
            globalFinalIndex = true
            self.jumpStack.push(self.quadruples.count)
            self.quadruples.append(Quadruple(argument1: nil, argument2: nil, op: .goto, result: nil))
        }
        guard let symbolFunction = symbolTable.lookup(functionAsMainThread ?? "") else {
            return
        }
        symbolFunction.currentCuadruple = self.quadruples.count
    }
    
    func endFunction(){
        let endFunctionQuadruple = Quadruple(argument1: nil, argument2: nil, op: .endFunc, result: nil)
        self.quadruples.append(endFunctionQuadruple)
        self.memory.removeLocalAndTemporalMemory()
    }
    
    func functionCall(_ idFunction : NSString, args : [(String, TypeSymbol)]){
       
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
        
        let typeArguments = args.map({$0.1}).reversed() as Array
        let typeParams = symbolFunction.params.map({$0.type})
        guard (typeArguments == typeParams) else{
            delegate?.sendBadParametersForFunc(id: idFunction)
            return
        }
        let quadrupleEra = Quadruple(argument1: nil, argument2: nil, op: .era, result: symbolFunction.identifier)
        self.quadruples.append(quadrupleEra)
        
        // FIXME: - Pass paramaters as quadruples
        for (index, arg) in args.enumerated().reversed() {
            let quadrupleParam = Quadruple(argument1: arg.0, argument2: nil, op: .param, result: "\(symbolFunction.params.reversed()[index].address)")
            self.quadruples.append(quadrupleParam)
        }
        
        
        // CRAETE GOSUB
        let quadrupleGosub = Quadruple(argument1: nil, argument2: nil, op: .gosub, result: symbolFunction.identifier)
        self.quadruples.append(quadrupleGosub)
                    
        // Check if return not void and parche G
        fillParcheG(t: symbolFunction.type, funcName: symbolFunction.identifier)
    }
    
    func returnFunctions(){
        guard let symbolFunction = symbolTable.lookup(functionAsMainThread ?? "") else {
            return
        }
        // Tipo esperado de retorno
        let returnTypeExpected = symbolFunction.type
        let (operand, type) = operationStack.getLastOperand() ?? ("",.void)
        
        guard (returnTypeExpected == type) else {
            delegate?.sendInvalidOperationBetween(t1: type, t2: returnTypeExpected)
            print("Mistmatch return and expected")
            
            return
        }
        
        let quadruploReturn = Quadruple(argument1: operand, argument2: nil, op: .rtn, result: "\(symbolFunction.address)")
        self.quadruples.append(quadruploReturn)
        // Generar return cuadruple
        // Address of function
    }
    
    func fillInfoStack(infoStack: InfoStack, varSymbolType : TypeSymbol, size : Int) {
        switch varSymbolType {
        case .String:
            infoStack.numberStrings += size
            break
        case .Integer:
            infoStack.numberInts += size
            break
        case .void:
            infoStack.numberVoids += size
            break
        case .integer:
            infoStack.numberInts += size
            break
        case .string:
            infoStack.numberStrings += size
            break
        case .boolean:
            infoStack.numberBools += size
            break
        case .float:
            infoStack.numberFloats += size
            break
        case .char:
            infoStack.numberChars += size
            break
        case .double:
            infoStack.numberDoubles += size
            break
        case .ID:
            break
        case .pointer:
            infoStack.numberPointers += size
            break
        }
    }
    
    // PARCHE GUADALUPANO
    func fillParcheG(t: TypeSymbol, funcName: String){
        guard let symbol = symbolTable.lookup(funcName) else {return}
        if(symbol.type != .void && symbol.kind == .method){
            let newAddresss = newLocalVariable(t: t)
            self.operationStack.addOperand(operand: "\(newAddresss)", type: t)
        
            let quadrupleReturn = Quadruple(argument1: "\(symbol.address)", argument2: nil, op: .assign, result: "\(newAddresss)")
            self.quadruples.append(quadrupleReturn)
        }
    }
    
    
//    // PARCHE GUADALUPANO
    func fillParcheGArrays(t: TypeSymbol, nameArray: String){
        guard let symbol = symbolTable.lookup(nameArray) else {return}
        let newAddresss = newLocalVariable(t: t)
        let (pointerOperand, _) : (String, TypeSymbol) = operationStack.getLastOperand() ?? ("", .void)
        self.operationStack.addOperand(operand: "\(newAddresss)", type: t)
        let quadrupleReturn = Quadruple(argument1: "\(pointerOperand)", argument2: nil, op: .assign, result: "\(newAddresss)")
        self.quadruples.append(quadrupleReturn)
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
    func sendBadParametersForFunc(id: NSString)
}
