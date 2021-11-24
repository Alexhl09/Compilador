# ContentRenderSection

A section of documentation content.

``` swift
public struct ContentRenderSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(kind:content:heading:)`

Creates a new content section

``` swift
public init(kind: RenderSectionKind, content: [RenderBlockContent], heading: String? = nil) 
```

#### Parameters

  - kind: The kind of the new section.
  - content: Arbitrary rendering content.
  - heading: A heading to use for the new section.

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
public let kind: RenderSectionKind
```

### `content`

Arbitrary content for this section.

``` swift
public var content: [RenderBlockContent]
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
