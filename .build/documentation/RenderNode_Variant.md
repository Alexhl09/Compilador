# RenderNode.Variant

A render node variant based on a collection of pre-defined traits.

``` swift
public struct Variant: Codable, Equatable 
```

A variant features a collection of traits and a path where the variant can be found.
When rendered as JSON, the data looks like this:

``` json
{
  "traits" : [
    { "interfaceLanguge": "swift" }
  ],
  "paths" : ["/path/to/variant"]
}
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(traits:paths:)`

``` swift
public init(traits: [Trait], paths: [String]) 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `traits`

Collection of traits identifying the variant.

``` swift
public var traits: [Trait]
```

### `paths`

The paths to the variant.

``` swift
public var paths: [String]
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
