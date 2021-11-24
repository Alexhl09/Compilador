# VariantOverride

Defines an override for a JSON value for a set of traits.

``` swift
public struct VariantOverride: Codable 
```

Override values are contain the `patch` that should be applied for clients that want to process documentation for the override's `traits`.

## Inheritance

`Codable`

## Initializers

### `init(traits:patch:)`

Creates an override value for the given traits.

``` swift
public init(traits: [RenderNode.Variant.Trait], patch: JSONPatch) 
```

#### Parameters

  - traits: The traits associated with this override value.
  - patch: The patch to apply as part of the override.

## Properties

### `traits`

The traits associated with the override.

``` swift
public var traits: [RenderNode.Variant.Trait]
```

### `patch`

The patch to apply as part of the override.

``` swift
public var patch: JSONPatch
```
