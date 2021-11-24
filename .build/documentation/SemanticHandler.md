# SemanticHandler

The SemanticHandler is an special classs that manages the semantic actions of the compiler.

``` swift
public class SemanticHandler : CustomStringConvertible 
```

> 

## Inheritance

`CustomStringConvertible`

## Properties

### `globalFinalIndex`

The globalFinalIndex keeps track of the last instruction of global statements

``` swift
public var globalFinalIndex : Bool = false
```

### `delegate`

The delagate is used to send an error message with certain informacion to the user

``` swift
public var delegate : SemanticErrorDelegate? = nil
```

### `quadruples`

The array of quadruples generated during the compilation

``` swift
public var quadruples : [Quadruple] = []
```

### `symbolTable`

Symbol table that keeps track of each variable, function or constant declared in the program

``` swift
public var symbolTable : SymbolTable 
```

### `jumpStack`

The jump stack keeps track of the qaudruples like GOTO, GOTOF, that needs to be filled when the statement has finished

``` swift
public var jumpStack : Stack<Int> = []
```

### `operationStack`

The operationStack keeps track of the operands and operators found

``` swift
public var operationStack : OperatorStack 
```

### `constants`

The constants is a dictionary that contains the address and the value to do not repeat the same address for the same value

``` swift
public var constants: [String: Int] = [:]
```

### `functionAsMainThread`

The name of the current function to be reviewed

``` swift
public var functionAsMainThread : String? = nil
```

### `memory`

This is the memory class that handles the management of addresses depending on the kind of segment and the data type

``` swift
public var memory : VirtualMemorySemantic 
```

### `globalInfoStack`

The globalInfoStack saves the number of addresses requested as global

``` swift
public var globalInfoStack: InfoStack 
```

### `constanstInfoStack`

The constanstInfoStack saves the number of addresses requested as constants

``` swift
public var constanstInfoStack : InfoStack 
```

### `addressArrays`

The addressArrays saves the address of each array and number of elements

``` swift
public var addressArrays: [Int:  Int] = [:]
```

### `description`

``` swift
public var description: String 
```

## Methods

### `insertSymbolToST(_:_:_:_:_:params:)`

This function inserts in the symbol table an identifier and its properties, like the type, kind, and more. If it wasn't possible to insert it to the symbol table, it sends an error indicating that the variable was already declared.

``` swift
public func insertSymbolToST(_ id : NSString, _ constant: Bool, _ array : Bool, _ type: TypeSymbol = .void, _ kind : Kind = .field, params: [Symbol] = [])
```

> 

#### Parameters

  - id: The identifier to be inserted in the symbolTable
  - constant: Add a flag indicating if the symbol is constant
  - array: Add a flag indicating if the symbol is an array
  - type: Add the type of the symbol, by default is void
  - kind: Add the kind of the symbol (field or method), by default is a field
  - params: The symbols that are received as parameters in case of a function, the default value is an empty array \[\]

### `insertArrayToST(_:_:_:r:const:type:)`

This function inserts in the symbol table a 2d array with identifier and its properties, like the type, kind, and more. If it wasn't possible to insert it to the symbol table, it sends an error indicating that the variable was already declared.

``` swift
public func insertArrayToST(_ id : NSString, _ dimension : (NSNumber, NSNumber), _ list: ArrayLinkedList, r: Int, const : Bool = true, type: TypeSymbol  = .void)
```

> 

#### Parameters

  - id: The identifier to be inserted in the symbolTable
  - dimension: The dimension of the array in case of a 2D array
  - const: Add a flag indicating if the symbol is constant
  - type: Add the type of the symbol, by default is void
  - list: The data structure that saves the nodes of each dimension to make the addresses linear

### `insertArrayMultiDimToST(_:_:r:const:type:_:kind:)`

This function inserts in the symbol table a N dimension array with identifier and its properties, like the type, kind, and more. If it wasn't possible to insert it to the symbol table, it sends an error indicating that the variable was already declared.

