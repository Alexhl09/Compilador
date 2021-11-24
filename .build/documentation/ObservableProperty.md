# ObservableProperty

A basic implementation of a property whose `value` can be observed
using callbacks.

``` swift
public class ObservableProperty<ValueType>: ObservablePropertyType 
```

``` swift
Example:

var property = ObservableProperty(1)

property.subscribe { newValue in
    print("newValue: \(newValue)")
}

property.value = 2

// Executing the above code prints:
// "newValue: 2"
```

## Inheritance

[`ObservablePropertyType`](/ObservablePropertyType)

## Nested Type Aliases

### `CallbackType`

The type of the callback to be called when the `value` changes.

``` swift
public typealias CallbackType = (ValueType) -> ()
```

## Initializers

### `init(_:)`

``` swift
public init(_ value: ValueType) 
```

  - parameter value: The initial value to store.

## Properties

### `value`

The `value` stored in this instance. Setting it to a new value will notify
any subscriptions registered through the `subscribe` method.

``` swift
public var value: ValueType 
```

## Methods

### `subscribe(_:)`

Register a subscriber that will be called with the new value when the `value` changes.

``` swift
public func subscribe(_ callback: @escaping CallbackType) 
```

#### Parameters

  - callback: The function to call when the value changes.
