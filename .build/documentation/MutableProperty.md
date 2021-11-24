# MutableProperty

A mutable property of type `Value` that allows observation of its changes.

``` swift
public final class MutableProperty<Value>: MutablePropertyProtocol 
```

Instances of this class are thread-safe.

## Inheritance

`Delta.ObservablePropertyType`, [`MutablePropertyProtocol`](/MutablePropertyProtocol)

## Nested Type Aliases

### `ValueType`

``` swift
public typealias ValueType = Value
```

## Initializers

### `init(_:)`

Initializes a mutable property that first takes on `initialValue`

``` swift
public init(_ initialValue: Value) 
```

#### Parameters

  - initialValue: Starting value for the mutable property.

## Properties

### `value`

The current value of the property.

``` swift
public var value: Value 
```

Setting this to a new value will notify all observers of `signal`, or
signals created using `producer`.

### `lifetime`

The lifetime of the property.

``` swift
public let lifetime: Lifetime
```

### `signal`

A signal that will send the property's changes over time,
then complete when the property has deinitialized.

``` swift
public let signal: Signal<Value, NoError>
```

### `producer`

A producer for Signals that will send the property's current value,
followed by all changes over time, then complete when the property has
deinitialized.

``` swift
public var producer: SignalProducer<Value, NoError> 
```

## Methods

### `swap(_:)`

Atomically replaces the contents of the variable.

``` swift
@discardableResult
	public func swap(_ newValue: Value) -> Value 
```

#### Parameters

  - newValue: New property value.

#### Returns

The previous property value.

### `modify(_:)`

Atomically modifies the variable.

``` swift
@discardableResult
	public func modify<Result>(_ action: (inout Value) throws -> Result) rethrows -> Result 
```

#### Parameters

  - action: A closure that accepts old property value and returns a new property value.

#### Returns

The result of the action.

### `withValue(action:)`

Atomically performs an arbitrary action using the current value of the
variable.

``` swift
@discardableResult
	public func withValue<Result>(action: (Value) throws -> Result) rethrows -> Result 
```

#### Parameters

  - action: A closure that accepts current property value.

#### Returns

the result of the action.
