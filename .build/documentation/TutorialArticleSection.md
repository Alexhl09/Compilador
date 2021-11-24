# TutorialArticleSection

A Tutorial Article section.

``` swift
public struct TutorialArticleSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

### `init(content:)`

Creates a tutorial article section from a given list
of content layout items.

``` swift
public init(content: [ContentLayout]) 
```

#### Parameters

  - content: The content for this section.

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public let kind: RenderSectionKind = .articleBody
```

### `content`

The contents of the Tutorial Article.

``` swift
public var content: [ContentLayout] = []
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```
