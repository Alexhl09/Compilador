# ObserverProtocol

A protocol for type-constrained extensions of `Observer`.

``` swift
public protocol ObserverProtocol 
```

## Default Implementations

### `sendNext(_:)`

``` swift
@available(*, unavailable, renamed: "send(value:)")
	public func sendNext(_ value: Value) 
```

### `sendFailed(_:)`

``` swift
@available(*, unavailable, renamed: "send(error:)")
	public func sendFailed(_ error: Error) 
```

## Requirements

### Value

``` swift
associatedtype Value
```

### Error

``` swift
associatedtype Error: Swift.Error
```

### send(value:​)

Puts a `value` event into `self`.

``` swift
func send(value: Value)
```

### send(error:​)

Puts a failed event into `self`.

``` swift
func send(error: Error)
```

### sendCompleted()

Puts a `completed` event into `self`.

``` swift
func sendCompleted()
```

### sendInterrupted()

Puts an `interrupted` event into `self`.

``` swift
func sendInterrupted()
```
