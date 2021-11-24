# RenderAttribute

A single renderable attribute.

``` swift
public enum RenderAttribute: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `` `default` ``

A default value, for example `none`.

``` swift
case `default`(String)
```

### `minimum`

A minimum value, for example `1.0`.

``` swift
case minimum(String)
```

### `minimumExclusive`

A minimum value (excluding the given one) for example `1.0`.

``` swift
case minimumExclusive(String)
```

### `maximum`

A maximum value, for example `10.0`.

``` swift
case maximum(String)
```

### `maximumExclusive`

A maximum value (excluding the given one), for example `10.0`.

``` swift
case maximumExclusive(String)
```

### `allowedValues`

A list of allowed values, for example `none`, `some`, and `all`.

``` swift
case allowedValues([String])
```

### `allowedTypes`

A list of allowed type declarations for the value being described,
for example `String`, `Int`, and `Double`.

``` swift
case allowedTypes([[DeclarationRenderSection.Token]])
```

## Properties

### `headings`

``` swift
public var headings: [String] 
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
