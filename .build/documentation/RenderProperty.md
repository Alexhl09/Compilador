# RenderProperty

A named property with a declaration-style type, content, and
an optional list of attributes.

``` swift
public struct RenderProperty: Codable, TextIndexing, Equatable 
```

## Inheritance

`Codable`, `Equatable`, [`TextIndexing`](/TextIndexing)

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `name`

The name of the property.

``` swift
public let name: String
```

### `type`

The list of possible type declarations for the property's value.

``` swift
public let type: [DeclarationRenderSection.Token]
```

### `typeDetails`

The list of possible type declarations for the property's value including additional details, if available.

``` swift
public let typeDetails: [TypeDetails]?
```

### `content`

Additional details about the property, if available.

``` swift
public let content: [RenderBlockContent]?
```

### `attributes`

Additional list of attributes, if any.

``` swift
public let attributes: [RenderAttribute]?
```

### `mimeType`

A mime-type associated with the property, if applicable.

``` swift
public let mimeType: String?
```

### `required`

If true, the property is required in its containing context.

``` swift
public var required: Bool? = false
```

### `deprecated`

If true, the property is deprecated.

``` swift
public var deprecated: Bool? = false
```

### `introducedVersion`

A version of the platform that first introduced the property, if known.

``` swift
public var introducedVersion: String?
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
