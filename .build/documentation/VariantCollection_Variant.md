# VariantCollection.Variant

A variant for a render node value.

``` swift
struct Variant<Value: Codable> 
```

## Initializers

### `init(traits:patch:)`

Creates an override value for the given traits.

``` swift
public init(traits: [RenderNode.Variant.Trait], patch: [VariantPatchOperation<Value>]) 
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
public var patch: [VariantPatchOperation<Value>]
```
