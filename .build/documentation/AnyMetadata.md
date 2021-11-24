# AnyMetadata

A type-erasing container for metadata.

``` swift
public struct AnyMetadata 
```

## Inheritance

`Codable`, `CustomDebugStringConvertible`

## Initializers

### `init(_:)`

``` swift
public init(_ value: Any) 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `value`

The metadata value.

``` swift
public var value: Any
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
