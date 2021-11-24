# DuplicateTopicsSections

A `Document` may only have one level-2 "Topics" heading at the top level, since it serves as structured data for a documentation bundle's hierarchy.

``` swift
public struct DuplicateTopicsSections: Checker 
```

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(sourceFile:)`

Creates a new checker that detects documents with multiple "Topics" sections.

``` swift
public init(sourceFile: URL?) 
```

#### Parameters

  - sourceFile: The URL to the documentation file that the checker checks.

## Properties

### `foundTopicsHeadings`

The list of level-2 headings with the text "Topics" found in the document.

``` swift
public var foundTopicsHeadings 
```

### `problems`

``` swift
public var problems: [Problem] 
```

## Methods

### `visitHeading(_:)`

``` swift
public mutating func visitHeading(_ heading: Heading) 
```
