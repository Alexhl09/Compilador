# RenderContentMetadata

Additional metadata that might belong to a content element.

``` swift
public struct RenderContentMetadata: Equatable, Codable 
```

## Inheritance

`Codable`, `Equatable`

## Properties

### `anchor`

An optional named anchor to the current element.

``` swift
public var anchor: String?
```

### `title`

An optional custom title.

``` swift
public var title: String?
```

### `abstract`

An optional custom abstract.

``` swift
public var abstract: [RenderInlineContent]?
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
