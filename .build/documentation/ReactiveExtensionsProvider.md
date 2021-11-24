# ReactiveExtensionsProvider

Describes a provider of reactive extensions.

``` swift
public protocol ReactiveExtensionsProvider: class 
```

> 

## Inheritance

`class`

## Default Implementations

### `reactive`

A proxy which hosts reactive extensions for `self`.

``` swift
public var reactive: Reactive<Self> 
```

### `reactive`

A proxy which hosts static reactive extensions for the type of `self`.

``` swift
public static var reactive: Reactive<Self>.Type 
```
