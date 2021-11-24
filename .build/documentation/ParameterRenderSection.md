# ParameterRenderSection

A section that contains a single, named parameter.

``` swift
public struct ParameterRenderSection: Codable 
```

## Inheritance

`Codable`

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `name`

The parameter name.

``` swift
public let name: String
```

### `content`

Free-form content to provide information about the parameter.

``` swift
public var content: [RenderBlockContent]
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
