# EventProtocol

Event protocol for constraining signal extensions

``` swift
public protocol EventProtocol 
```

## Requirements

### Value

The value type of an event.

``` swift
associatedtype Value
```

### Error

The error type of an event. If errors aren't possible then `NoError` can
be used.

``` swift
associatedtype Error: Swift.Error
```

### event

Extracts the event from the receiver.

``` swift
var event: Event<Value, Error> 
```
