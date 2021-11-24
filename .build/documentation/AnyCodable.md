# AnyCodable

A type-erased codable value.

``` swift
public struct AnyCodable: Codable, CustomDebugStringConvertible 
```

An `AnyCodable` value forwards encoding and decoding operations to the underlying base.

## Inheritance

`Codable`, `CustomDebugStringConvertible`

## Initializers

### `init(_:)`

Creates a codable value that wraps the given base.

``` swift
public init(_ encodable: Encodable) 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `value`

The base encodable value.

``` swift
public var value: Encodable
```

### `debugDescription`

``` swift
public var debugDescription: String 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
