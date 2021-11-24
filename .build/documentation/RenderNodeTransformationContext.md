# RenderNodeTransformationContext

A value that tracks state and state changes while transforming a render node.

``` swift
public struct RenderNodeTransformationContext 
```

## Properties

### `referencesCount`

The number of times the render node's content references each reference.

``` swift
public var referencesCount: [String: Int] = [:]
```

Transformations that add or remove references to a render node's content are responsible to update this accordingly.
