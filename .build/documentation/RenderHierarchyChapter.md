# RenderHierarchyChapter

A hierarchy tree node that represents a chapter in a tutorial series.

``` swift
public struct RenderHierarchyChapter: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(identifier:)`

Creates a new hierarchy chapter.

``` swift
public init(identifier: RenderReferenceIdentifier) 
```

#### Parameters

  - identifier: The topic reference for the chapter.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `reference`

The topic reference for the chapter.

``` swift
public var reference: RenderReferenceIdentifier
```

### `tutorials`

The tutorials in the chapter.

``` swift
public var tutorials: [RenderHierarchyTutorial] = []
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
