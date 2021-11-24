# ExtraCompatible

A type that has Extra extensions.

``` swift
public protocol ExtraCompatible 
```

## Default Implementations

### `ex`

``` swift
static var ex: Extra<Self>.Type 
```

### `ex`

``` swift
var ex: Extra<Self> 
```

## Requirements

### CompatibleType

``` swift
associatedtype CompatibleType
```

### ex

``` swift
static var ex: Extra<CompatibleType>.Type 
```

### ex

``` swift
var ex: Extra<CompatibleType> 
```
