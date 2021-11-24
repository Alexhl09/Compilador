# ArrayLinkedList

The arrays has a linked list with node representing the information of each dimension.

``` swift
public struct ArrayLinkedList 
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
public var head: ArrayNode?
```

### `tail`

``` swift
public var tail: ArrayNode?
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

### `newArrayNode()`

``` swift
public mutating func newArrayNode()
```

### `push(_:)`

``` swift
public mutating func push(_ node : ArrayNode)
```

### `onlyOneArrayNode()`

``` swift
public func onlyOneArrayNode()-> Bool
```

### `append(_:)`

``` swift
public mutating func append(_ node : ArrayNode)
```

### `node(at:)`

``` swift
public func node(at index: Int) -> ArrayNode?
```

### `insert(_:after:)`

``` swift
@discardableResult public mutating func insert(_ symbols : ArrayNode, after node : ArrayNode) -> ArrayNode
```

### `pop()`

``` swift
@discardableResult public mutating func pop() -> ArrayNode?
```

### `removeLast()`

``` swift
@discardableResult
    public mutating func removeLast() -> ArrayNode? 
```

### `remove(after:)`

``` swift
@discardableResult
    public mutating func remove(after node: ArrayNode) -> ArrayNode? 
```

### `index(after:)`

``` swift
public func index(after i: Index) -> Index 
```
