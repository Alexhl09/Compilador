# QueueProtocol

``` swift
public protocol QueueProtocol 
```

## Requirements

### Element

``` swift
associatedtype Element
```

### enqueue(\_:​)

``` swift
mutating func enqueue(_ element: Element) -> Bool
```

### dequeue()

``` swift
mutating func dequeue() -> Element?
```

### isEmpty

``` swift
var isEmpty: Bool 
```

### peek

``` swift
var peek: Element? 
```
