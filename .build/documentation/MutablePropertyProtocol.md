# MutablePropertyProtocol

Represents an observable property that can be mutated directly.

``` swift
public protocol MutablePropertyProtocol: PropertyProtocol, BindingTargetProtocol 
```

## Inheritance

[`PropertyProtocol`](/PropertyProtocol), [`BindingTargetProtocol`](/BindingTargetProtocol)

## Default Implementations

### `consume(_:)`

``` swift
public func consume(_ value: Value) 
```

## Requirements

### value

The current value of the property.

``` swift
var value: Value 
```
