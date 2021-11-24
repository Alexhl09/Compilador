# RenderNodeTransformationComposition

A transformation that applies two transformations, one after the other.

``` swift
public struct RenderNodeTransformationComposition: RenderNodeTransforming 
```

## Inheritance

[`RenderNodeTransforming`](/RenderNodeTransforming)

## Initializers

### `init(first:second:)`

Initializes a transformation that applies two transformations, one after the other.

``` swift
public init(first: RenderNodeTransforming, second: RenderNodeTransforming) 
```

#### Parameters

  - first: The first transformation to apply.
  - second: The second transformation to apply.

## Properties

### `first`

The first transformation to apply.

``` swift
public var first: RenderNodeTransforming
```

### `second`

The second transformation to apply.

``` swift
public var second: RenderNodeTransforming
```

## Methods

### `transform(renderNode:context:)`

Applies the two transformations, in sequence, to a given render node.

``` swift
public func transform(renderNode: RenderNode, context: RenderNodeTransformationContext)
        -> RenderNodeTransformationResult 
```

The composed transformation passes the output from the first transformation as the input to the second transformation.

``` 
┌─────────────────────────────┐
│  ┌────────┐     ┌────────┐  │
```

──┼─▶│        │────▶│        │──┼─▶
│  │ First  │     │ Second │  │
──┼─▶│        │────▶│        │──┼─▶
│  └────────┘     └────────┘  │
└─────────────────────────────┘

#### Parameters

  - renderNode: The node to transform.
  - context: The context in which the composed transformation transforms the node.

#### Returns

The transformed node, and a possibly modified context that's passed through both transformers.
