# TypeDetails

A type's details, including whether it's an array, and optionally the element's type.

``` swift
public struct TypeDetails: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Properties

### `baseType`

A base type name.

``` swift
public var baseType: String?
```

The plain text name of a symbol's base type. For example, `Int` for an array of integers.

### `arrayMode`

If true, the type is an array.

``` swift
public var arrayMode: Bool? = false
```
