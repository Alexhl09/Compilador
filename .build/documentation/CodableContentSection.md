# CodableContentSection

A Codable container for reference pages sections.

``` swift
public struct CodableContentSection: Codable 
```

This allows decoding a `RenderSection` into its appropriate concrete type, based on the section's
`RenderSection/kind`.

## Inheritance

`Codable`

## Initializers

### `init(_:)`

Creates a codable content section from the given section.

``` swift
public init(_ section: RenderSection) 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
