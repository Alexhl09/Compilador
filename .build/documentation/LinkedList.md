# LinkedList

``` swift
public struct LinkedList<Value> 
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
public var head: Node<Value>?
```

### `tail`

``` swift
public var tail: Node<Value>?
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

### `push(_:)`

``` swift
public mutating func push(_ value : Value)
```

### `append(_:)`

``` swift
public mutating func append(_ value : Value)
```

### `node(at:)`

``` swift
public func node(at index: Int) -> Node<Value>?
```

### `insert(_:after:)`

``` swift
@discardableResult public mutating func insert(_ value : Value, after node : Node<Value>) -> Node<Value>
```

### `pop()`

``` swift
@discardableResult public mutating func pop() -> Value?
```

### `removeLast()`

``` swift
@discardableResult
    public mutating func removeLast() -> Value? 
```

### `remove(after:)`

``` swift
@discardableResult
    public mutating func remove(after node: Node<Value>) -> Value?
```

### `index(after:)`

``` swift
public func index(after i: Index) -> Index 
```
