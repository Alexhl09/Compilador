# DocumentationNodeConverter

A converter from documentation nodes to render nodes.

``` swift
public struct DocumentationNodeConverter 
```

## Initializers

### `init(bundle:context:)`

Creates a new node converter for the given bundle and context.

``` swift
public init(bundle: DocumentationBundle, context: DocumentationContext) 
```

The converter uses bundle and context to resolve references to other documentation and describe the documentation hierarchy.

#### Parameters

  - bundle: The bundle that contains the content from which the documentation node originated.
  - context: The context that the converter uses to to resolve references it finds in the documentation node's content.

## Methods

### `convert(_:at:from:)`

Converts a documentation node to a render node.

``` swift
@available(*, deprecated, message: "Please use convert(_:at:) instead.")
    public func convert(_ node: DocumentationNode, at source: URL?, from bundle: DocumentationBundle) throws -> RenderNode 
```

#### Parameters

  - node: The documentation node to convert.
  - source: The source file from which the documentation node's content originated.
  - bundle: The bundle that contains the content from which the documentation node originated.

#### Returns

The render node representation of the documentation node.

### `convert(_:at:)`

Converts a documentation node to a render node.

``` swift
public func convert(_ node: DocumentationNode, at source: URL?) throws -> RenderNode 
```

Convert a documentation node into a render node to get a self-contained, persistable representation of a given topic's data, so you can write it to disk, send it over a network, or otherwise process it.

#### Parameters

  - node: The documentation node to convert.
  - source: The source file for the documentation node.

#### Returns

The render node representation of the documentation node.
