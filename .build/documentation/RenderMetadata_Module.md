# RenderMetadata.Module

Metadata about a module dependency.

``` swift
public struct Module: Codable 
```

## Inheritance

`Codable`

## Properties

### `name`

``` swift
public let name: String
```

### `relatedModules`

Possible dependencies to the module, we allow for those in the render JSON model
but have no authoring support at the moment.

``` swift
public let relatedModules: [String]?
```