``` swift
public func insertArrayMultiDimToST(_ id : NSString, _ list: ArrayLinkedList, r: Int, const : Bool = true, type: TypeSymbol  = .void, _ dimension : (NSNumber, NSNumber) = (NSNumber(value: -1), NSNumber(value: -1)), kind : Kind = .field)
```

> 

#### Parameters

  - id: The identifier to be inserted in the symbolTable
  - dimension: The dimension of the array in case of a 2D array
  - const: Add a flag indicating if the symbol is constant
  - type: Add the type of the symbol, by default is void
  - list: The data structure that saves the nodes of each dimension to make the addresses linear
  - r: Number of total elements in the array

### `readOneCellArray(_:)`

This function read a value to only one cell of an array. It adds the symbol and push it to the operands stack and finally generates the quadruple. At the end it saves the value of the final address in a temporal value.

``` swift
public func readOneCellArray(_ id : NSString)
```

#### Parameters

  - id: The name of the array to be read

### `assignArray(_:)`

This function assigns a value to one 2D array. It adds the symbol and push it to the operands stack and finally generates the quadruple.

``` swift
public func assignArray(_ id: NSString)
```

#### Parameters

  - id: The name of the array to be assigned

### `startScope()`

This function creates a new node at the beginning of the symbol table (Implemeted as a linked list with dictionaries)

``` swift
public func startScope()
```

### `endScope()`

This function removes the node first node of the symbol table

``` swift
public func endScope()
```

### `addOperator(op:)`

Adds a new operator to the operators stack

``` swift
public func addOperator(op : Operator)
```

#### Parameters

  - op: The operator to be inserted in the operator stack

### `addOperandByMemory(memoryAddress:type:)`

Adds a new operand to the operands stack (a stack made of tuple (Operand, Type))

``` swift
public func addOperandByMemory(memoryAddress: Int, type: TypeSymbol) 
```

#### Parameters

  - memoryAddress: The operand to be inserted in the operands stack
  - type: The type of the operand to be inserted in the operands stack

### `newGlobalVariable(s:size:)`

Ask to the memory for a new global address for a specific type

``` swift
public func newGlobalVariable(s : TypeSymbol, size : Int = 1) -> Int 
```

#### Parameters

  - s: The type of the symbol
  - size: And optional value, that sets the number of spaces to take, by default is 1

### `newLocalVariable(t:size:)`

Ask to the memory for a new local address for a specific type

``` swift
public func newLocalVariable(t: TypeSymbol, size : Int = 1) -> Int 
```

#### Parameters

  - t: The type of the symbol
  - size: And optional value, that sets the number of spaces to take, by default is 1

### `newTemporalAddress(t:size:)`

Ask to the memory for a new temporal address for a specific type

``` swift
public func newTemporalAddress(t: TypeSymbol, size : Int = 1) -> Int 
```

#### Parameters

  - t: The type of the symbol
  - size: And optional value, that sets the number of spaces to take, by default is 1

### `newConstantAddress(t:size:)`

``` swift
public func newConstantAddress(t: TypeSymbol, size: Int = 1) -> Int 
```

### `addConstantInteger(_:size:saveOperand:)`

Look for the address of an specific value of integer, and save that as an operand

``` swift
public func addConstantInteger(_ number :NSNumber, size : Int = 1, saveOperand : Bool = true)
```

#### Parameters

  - number: The object number
  - size: And optional value, that sets the number of spaces to take, by default is 1

### `addConstantFloat(_:size:)`

Look for the address of an specific value of float, and save that as an operand

``` swift
public func addConstantFloat(_ number : NSNumber, size : Int = 1)
```

#### Parameters

  - number: The object number
  - size: And optional value, that sets the number of spaces to take, by default is 1

### `addConstantDouble(_:size:)`

Look for the address of an specific value of double, and save that as an operand

``` swift
public func addConstantDouble(_ number : NSNumber, size : Int = 1)
```

#### Parameters

  - number: The object number
  - size: And optional value, that sets the number of spaces to take, by default is 1

### `addConstantBool(_:size:)`

Look for the address of an specific value of bool, and save that as an operand

``` swift
public func addConstantBool(_ number : NSNumber, size : Int = 1)
```

