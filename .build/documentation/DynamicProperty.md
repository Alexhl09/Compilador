# DynamicProperty

Wraps a `dynamic` property, or one defined in Objective-C, using Key-Value
Coding and Key-Value Observing.

``` swift
public final class DynamicProperty<Value>: MutablePropertyProtocol 
```

Use this class only as a last resort\! `MutableProperty` is generally better
unless KVC/KVO is required by the API you're using (for example,
`NSOperation`).

## Inheritance

[`MutablePropertyProtocol`](/MutablePropertyProtocol)

## Initializers

### `init(object:keyPath:)`

Initializes a property that will observe and set the given key path of
the given object. The generic type `Value` can be any Swift type, and will
be bridged to Objective-C via `Any`.

``` swift
public init(object: NSObject, keyPath: String) 
```

> 

#### Parameters

  - object: An object to be observed.
  - keyPath: Key path to observe on the object.

## Properties

### `value`

The current value of the property, as read and written using Key-Value
Coding.

``` swift
public var value: Value? 
```

### `lifetime`

The lifetime of the property.

``` swift
public var lifetime: Lifetime 
```

### `producer`

A producer that will create a Key-Value Observer for the given object,
send its initial value then all changes over time, and then complete
when the observed object has deallocated.

``` swift
public var producer: SignalProducer<Value?, NoError> 
```

> 

### `signal`

``` swift
public private(set) lazy var signal: Signal<Value?, NoError> 
```
