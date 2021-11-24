# PropertiesRenderSection

A section that contains a list of properties.

``` swift
public struct PropertiesRenderSection: RenderSection 
```

Group `RenderProperty` properties in this section.

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(title:items:)`

Creates a new property-list section.

``` swift
public init(title: String, items: [RenderProperty]) 
```

#### Parameters

  - title: The title for this section.
  - items: The list of properties.

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
public var kind: RenderSectionKind = .properties
```

### `title`

The title for this section.

``` swift
public let title: String
```

### `items`

The list of properties.

``` swift
public let items: [RenderProperty]
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
