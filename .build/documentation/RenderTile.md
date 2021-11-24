# RenderTile

A render-friendly representation of a view that links
to a specified type of content.

``` swift
public struct RenderTile: Codable, TextIndexing 
```

Depending on its type, a render tile contains links to a
specific kind of resource such as sample code, videos,
or forum topics.

## Inheritance

`Codable`, [`TextIndexing`](/TextIndexing)

## Initializers

### `init(identifier:title:content:action:media:)`

Creates a new tile from the given parameters.

``` swift
public init(identifier: RenderTile.Identifier, title: String, content: [RenderBlockContent] = [], action: RenderInlineContent?, media: RenderReferenceIdentifier?) 
```

#### Parameters

  - identifier: The type of tile.
  - title: The tile's title.
  - content: The main content for the tile.
  - action: The tile's call-to-action content.
  - media: A reference to the tile's media content.

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `identifier`

The type of tile.

``` swift
public var identifier: RenderTile.Identifier
```

Use this identifier to determine the tile's type during layout.

### `title`

The tile's title.

``` swift
public var title: String
```

### `content`

The main content of the tile.

``` swift
public var content: [RenderBlockContent] = []
```

### `action`

The tile's call-to-action content, if any.

``` swift
public var action: RenderInlineContent?
```

### `media`

A reference to the tile's media content, if any.

``` swift
public var media: RenderReferenceIdentifier?
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```

### `defaultCallToActionTitle(for:)`

Returns a call-to-action title for the given tile identifier.

``` swift
public static func defaultCallToActionTitle(for identifier: Tile.Identifier) -> String 
```

This string is intended for use as a title for a tile's call-to-action
link. An example title is "View more".
