# AttributesRenderSection

A section that contains a list of attributes.

``` swift
public struct AttributesRenderSection: RenderSection, Equatable 
```

## Inheritance

`Equatable`, [`RenderSection`](/RenderSection)

## Initializers

### `init(title:attributes:)`

Creates a new attributes section.

``` swift
public init(title: String, attributes: [RenderAttribute]) 
```

#### Parameters

  - title: The section title.
  - attributes: The list of attributes.

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
public var kind: RenderSectionKind = .attributes
```

### `title`

The section title.

``` swift
public let title: String
```

### `attributes`

The list of attributes in this section.

``` swift
public let attributes: [RenderAttribute]?
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
