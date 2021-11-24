# RESTEndpointRenderSection.Token

A single token in a REST endpoint.

``` swift
public struct Token: Codable 
```

## Inheritance

`Codable`

## Properties

### `kind`

The endpoint specific token kind.

``` swift
public let kind: Kind
```

### `text`

The plain text of the token.

``` swift
public let text: String
```
