# RemoveHierarchyTransformation

This transformation removes the hierarchy information from a render node JSON,
also getting rid of the dead references. It's useful to save space when the
hierarchy information is not a key information to preserve.

``` swift
public struct RemoveHierarchyTransformation: RenderNodeTransforming 
```

## Inheritance

[`RenderNodeTransforming`](/RenderNodeTransforming)

## Initializers

### `init()`

``` swift
public init() 
```

## Methods

### `transform(renderNode:context:)`

``` swift
public func transform(renderNode: RenderNode, context: RenderNodeTransformationContext)
        -> RenderNodeTransformationResult 
```
