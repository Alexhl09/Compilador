# RenderNodeTransforming

A type that modifies a render node.

``` swift
public protocol RenderNodeTransforming 
```

## Default Implementations

### `then(_:)`

Combines this transformation with another transformation.

``` swift
public func then(_ otherTransformation: RenderNodeTransforming) -> RenderNodeTransformationComposition 
```

#### Parameters

  - otherTransformation: The other transformation to apply after the receiver.

#### Returns

A new transformation that applies the two transformations, one after another.

## Requirements

### RenderNodeTransformationResult

A pair that consists of a render node and a transformation context.

``` swift
typealias RenderNodeTransformationResult = (renderNode: RenderNode, context: RenderNodeTransformationContext)
```

### transform(renderNode:​context:​)

Applies the transformation to the given render node.

``` swift
func transform(renderNode: RenderNode, context: RenderNodeTransformationContext) -> RenderNodeTransformationResult
```

#### Parameters

  - renderNode: The render node to transform.
  - context: The context in which you apply this transformation.

#### Returns

The transformed render node and a (possible modified) context.
