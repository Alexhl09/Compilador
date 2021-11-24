# BindingSourceProtocol

Describes a source which can be bound.

``` swift
public protocol BindingSourceProtocol 
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

### observe(\_:​during:​)

Observe the binding source by sending any events to the given observer.

``` swift
@discardableResult
	func observe(_ observer: Observer<Value, Error>, during lifetime: Lifetime) -> Disposable?
```
