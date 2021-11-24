# BindingTarget

A binding target that can be used with the `<~` operator.

``` swift
public final class BindingTarget<Value>: BindingTargetProtocol 
```

## Inheritance

[`BindingTargetProtocol`](/BindingTargetProtocol)

## Initializers

### `init(lifetime:setter:)`

Creates a binding target.

``` swift
public init(lifetime: Lifetime, setter: @escaping (Value) -> Void) 
```

#### Parameters

  - lifetime: The expected lifetime of any bindings towards `self`.
  - setter: The action to consume values.

### `init(on:lifetime:setter:)`

Creates a binding target which consumes values on the specified scheduler.

``` swift
public convenience init(on scheduler: SchedulerProtocol, lifetime: Lifetime, setter: @escaping (Value) -> Void) 
```

#### Parameters

  - scheduler: The scheduler on which the `setter` consumes the values.
  - lifetime: The expected lifetime of any bindings towards `self`.
  - setter: The action to consume values.

## Properties

### `lifetime`

``` swift
public let lifetime: Lifetime
```

## Methods

### `consume(_:)`

``` swift
public func consume(_ value: Value) 
```
