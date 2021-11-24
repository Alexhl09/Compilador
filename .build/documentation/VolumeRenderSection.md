# VolumeRenderSection

Represents a volume containing a grouped list of tutorials.

``` swift
public struct VolumeRenderSection: RenderSection 
```

## Inheritance

[`RenderSection`](/RenderSection)

## Initializers

### `init(name:)`

Creates a new volume with the given name.

``` swift
public init(name: String?) 
```

#### Parameters

  - name: The name of the volume.

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `kind`

``` swift
public var kind: RenderSectionKind = .volume
```

### `name`

The title of the volume section.

``` swift
public var name: String?
```

### `image`

An image for the volume.

``` swift
public var image: RenderReferenceIdentifier?
```

### `content`

Content that appears under the title of the chapters section.

``` swift
public var content: [RenderBlockContent]? = nil
```

### `chapters`

The chapters/groups in this section.

``` swift
public var chapters: [Chapter] = []
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String: RenderReference]) -> String 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
