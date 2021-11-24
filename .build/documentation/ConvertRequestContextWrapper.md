# ConvertRequestContextWrapper

A wrapper type that adds contextual information relating to a convert request.

``` swift
public struct ConvertRequestContextWrapper<Payload: Codable>: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(convertRequestIdentifier:payload:)`

Creates a convert request context wrapper given the convert request's identifier and a payload.

``` swift
public init(convertRequestIdentifier: String?, payload: Payload) 
```

## Properties

### `convertRequestIdentifier`

The identifier of the convert request associated with this payload.

``` swift
public var convertRequestIdentifier: String?
```

### `payload`

The original payload.

``` swift
public var payload: Payload
```
