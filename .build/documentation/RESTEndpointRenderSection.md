# RESTEndpointRenderSection

A section that contains a REST API endpoint.

``` swift
public struct RESTEndpointRenderSection: RenderSection 
```

This section is similar to `DeclarationRenderSection` for symbols and
describes a tokenized endpoint for a REST API. The token list starts with
an HTTP method token followed by tokens for the complete endpoint URL. Any path
components that are dynamic instead of fixed are represented with a parameter name
enclosed in curly brackets.

A complete token representation for the endpoint `GET https://www.example.com/api/artists/{id}`
is (the token kind is in brackets):

  - (method) `GET`

  - (baseURL) `https://www.example.com`

  - (path) `/api/artists/`

  - (parameter) `{id}`

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(title:tokens:)`

Creates a new REST endpoint section.

``` swift
public init(title: String, tokens: [Token]) 
```

#### Parameters

  - title: The title for the section.
  - tokens: The list of tokens.

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .restEndpoint
```

### `title`

The title for the section.

``` swift
public let title: String
```

### `tokens`

The list of tokens.

``` swift
public let tokens: [Token]
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
