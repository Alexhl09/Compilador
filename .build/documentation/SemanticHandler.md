# SemanticHandler

``` swift
public class SemanticHandler : CustomStringConvertible 
```

## Inheritance

`CustomStringConvertible`, `CustomStringConvertible`

## Properties

### `description`

``` swift
public var description: String 
```

### `globalFinalIndex`

``` swift
public var globalFinalIndex : Bool = false
```

### `delegate`

``` swift
public var delegate : SemanticErrorDelegate? = nil
```

### `quadruples`

``` swift
public var quadruples : [Quadruple] = []
```

### `symbolTable`

``` swift
public var symbolTable : SymbolTable 
```

### `jumpStack`

``` swift
public var jumpStack : Stack<Int> = []
```

### `operationStack`

``` swift
public var operationStack : OperatorStack 
```

### `constants`

``` swift
public var constants: [String: Int] = [:]
```

### `memory`

``` swift
public var memory : VirtualMemorySemantic 
```

### `dimensionStack`

``` swift
public var dimensionStack : Stack<(String, Int)> = []
```

### `globalInfoStack`

``` swift
public var globalInfoStack: InfoStack 
```

### `constanstInfoStack`

``` swift
public var constanstInfoStack : InfoStack 
```

### `addressArrays`

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

### `insertArrayToST(_:_:_:r:const:type:)`

``` swift
public func insertArrayToST(_ id : NSString, _ dimension : (NSNumber, NSNumber), _ list: ArrayLinkedList, r: Int, const : Bool = true, type: TypeSymbol  = .void)
```

### `insertArrayMultiDimToST(_:_:r:const:type:_:kind:)`

``` swift
public func insertArrayMultiDimToST(_ id : NSString, _ list: ArrayLinkedList, r: Int, const : Bool = true, type: TypeSymbol  = .void, _ dimension : (NSNumber, NSNumber) = (NSNumber(value: -1), NSNumber(value: -1)), kind : Kind = .field)
```

### `assignOneCellArray(_:)`

``` swift
public func assignOneCellArray(_ id : NSString)
```

### `readOneCellArray(_:)`

``` swift
public func readOneCellArray(_ id : NSString)
```

### `assignArray(_:)`

``` swift
public func assignArray(_ id: NSString)
```

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

### `addOperand(symbol:save:)`

Adds a new operand to the operands stack (a stack made of tuple (Operand, Type))

``` swift
public func addOperand(symbol : Symbol, save: Bool = false)
```

#### Parameters

  - symbol: The symbol to be inserted in the operands stack

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

### `newLocalVariable(t:size:)`

Ask to the memory for a new local address for a specific type

``` swift
public func newLocalVariable(t: TypeSymbol, size : Int = 1) -> Int 
```

#### Parameters

  - t: The type of the symbol

### `newTemporalAddress(t:size:)`

Ask to the memory for a new temporal address for a specific type

``` swift
public func newTemporalAddress(t: TypeSymbol, size : Int = 1) -> Int 
```

#### Parameters

  - t: The type of the symbol

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

### `addConstantFloat(_:size:)`

Look for the address of an specific value of float, and save that as an operand

``` swift
public func addConstantFloat(_ number : NSNumber, size : Int = 1)
```

#### Parameters

  - number: The object number

### `addConstantDouble(_:size:)`

Look for the address of an specific value of double, and save that as an operand

``` swift
public func addConstantDouble(_ number : NSNumber, size : Int = 1)
```

#### Parameters

  - number: The object number

### `addConstantBool(_:size:)`

Look for the address of an specific value of bool, and save that as an operand

``` swift
public func addConstantBool(_ number : NSNumber, size : Int = 1)
```

#### Parameters

  - number: The object number

### `addConstantChar(_:size:)`

Look for the address of an specific value of double, and save that as an operand

``` swift
public func addConstantChar(_ character : NSString, size : Int = 1)
```

#### Parameters

  - character: The object nsstring

### `addConstantString(_:size:)`

``` swift
public func addConstantString(_ string : NSString,  size : Int = 1)
```

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

When the main is found

``` swift
public func foundMain()
```

### `addIDAsQuadruple(_:)`

When the main is found

``` swift
public func addIDAsQuadruple(_ id : NSString)
```

### `addQuadrupleWithTernaryOperator()`

``` swift
public func addQuadrupleWithTernaryOperator()
```

### `colonTernaryOperator()`

``` swift
public func colonTernaryOperator()
```

### `endTernaryOperator()`

``` swift
public func endTernaryOperator()
```

### `addCondicional()`

``` swift
public func addCondicional()
```

### `endCondicional()`

``` swift
public func endCondicional()
```

### `fillQuadruple(index:value:)`

``` swift
public func fillQuadruple(index: Int, value : String)
```

### `addElse()`

``` swift
public func addElse()
```

### `isArray(address:)`

``` swift
public func isArray(address: Int) -> Int?
```

### `addPrint()`

``` swift
public func addPrint()
```

### `addForEachRange(range:id:)`

``` swift
public func addForEachRange(range: String, id: String)
```

### `plusplusOneRange(id:)`

``` swift
public func plusplusOneRange(id: String)
```

### `endForEachRange(id:)`

``` swift
public func endForEachRange(id: NSString)
```

### `getResultFromQuadruple(index:)`

``` swift
public func getResultFromQuadruple(index: Int) -> String
```

### `changeArgument1Quadruple(arg1:index:)`

``` swift
public func changeArgument1Quadruple(arg1: String, index : Int)
```

### `saveValueVariable(id:)`

``` swift
public func saveValueVariable(id: String)
```

### `generateQuadruple()`

``` swift
public func generateQuadruple() throws 
```

### `generateQuadrupleAssignCellArray(symbol:withValue:)`

``` swift
public func generateQuadrupleAssignCellArray(symbol: Symbol, withValue: Bool) throws 
```

### `countO()`

``` swift
public func countO() -> Int
```

### `assignToPointer()`

``` swift
public func assignToPointer()
```

### `needConstantInt(value:)`

``` swift
public func needConstantInt(value : Int) -> Int
```

### `returnSymbolByID(_:)`

``` swift
public func returnSymbolByID(_ id: String) -> Symbol
```

### `readID(_:)`

``` swift
public func readID(_ id: NSString)
```

### `readIDMulti(_:)`

``` swift
public func readIDMulti(_ id: NSString)
```

### `whileP1()`

``` swift
public func whileP1() 
```

### `whileP2()`

``` swift
public func whileP2() 
```

### `whileP3()`

``` swift
public func whileP3() 
```

### `startFunction(_:)`

``` swift
public func startFunction(_ id: NSString)
```

### `setCurrentCuadruple()`

``` swift
public func setCurrentCuadruple()
```

### `endFunction()`

``` swift
public func endFunction()
```

### `functionCall(_:args:)`

``` swift
public func functionCall(_ idFunction : NSString, args : [(String, TypeSymbol)])
```

### `returnFunctions()`

``` swift
public func returnFunctions()
```

### `fillInfoStack(infoStack:varSymbolType:size:)`

``` swift
public func fillInfoStack(infoStack: InfoStack, varSymbolType : TypeSymbol, size : Int) 
```

### `fillParcheG(t:funcName:)`

``` swift
public func fillParcheG(t: TypeSymbol, funcName: String)
```

### `fillParcheGArrays(t:nameArray:)`

``` swift
public func fillParcheGArrays(t: TypeSymbol, nameArray: String)
```
