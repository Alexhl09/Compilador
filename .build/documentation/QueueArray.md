# QueueArray

``` swift
public struct QueueArray<T>: Queue 
```

## Inheritance

`CustomStringConvertible`, [`Queue`](/Queue), [`Queue`](/Queue)

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `isEmpty`

``` swift
public var isEmpty: Bool 
```

### `peek`

``` swift
public var peek: T? 
```

### `description`

``` swift
public var description: String 
```

## Methods

### `enqueue(_:)`

``` swift
@discardableResult
    public mutating func enqueue(_ element: T) -> Bool 
```

### `dequeue()`

``` swift
public mutating func dequeue() -> T? 
```
