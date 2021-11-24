# AtomicProtocol

A protocol used to constraint convenience `Atomic` methods and properties.

``` swift
public protocol AtomicProtocol: class 
```

## Inheritance

`class`

## Default Implementations

### `value`

Atomically get or set the value of the variable.

``` swift
public var value: Value 
```

### `swap(_:)`

Atomically replace the contents of the variable.

``` swift
@discardableResult
	public func swap(_ newValue: Value) -> Value 
```

#### Parameters

  - newValue: A new value for the variable.

#### Returns

The old value.

## Requirements

### Value

``` swift
associatedtype Value
```

### withValue(\_:​)

``` swift
@discardableResult
	func withValue<Result>(_ action: (Value) throws -> Result) rethrows -> Result
```

### modify(\_:​)

``` swift
@discardableResult
	func modify<Result>(_ action: (inout Value) throws -> Result) rethrows -> Result
```
