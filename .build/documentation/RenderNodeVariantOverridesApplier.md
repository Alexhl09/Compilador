# RenderNodeVariantOverridesApplier

A utility type to apply variant overrides to an encoded render node.

``` swift
public struct RenderNodeVariantOverridesApplier 
```

## Initializers

### `init()`

Creates a variant overrides applier.

``` swift
public init() 
```

## Methods

### `applyVariantOverrides(in:for:)`

Applies variant overrides of the given trait to the given encoded render node.

``` swift
public func applyVariantOverrides(in renderNodeData: Data, for traits: [RenderNode.Variant.Trait]) throws -> Data 
```

#### Parameters

  - renderNodeData: The render node on which to apply the variant override, encoded in JSON.
  - traits: The traits associated with the patch to apply.

#### Returns

The render node with the patch applied, encoded in JSON.
