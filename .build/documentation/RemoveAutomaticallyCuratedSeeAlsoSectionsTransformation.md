# RemoveAutomaticallyCuratedSeeAlsoSectionsTransformation

A transformation that removes automatically curated See Also sections.

``` swift
public struct RemoveAutomaticallyCuratedSeeAlsoSectionsTransformation: RenderNodeTransforming 
```

## Inheritance

[`RenderNodeTransforming`](/RenderNodeTransforming)

## Initializers

### `init()`

Creates a new transformer.

``` swift
public init() 
```

## Methods

### `transform(renderNode:context:)`

Removes automatically curated See Also sections from the given render node.

``` swift
public func transform(renderNode: RenderNode, context: RenderNodeTransformationContext)
        -> RenderNodeTransformationResult 
```

Applying this transformation will also decrease the reference count in the returned transformation context
for all the references in the removed See Also sections.

#### Parameters

  - renderNode: The render node from which this transformation removes automatically curated See Also sections.
  - context: The context that tracks the number of times each reference is referenced in the render node's content.

#### Returns

The transformed render node and context with updated reference counts.
