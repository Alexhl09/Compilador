# Queue

``` swift
public struct Queue<T> : QueueProtocol 
```

## Inheritance

`CustomStringConvertible`, [`QueueProtocol`](/QueueProtocol)

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

### `size`

``` swift
public var size:Int
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
public mutating func enqueue(_ element: T) -> Bool 
```

### `dequeue()`

``` swift
@discardableResult
    public mutating func dequeue() -> T? 
```
