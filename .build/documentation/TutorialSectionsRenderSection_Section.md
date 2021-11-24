# TutorialSectionsRenderSection.Section

A render-friendly representation of a tutorial section.

``` swift
public struct Section: TextIndexing 
```

## Inheritance

`Codable`, [`TextIndexing`](/TextIndexing)

## Initializers

### `init(title:contentSection:stepsSection:anchor:)`

Creates a new section for a tutorial page.

``` swift
public init(title: String, contentSection: [ContentLayout], stepsSection: [RenderBlockContent], anchor: String) 
```

#### Parameters

  - title: The title of the section.
  - contentSection: The main content of the section.
  - stepsSection: A list of tutorial steps for this section.
  - anchor: An identifier for this tutorial section.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `title`

The title of the section.

``` swift
public var title: String
```

### `contentSection`

The content of this section.

``` swift
public var contentSection: [ContentLayout]
```

### `stepsSection`

A list of tutorial steps for this section.

``` swift
public var stepsSection: [RenderBlockContent]
```

### `anchor`

An identifier for this section.

``` swift
public var anchor: String
```

You can use this value to identify the section.
For example, a documentation renderer might use it to create direct links to this section.

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
