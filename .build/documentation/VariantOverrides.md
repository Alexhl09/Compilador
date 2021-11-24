# VariantOverrides

Defines the overrides for variants of documentation content.

``` swift
public class VariantOverrides: Codable 
```

This class can be used to accumulate override information while encoding a tree of objects.

## Topics

### Applying Patches

  - `RenderNodeVariantOverridesApplier`

## Inheritance

`Codable`

## Initializers

### `init(values:)`

Initializes a value given overrides.

``` swift
public init(values: [VariantOverride] = []) 
```

### `init(from:)`

``` swift
public required init(from decoder: Decoder) throws 
```

## Properties

### `values`

The values of the variants, organized by trait.

``` swift
public var values 
```

### `isEmpty`

Whether the collection of overrides is empty.

``` swift
public var isEmpty: Bool 
```

## Methods

### `add(_:)`

Adds the given override.

``` swift
public func add(_ variantOverride: VariantOverride) 
```

### `add(contentsOf:)`

Adds the given overrides.

``` swift
public func add<Overrides>(
        contentsOf variantOverrides: Overrides
    ) where Overrides: Collection, Overrides.Element == VariantOverride 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
