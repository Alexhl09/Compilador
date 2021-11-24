# BindingTargetProtocol

Describes a target which can be bound.

``` swift
public protocol BindingTargetProtocol: class 
```

## Inheritance

`class`

## Requirements

### Value

``` swift
associatedtype Value
```

### lifetime

The lifetime of `self`. The binding operators use this to determine when
the binding should be torn down.

``` swift
var lifetime: Lifetime 
```

### consume(\_:​)

Consume a value from the binding.

``` swift
func consume(_ value: Value)
```
