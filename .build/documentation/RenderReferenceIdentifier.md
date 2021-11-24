# RenderReferenceIdentifier

The identifier of a render reference.

``` swift
public struct RenderReferenceIdentifier: Codable, Hashable 
```

This structure wraps a string value to make handling of render identifiers more type safe and explicit.

## Inheritance

`Codable`, `Hashable`

## Initializers

### `init(_:)`

Creates a new render identifier.

``` swift
public init(_ identifier: String) 
```

#### Parameters

  - identifier: The string identifier to wrap.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

### `init(forExternalLink:)`

Creates a new render reference identifier, based on the path of the given external link.

``` swift
public init(forExternalLink linkDestination: String) 
```

This is not a unique identifier. If you create two render reference identifiers with the same external link destination, they are equal and interchangeable .

#### Parameters

  - linkDestination: The full path of the external link represented as a `String`.

## Properties

### `identifier`

The wrapped string identifier.

``` swift
public var identifier: String
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
