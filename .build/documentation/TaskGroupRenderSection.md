# TaskGroupRenderSection

A task group section that contains links to other symbols.

``` swift
public struct TaskGroupRenderSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(title:abstract:discussion:identifiers:generated:)`

Creates a new task group.

``` swift
public init(title: String?, abstract: [RenderInlineContent]?, discussion: RenderSection?, identifiers: [String], generated: Bool = false) 
```

#### Parameters

  - title: An optional title for the section.
  - abstract: An optional abstract summary for the section.
  - discussion: An optional discussion for the section.
  - identifiers: A list of topic-graph references.
  - generated: If `true`, this is an automatically generated group. If `false`, this is an authored group.

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
public let kind: RenderSectionKind = .taskGroup
```

### `title`

An optional title for the section.

``` swift
public let title: String?
```

### `abstract`

An optional abstract summary for the section.

``` swift
public let abstract: [RenderInlineContent]?
```

### `discussion`

An optional discussion for the section.

``` swift
public let discussion: RenderSection?
```

### `identifiers`

A list of topic graph references.

``` swift
public let identifiers: [String]
```

### `generated`

If true, this is an automatically generated group. If false, this is an authored group.

``` swift
public let generated: Bool
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
