# RemoveUnusedReferencesTransformation

A transformation that removes unused references from a render node.

``` swift
public struct RemoveUnusedReferencesTransformation: RenderNodeTransforming 
```

## Inheritance

[`RenderNodeTransforming`](/RenderNodeTransforming)

## Initializers

### `init()`

Initializes a new transformer.

``` swift
public init() 
```

## Methods

### `transform(renderNode:context:)`

Removes references that are unreferenced in a given context from the given render node.

``` swift
public func transform(renderNode: RenderNode, context: RenderNodeTransformationContext) -> RenderNodeTransformationResult 
```

A reference is considered "unreferenced" if the reference count for that reference in the transformation context is zero.

#### Parameters

  - renderNode: The render node from which to remove unreferenced references.
  - context: The context that the transformer uses to determine which references are unreferenced.

#### Returns

The transformed render node and the unmodified context.
