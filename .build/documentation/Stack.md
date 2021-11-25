# Stack

``` swift
public struct Stack<Element> 
```

## Inheritance

`CustomStringConvertible`, `ExpressibleByArrayLiteral`

## Nested Type Aliases

### `ArrayLiteralElement`

``` swift
public typealias ArrayLiteralElement = Element
```

## Initializers

### `init()`

``` swift
public init() 
```

### `init(_:)`

``` swift
public init(_ elements: [Element]) 
```

### `init(arrayLiteral:)`

``` swift
public init(arrayLiteral elements: Element...) 
```

## Properties

### `isEmpty`

``` swift
public var isEmpty: Bool 
```

### `description`

``` swift
public var description: String 
```

## Methods

### `push(_:)`

``` swift
public mutating func push(_ element: Element) 
```

### `size()`

``` swift
public func size() -> Int 
```

### `pop()`

``` swift
@discardableResult
    public mutating func pop() -> Element? 
```

### `peek()`

``` swift
public func peek() -> Element? 
```

### `reverse()`

``` swift
public mutating func reverse()
```

### `reverseFirst(n:)`

``` swift
public mutating func reverseFirst(n: Int)
```

### `reverseTop(n:)`

``` swift
public mutating func reverseTop(n: Int)
```
