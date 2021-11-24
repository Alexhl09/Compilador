# ParametersRenderSection

A section that contains a list of parameters.

``` swift
public struct ParametersRenderSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(parameters:)`

Creates a new parameters section with the given list.

``` swift
public init(parameters: [ParameterRenderSection]) 
```

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .parameters
```

### `parameters`

The list of parameter sub-sections.

``` swift
public let parameters: [ParameterRenderSection]
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