#### Parameters

  - number: The object number
  - size: And optional value, that sets the number of spaces to take, by default is 1

### `addConstantString(_:size:)`

Look for the address of an specific value of string, and save that as an operand

``` swift
public func addConstantString(_ string : NSString,  size : Int = 1)
```

#### Parameters

  - string: The object nsstring
  - size: And optional value, that sets the number of spaces to take, by default is 1

### `saveAddress(constant:address:)`

Save address with a new constant and the address

``` swift
public func saveAddress(constant: Any, address: Int) 
```

#### Parameters

  - constant: The value to be used as index in cosntant table
  - address: The address of the value

#### Returns

An optional address for a value

### `lookUpAddressConstantTable(value:)`

Look in the constant table for an address in a specified index

``` swift
public func lookUpAddressConstantTable(value: String) -> Int? 
```

#### Parameters

  - value: The value to be searched in constant table

#### Returns

An optional address for a value

### `addQuadruple()`

This function creates the quadruples for 2 operands.

``` swift
public func addQuadruple() 
```

### `foundMain()`

When the main is found, if the globalFinalIndex flag was still false it creates the quadruple GOTO to main. Now it has been found main, it fills the GOTO quadruple.

``` swift
public func foundMain()
```

### `addIDAsQuadruple(_:)`

This function adds a symbol as an operand

``` swift
public func addIDAsQuadruple(_ id : NSString)
```

#### Parameters

  - id: The identifier of the symbol

### `addQuadrupleWithTernaryOperator()`

This function adds a GOTOF like an IF statement for ternary operations

``` swift
public func addQuadrupleWithTernaryOperator()
```

#### Parameters

  - id: The identifier of the symbol

### `colonTernaryOperator()`

This function adds a GOTO like an IF statement for ternary operations and fills the quadruple GOTOF for next statement

``` swift
public func colonTernaryOperator()
```

#### Parameters

  - id: The identifier of the symbol

### `endTernaryOperator()`

At the end of a ternary operator, we generare the quadruples of the operations

``` swift
public func endTernaryOperator()
```

### `addCondicional()`

When a condition is added we get the last operand and it should be a boolean,
In case of error, send a type mismatch
Add the GOTOF with the result of the last operand
Finally we add the current index of quadruple to the jump stack to resolve latter

``` swift
public func addCondicional()
```

### `endCondicional()`

At the end of a conditional we fill the GOTOF that was still pending

``` swift
public func endCondicional()
```

### `fillQuadruple(index:value:)`

Fill Quadruple is a function that sets the "result" property of a quadruple

``` swift
public func fillQuadruple(index: Int, value : String)
```

#### Parameters

  - index: Index in the array of qaudruples to modify
  - value: Value to insert as result in quadruple

### `addElse()`

In case of else add a GOTO quadruple, add the current quadruple to be filled latter and fill the GOTOF that was created at the beginning of conditional

``` swift
public func addElse()
```

### `isArray(address:)`

This functions detects if an address is an array

``` swift
public func isArray(address: Int) -> Int?
```

#### Parameters

  - address: Address to check if it is an array

### `addPrint()`

Add print is a function that creates the print quadruple in case of a single value, or multiple prints in case of an array

``` swift
public func addPrint()
```

### `addForEachRange(range:id:)`

This function add the quadruples needed to evaluate a for each statement.

``` swift
public func addForEachRange(range: String, id: String)
```

#### Parameters

  - range: String ... if close range, ..\< if not close range
  - id: String with the identifier of the variable that is going to change its value during iteration

### `plusplusOneRange(id:)`

At the end we add 1 to the value of the id in the for each operation

``` swift
public func plusplusOneRange(id: String)
```

### `endForEachRange(id:)`

Call plusplusOneRange and add the GOTO at the end of iteration to verify again the operations

``` swift
public func endForEachRange(id: NSString)
```

### `saveValueVariable(id:)`

Given an identifier we get the symbol, add the symbol as an operand and finally the quadruple of assignment is generated

``` swift
public func saveValueVariable(id: String)
```

#### Parameters

  - id: Identifier of variable that is going to be assigned

### `generateQuadruple()`

