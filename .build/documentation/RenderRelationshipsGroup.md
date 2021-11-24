# RenderRelationshipsGroup

A structure holding the information about a given group of references.
The group can have a title and an abstract that can be rendered if necessary.

``` swift
public struct RenderRelationshipsGroup 
```

## Initializers

### `init(name:abstract:references:referencesAreNested:)`

``` swift
public init(name: String?, abstract: String?, references: [TopicRenderReference], referencesAreNested: BooleanLiteralType = false) 
```

## Properties

### `name`

The optional name of the group of references.

``` swift
public let name: String?
```

### `abstract`

The optional abstract of the group of references.

``` swift
public let abstract: String?
```

### `references`

The `TopicRenderReferences`related to the `RenderNode`.

``` swift
public let references: [TopicRenderReference]
```

### `referencesAreNested`

Indicates if the group should nest sub-references or not. Default:​ false.

``` swift
public let referencesAreNested: Bool
```
