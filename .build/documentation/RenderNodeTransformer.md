# RenderNodeTransformer

An object that modifies a render node by applying transformations to it.

``` swift
open class RenderNodeTransformer 
```

## Initializers

### `init(renderNodeData:)`

Creates a new transformer given the data of a render node.

``` swift
public init(renderNodeData: Data) throws 
```

#### Parameters

  - renderNodeData: The render node, as data.

#### Throws

Throws an error if the given render node cannot be decoded.

## Properties

### `renderNode`

The untransformed, decoded render node.

``` swift
open var renderNode: RenderNode
```

## Methods

### `apply(transformation:)`

Applies the given transformation to the decoded render node and removes unreferenced references from it.

``` swift
public func apply(transformation: RenderNodeTransforming) -> RenderNode 
```

#### Parameters

  - transformation: The transformation to apply.

#### Returns

The transformed render node.
