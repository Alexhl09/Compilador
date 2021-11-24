# AbstractSection

A one-paragraph section that represents a symbol's abstract description.

``` swift
public struct AbstractSection: Section 
```

## Inheritance

[`Section`](/Section)

## Initializers

### `init(paragraph:)`

Creates a new section with the given paragraph.

``` swift
public init(paragraph: Paragraph) 
```

## Properties

### `title`

``` swift
public static var title: String? 
```

### `content`

``` swift
public var content: [Markup] 
```

### `paragraph`

The section content as a paragraph.

``` swift
public var paragraph: Paragraph
```
