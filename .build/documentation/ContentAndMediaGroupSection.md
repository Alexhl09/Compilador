# ContentAndMediaGroupSection

A section that groups content and media sections.

``` swift
public struct ContentAndMediaGroupSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(sections:)`

Creates a group of content and media sections.

``` swift
public init(sections: [ContentAndMediaSection]) 
```

> 

> 

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .contentAndMediaGroup
```

### `layout`

The layout direction of all content and media sections in this group.

``` swift
public var layout: ContentAndMediaSection.Layout?
```

### `sections`

The content and media sections in this group.

``` swift
public var sections: [ContentAndMediaSection]
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```
