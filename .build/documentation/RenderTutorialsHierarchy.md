# RenderTutorialsHierarchy

A root node of a tutorials series hierarchy.

``` swift
public struct RenderTutorialsHierarchy 
```

## Inheritance

`Codable`

## Initializers

### `init(reference:paths:)`

Creates a new root hierarchy node.

``` swift
public init(reference: RenderReferenceIdentifier, paths: [[String]]) 
```

#### Parameters

  - reference: The topic reference.
  - paths: The paths to the current node.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `reference`

The topic reference for the landing page.

``` swift
public var reference: RenderReferenceIdentifier
```

### `modules`

The chapters of the technology.

``` swift
public var modules: [RenderHierarchyChapter]?
```

### `paths`

The paths to the current node.

``` swift
public var paths: [[String]]
```

A list of render reference identifiers.

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
