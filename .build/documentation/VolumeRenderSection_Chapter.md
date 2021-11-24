# VolumeRenderSection.Chapter

A group in a volume.

``` swift
public struct Chapter: Codable, TextIndexing 
```

## Inheritance

`Codable`, [`TextIndexing`](/TextIndexing)

## Initializers

### `init(name:)`

Creates a new chapter with the given name.

``` swift
public init(name: String?) 
```

#### Parameters

  - name: The name of the chapter.

## Properties

### `name`

The name of the chapter.

``` swift
public var name: String?
```

### `content`

An abstract describing the chapter.

``` swift
public var content: [RenderBlockContent] = []
```

### `tutorials`

The (ordered) tutorials in a chapter.

``` swift
public var tutorials: [RenderReferenceIdentifier] = []
```

### `image`

An image for the chapter.

``` swift
public var image: RenderReferenceIdentifier?
```

### `headings`

``` swift
public var headings: [String] 
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```
