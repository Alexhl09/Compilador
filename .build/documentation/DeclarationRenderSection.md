# DeclarationRenderSection

A section that contains a symbol declaration.

``` swift
public struct DeclarationRenderSection: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`, [`TextIndexing`](/TextIndexing)

## Initializers

### `init(languages:platforms:tokens:)`

Creates a new declaration section.

``` swift
public init(languages: [String]?, platforms: [PlatformName?], tokens: [Token]) 
```

#### Parameters

  - languages: The source languages to which this declaration applies.
  - platforms: The platforms to which this declaration applies.
  - tokens: The list of declaration tokens.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `platforms`

The platforms this declaration applies to.

``` swift
public let platforms: [PlatformName?]
```

### `tokens`

The list of declaration tokens that make up the declaration.

``` swift
public let tokens: [Token]
```

For example, the declaration "var x: Int?" is comprised of a:

  - "var" keyword token

  - " x: " string token

  - an "Int?" type-identifier token

### `languages`

The programming languages that this declaration uses.

``` swift
public let languages: [String]?
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
