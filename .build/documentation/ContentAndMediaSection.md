# ContentAndMediaSection

A section containing textual content and media laid out horizontally or vertically.

``` swift
public struct ContentAndMediaSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(layout:title:media:mediaPosition:)`

Creates a new content and media section from the given parameters.

``` swift
public init(layout: Layout?, title: String?, media: RenderReferenceIdentifier?, mediaPosition: ContentAndMedia.MediaPosition) 
```

#### Parameters

  - layout: The layout direction for the section.
  - title: The title of the section.
  - media: A reference to a media item for the section.
  - mediaPosition: The position of the media in relation to the prose content.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .contentAndMedia
```

### `layout`

The layout direction.

``` swift
public var layout: Layout?
```

### `title`

The title of the section.

``` swift
public var title: String?
```

### `eyebrow`

Text to display above the title.

``` swift
public var eyebrow: String?
```

### `content`

The body content of the section.

``` swift
public var content: [RenderBlockContent] = []
```

### `media`

An image or video to display opposite the text.

``` swift
public var media: RenderReferenceIdentifier?
```

### `mediaPosition`

Whether the media comes before or after the text when read from top to bottom or leading to trailing.

``` swift
public var mediaPosition: ContentAndMedia.MediaPosition
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```
