# ResourceReference

A reference to an auxiliary resource such as an image.

``` swift
public struct ResourceReference: Hashable 
```

## Inheritance

`Hashable`

## Properties

### `bundleIdentifier`

The documentation bundle identifier for the bundle in which this resource resides.

``` swift
public let bundleIdentifier: String
```

### `path`

The path of the resource local to its bundle.

``` swift
public let path: String
```
