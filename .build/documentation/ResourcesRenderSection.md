# ResourcesRenderSection

A section that contains additional resources for learning about a technology.

``` swift
public struct ResourcesRenderSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(tiles:content:)`

Creates a new resources section from the given tiles and content.

``` swift
public init(tiles: [RenderTile], content: [RenderBlockContent]) 
```

#### Parameters

  - tiles: A list of tiles for the section.
  - content: The section's abstract.

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .resources
```

### `tiles`

The resource tiles.

``` swift
public var tiles: [RenderTile]
```

### `content`

An abstract for the section.

``` swift
public var content: [RenderBlockContent] = []
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```
