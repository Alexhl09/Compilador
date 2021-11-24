# Atomic

An atomic variable.

``` swift
public final class Atomic<Value>: AtomicProtocol 
```

## Inheritance

[`AtomicProtocol`](/AtomicProtocol)

## Initializers

### `init(_:)`

Initialize the variable with the given initial value.

``` swift
public init(_ value: Value) 
```

#### Parameters

  - value: Initial value for `self`.

## Methods

### `modify(_:)`

Atomically modifies the variable.

``` swift
@discardableResult
	public func modify<Result>(_ action: (inout Value) throws -> Result) rethrows -> Result 
```

#### Parameters

  - action: A closure that takes the current value.

#### Returns

The result of the action.

### `withValue(_:)`

Atomically perform an arbitrary action using the current value of the
variable.

``` swift
@discardableResult
	public func withValue<Result>(_ action: (Value) throws -> Result) rethrows -> Result 
```

#### Parameters

  - action: A closure that takes the current value.

#### Returns

The result of the action.
