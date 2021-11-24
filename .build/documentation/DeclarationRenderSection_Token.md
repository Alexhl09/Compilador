# DeclarationRenderSection.Token

A lexical token to use in declarations.

``` swift
public struct Token: Codable, Hashable 
```

A lexical token is a string with an associated meaning in source code.
For example, `123` is represented as a single token of kind "number".

## Inheritance

`Codable`, `Hashable`

## Initializers

### `init(text:kind:identifier:preciseIdentifier:)`

Creates a new declaration token with optional identifier and precise identifier.

``` swift
public init(text: String, kind: Kind, identifier: String? = nil, preciseIdentifier: String? = nil) 
```

#### Parameters

  - text: The text content of the token.
  - kind: The kind of the token.
  - identifier: If the token refers to a known symbol, its identifier.
  - preciseIdentifier: If the refers to a symbol, its precise identifier.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `text`

The token text content.

``` swift
public let text: String
```

### `kind`

The token programming kind.

``` swift
public let kind: Kind
```

### `identifier`

If the token is a known symbol, its identifier.

``` swift
public let identifier: String?
```

This value can be used to look up more information in the render node's `RenderNode/references` object.

### `preciseIdentifier`

If the token is a known symbol, its precise identifier as vended in the symbol graph.

``` swift
public let preciseIdentifier: String?
```

### `reference`

The token's identifier, if that token is a known symbol.

``` swift
@available(*, deprecated, renamed: "identifier", message: "Please use identifier instead")
        public var reference: String? 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
