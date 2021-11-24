# Layout

Possible layouts for certain containers of markup content.

``` swift
public enum Layout: String, CaseIterable, Codable, DirectiveArgumentValueConvertible 
```

## Inheritance

`CaseIterable`, `Codable`, [`DirectiveArgumentValueConvertible`](/DirectiveArgumentValueConvertible), `String`

## Initializers

### `init?(rawDirectiveArgumentValue:)`

``` swift
public init?(rawDirectiveArgumentValue: String) 
```

## Enumeration Cases

### `horizontal`

A container split vertically into a left and right section.

``` swift
case horizontal
```

### `vertical`

A container split horizontally into a top and bottom section.

``` swift
case vertical
```

## Properties

### `description`

``` swift
public var description: String 
```
