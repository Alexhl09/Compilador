# DocumentationContextConverter

A converter from documentation nodes to render nodes.

``` swift
public class DocumentationContextConverter 
```

As this type makes use of a `RenderContext` to look up commonly used pieces of content,
use this type when you are converting nodes in bulk.

If you are converting nodes ad-hoc use `DocumentationNodeConverter` instead.

## Initializers

### `init(bundle:context:renderContext:emitSymbolSourceFileURIs:emitSymbolAccessLevels:)`

Creates a new node converter for the given bundle and context.

``` swift
public init(
        bundle: DocumentationBundle,
        context: DocumentationContext,
        renderContext: RenderContext,
        emitSymbolSourceFileURIs: Bool = false,
        emitSymbolAccessLevels: Bool = false
    ) 
```

The converter uses bundle and context to resolve references to other documentation and describe the documentation hierarchy.

#### Parameters

  - bundle: The bundle that contains the content from which the documentation node originated.
  - context: The context that the converter uses to to resolve references it finds in the documentation node's content.
  - renderContext: A context that contains common pre-rendered pieces of content.
  - emitSymbolSourceFileURIs: Before passing `true` please confirm that your use case doesn't include public
    distribution of any created render nodes as there are filesystem privacy and security
    concerns with distributing this data.

## Methods

### `renderNode(for:at:)`

Converts a documentation node to a render node.

``` swift
public func renderNode(for node: DocumentationNode, at source: URL?) throws -> RenderNode? 
```

Convert a documentation node into a render node to get a self-contained, persist-able representation of a given topic's data, so you can write it to disk, send it over a network, or otherwise process it.

#### Parameters

  - node: The documentation node to convert.
  - source: The source file for the documentation node.

#### Returns

The render node representation of the documentation node.
