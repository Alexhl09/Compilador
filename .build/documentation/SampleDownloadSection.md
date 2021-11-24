# SampleDownloadSection

A section that contains download data for a sample project.

``` swift
public struct SampleDownloadSection: RenderSection 
```

The `action` property is the reference to the file for download, e.g., `sample.zip`.

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(action:)`

Creates a new sample project download section.

``` swift
public init(action: RenderInlineContent) 
```

#### Parameters

  - action: The call to action in the section.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .sampleDownload
```

### `action`

The call to action in the section.

``` swift
public var action: RenderInlineContent
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
