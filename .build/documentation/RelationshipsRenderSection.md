# RelationshipsRenderSection

A section that contains a list of symbol relationships of the same kind.

``` swift
public struct RelationshipsRenderSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(type:title:identifiers:)`

Creates a new relationships section.

``` swift
public init(type: String, title: String, identifiers: [String]) 
```

#### Parameters

  - type: The type of relationships in that section, for example, "Conforms To".
  - title: The title for this section.
  - identifiers: The list of related symbol references.

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
public let kind: RenderSectionKind = .relationships
```

### `title`

A title for the section.

``` swift
public let title: String
```

### `identifiers`

A list of references to the symbols that are related to the symbol.

``` swift
public let identifiers: [String]
```

### `type`

The type of relationship, e.g., "Conforms To".

``` swift
public let type: String
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
