# RingBuffer

``` swift
public struct RingBuffer<T> 
```

## Initializers

### `init(count:)`

``` swift
public init(count: Int) 
```

## Properties

### `isEmpty`

``` swift
public var isEmpty: Bool 
```

### `isFull`

``` swift
public var isFull: Bool 
```

## Methods

### `write(_:)`

``` swift
public mutating func write(_ element: T) -> Bool 
```

### `read()`

``` swift
public mutating func read() -> T? 
```
