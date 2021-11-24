# Property

A read-only property that can be observed for its changes over time. There
are three categories of read-only properties:​

``` swift
public final class Property<Value>: PropertyProtocol 
```

# Constant property

Created by `Property(value:)`, the producer and signal of a constant
property would complete immediately when it is initialized.

# Existential property

Created by `Property(capturing:)`, it wraps any arbitrary `PropertyProtocol`
types, and passes through the behavior. Note that it would retain the
wrapped property.

Existential property would be deprecated when generalized existential
eventually lands in Swift.

# Composed property

A composed property presents a composed view of its sources, which can be
one or more properties, a producer, or a signal. It can be created using
property composition operators, `Property(_:)` or `Property(initial:then:)`.

It does not own its lifetime, and its producer and signal are bound to the
lifetime of its sources. It also does not have an influence on its sources,
so retaining a composed property would not prevent its sources from
deinitializing.

Note that composed properties do not retain any of its sources.

## Inheritance

[`PropertyProtocol`](/PropertyProtocol)

## Initializers

### `init(initialValue:producer:)`

``` swift
@available(*, unavailable, renamed:"Property(initial:then:)")
	public convenience init(initialValue: Value, producer: SignalProducer<Value, NoError>) 
```

### `init(initialValue:signal:)`

``` swift
@available(*, unavailable, renamed:"Property(initial:then:)")
	public convenience init(initialValue: Value, signal: Signal<Value, NoError>) 
```

### `init(value:)`

Initializes a constant property.

``` swift
public init(value: Value) 
```

#### Parameters

  - property: A value of the constant property.

### `init(capturing:)`

Initializes an existential property which wraps the given property.

``` swift
public init<P: PropertyProtocol>(capturing property: P) where P.Value == Value 
```

> 

#### Parameters

  - property: A property to be wrapped.

### `init(_:)`

Initializes a composed property which reflects the given property.

``` swift
public convenience init<P: PropertyProtocol>(_ property: P) where P.Value == Value 
```

> 

#### Parameters

  - property: A property to be wrapped.

### `init(initial:then:)`

Initializes a composed property that first takes on `initial`, then each
value sent on a signal created by `producer`.

``` swift
public convenience init(initial: Value, then values: SignalProducer<Value, NoError>) 
```

#### Parameters

  - initial: Starting value for the property.
  - values: A producer that will start immediately and send values to the property.

### `init(initial:then:)`

Initialize a composed property that first takes on `initial`, then each
value sent on `signal`.

``` swift
public convenience init(initial: Value, then values: Signal<Value, NoError>) 
```

#### Parameters

  - initialValue: Starting value for the property.
  - values: A signal that will send values to the property.

## Properties

### `value`

The current value of the property.

``` swift
public var value: Value 
```

### `producer`

A producer for Signals that will send the property's current
value, followed by all changes over time, then complete when the
property has deinitialized or has no further changes.

``` swift
public var producer: SignalProducer<Value, NoError> 
```

> 

### `signal`

A signal that will send the property's changes over time, then
complete when the property has deinitialized or has no further changes.

``` swift
public var signal: Signal<Value, NoError> 
```

> 
