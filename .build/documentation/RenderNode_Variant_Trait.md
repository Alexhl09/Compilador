# RenderNode.Variant.Trait

A trait describing an aspect of the render variant.

``` swift
public enum Trait: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `interfaceLanguage`

Presentation language (e.g. Swift or Obj-C).

``` swift
case interfaceLanguage(String)
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