While the are operands and operators we take 2 operands ans 1 operator. Check if it is valid with the semanticCube and generate the quadruple. If there is an error an invalid operation message is sent throught the delegate.

``` swift
public func generateQuadruple() throws 
```

### `generateQuadrupleAssignCellArray(symbol:withValue:)`

In order to get at the end the memory address  of an array, we generate the verify quadruples and calculate the final position to jump to get the right address.
At the end we add as an operand the pointer indicating which address we want to access.

``` swift
public func generateQuadrupleAssignCellArray(symbol: Symbol, withValue: Bool) throws 
```

#### Parameters

  - symbol: Array in which we are going to be calculaling the final address
  - withValue: Flag that indicates if we are only reading or writing the address

### `countO()`

``` swift
public func countO() -> Int
```

### `assignToPointer()`

When we want to assign a value to a pointer, it is set with this function
That takes the last operands and operator to assign the result to the pointer

``` swift
public func assignToPointer()
```

### `needConstantInt(value:)`

When a constant for an integer is needed we look for it in the constant table, if it was already there, we sent the address
If not a new address is requested

``` swift
public func needConstantInt(value : Int) -> Int
```

#### Parameters

  - value: Value to get the address

### `returnSymbolByID(_:)`

This function returns the symbol given a certain identifier

``` swift
public func returnSymbolByID(_ id: String) -> Symbol
```

### `readID(_:)`

To read a simple variable the read operator is added and the quadruples are generated using the operator and the address to be read

``` swift
public func readID(_ id: NSString)
```

### `readIDMulti(_:)`

To read (input) a multidimensional array, the operator add is taken and add the symbol as operand, getting the final address of the array as pointer. Finally we create the read quadruple for that pointer

``` swift
public func readIDMulti(_ id: NSString)
```

### `whileP1()`

When the while operation starts, it is added to the jump stack to be filled latter

``` swift
public func whileP1() 
```

### `whileP2()`

The GOTOF is added with the result of a boolean expression
If the last expression was not a boolean it sends an error

``` swift
public func whileP2() 
```

### `whileP3()`

We create the GOTO to the beginning of the while and fill the quadruple that we left ath the begining with the GOTOF

``` swift
public func whileP3() 
```

### `startFunction(_:)`

When a funtion starts the current function property is set to the id of the new function

``` swift
public func startFunction(_ id: NSString)
```

### `setCurrentCuadruple()`

Saves the count of quadruples where all the functions begin

``` swift
public func setCurrentCuadruple()
```

### `endFunction()`

When a funtion is ended with create the endFunc quadruple
And reset the local and temporal memory

``` swift
public func endFunction()
```

### `functionCall(_:args:)`

When a function is called, we get the id of the function and its arguments.
Check the type of the arguments and the sign of the function and check if they are the same, if there is an error we send the bad params message through the delegate
The era quadruple is generated and send all the args as params in several quadruples
At the end creates the gosub rutine quadruple to start executing the function

``` swift
public func functionCall(_ idFunction : NSString, args : [(String, TypeSymbol)])
```

#### Parameters

  - idFunction: Identifier of the function
  - args: Address and Type of each argument

### `returnFunctions()`

When the function returns something we check taht the expression that is going to be sent is of the same type of the function
Then generate return quadruple for the expression and in case of an array, we send all the values
At the end generate the endFunc quadruple

``` swift
public func returnFunctions()
```

### `fillInfoStack(infoStack:varSymbolType:size:)`

The information of the stack is filled adding the number of addresses to be used

``` swift
public func fillInfoStack(infoStack: InfoStack, varSymbolType : TypeSymbol, size : Int) 
```

#### Parameters

  - infoStack: stack to be filled
  - varSymbolTable: The type of the symbol that is used
  - size: Size to be reserved

### `fillParcheG(t:funcName:)`

At the end of a function call the value is saved in a temporal variable in order to used it latter.

``` swift
public func fillParcheG(t: TypeSymbol, funcName: String)
```

### `fillParcheGArrays(t:nameArray:)`

``` swift
public func fillParcheGArrays(t: TypeSymbol, nameArray: String)
```
