# PossibleValuesRenderSection

A section that lists a pre-defined list of possible values for a given symbol.

``` swift
public struct PossibleValuesRenderSection: RenderSection 
```

For example, a property list key setting a target platform has allowed values of: "ppc", "i386", and "arm".

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(title:values:)`

Creates a new possible values section.

``` swift
public init(title: String, values: [NamedValue]) 
```

#### Parameters

  - title: The section title.
  - values: The list of values for this section.

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
public var kind: RenderSectionKind = .possibleValues
```

### `title`

The title for the section, `nil` by default.

``` swift
public let title: String?
```

### `values`

The list of named values.

``` swift
public let values: [NamedValue]
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
