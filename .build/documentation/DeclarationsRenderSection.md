# DeclarationsRenderSection

A compound section that contains a list of declaration sections.

``` swift
public struct DeclarationsRenderSection: RenderSection, Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`, [`TextIndexing`](/TextIndexing), [`RenderSection`](/RenderSection)

## Initializers

### `init(declarations:)`

Creates a new declarations section.

``` swift
public init(declarations: [DeclarationRenderSection]) 
```

#### Parameters

  - declarations: The list of declaration sections to include.

## Properties

### `title`

The section title, by default `nil`.

``` swift
public static var title: String? = nil
```

### `kind`

``` swift
public var kind: RenderSectionKind = .declarations
```

### `declarations`

The list of declaration sections.

``` swift
public var declarations: [DeclarationRenderSection]
```

### `headings`

``` swift
public var headings: [String] 
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
