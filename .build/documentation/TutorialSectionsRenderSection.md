# TutorialSectionsRenderSection

A section of a Tutorial page.

``` swift
public struct TutorialSectionsRenderSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(sections:)`

Creates a new section for a tutorial from a list of child sections.

``` swift
public init(sections: [Section]) 
```

#### Parameters

  - sections: A list of child sections.

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .tasks
```

### `tasks`

The tasks in the section.

``` swift
public var tasks: [Section]
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```

### `indexingRecords(onPage:references:)`

``` swift
public func indexingRecords(onPage page: ResolvedTopicReference, references: [String: RenderReference]) throws -> [IndexingRecord] 
```
