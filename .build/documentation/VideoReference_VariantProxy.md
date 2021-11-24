# VideoReference.VariantProxy

A codable proxy value that the video reference uses to serialize information about its asset variants.

``` swift
public struct VariantProxy: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `url`

The URL to the file for this video variant.

``` swift
public var url: URL
```

### `traits`

The traits of this video reference.

``` swift
public var traits: [String]
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
