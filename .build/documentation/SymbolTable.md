# SymbolTable

Symbol Table is a linked list of node, each node representing one scope.
Each node has a dictionary that keeps track of each symbol saved

``` swift
public struct SymbolTable 
```

## Inheritance

`Collection`, `CustomStringConvertible`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `head`

``` swift
public var head: Node?
```

### `tail`

``` swift
public var tail: Node?
```

### `isEmpty`

``` swift
public var isEmpty: Bool 
```

### `description`

``` swift
public var description: String 
```

### `startIndex`

``` swift
public var startIndex: Index 
```

### `endIndex`

``` swift
public var endIndex: Index 
```

## Methods

### `newNode()`

``` swift
public mutating func newNode()
```

### `push(_:)`

``` swift
public mutating func push(_ node : Node)
```

### `onlyOneNode()`

``` swift
public func onlyOneNode()-> Bool
```

### `append(_:)`

``` swift
public mutating func append(_ node : Node)
```

### `node(at:)`

``` swift
public func node(at index: Int) -> Node?
```

### `insert(_:after:)`

``` swift
@discardableResult public mutating func insert(_ symbols : Node, after node : Node) -> Node
```

### `insertInHashTable(_:)`

This functions inserts a new symbol in the linked list in case this hasn't been declared in the same last node before

``` swift
@discardableResult  public mutating func insertInHashTable(_ symbol : Symbol) -> Bool 
```

### `lookup(_:)`

This functionslooks for the symbol with the help of an identifier. If it doesn't find it, looks in the next node, until it reaches the global node, if it was never found returns nil

``` swift
public mutating func lookup(_ identifier: String) -> Symbol?
```

#### Parameters

  - identifier: Takes the identifier to be looked up in the linkedlist

#### Returns

An optional symbol in case of found.Iif not returns nil.

### `pop()`

``` swift
@discardableResult public mutating func pop() -> [Int: Symbol]?
```

### `removeLast()`

``` swift
@discardableResult
    public mutating func removeLast() -> [Int: Symbol]? 
```

### `remove(after:)`

``` swift
@discardableResult
    public mutating func remove(after node: Node) -> [Int: Symbol]? 
```

### `index(after:)`

``` swift
public func index(after i: Index) -> Index 
```
