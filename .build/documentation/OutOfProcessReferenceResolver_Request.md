# OutOfProcessReferenceResolver.Request

A request message to send to the external link resolver.

``` swift
public enum Request: Codable, CustomStringConvertible 
```

This can either be a request to resolve a topic URL or to resolve a symbol based on its precise identifier.

## Inheritance

`Codable`, `CustomStringConvertible`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `topic`

A request to resolve a topic URL

``` swift
case topic(URL)
```

### `symbol`

A request to resolve a symbol based on its precise identifier.

``` swift
case symbol(String)
```

### `asset`

A request to resolve an asset.

``` swift
case asset(AssetReference)
```

## Properties

### `description`

A plain text representation of the request message.

``` swift
public var description: String 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
