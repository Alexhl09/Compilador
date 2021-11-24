# RenderHierarchyLandmark

A hierarchy tree node that represents a landmark on a page.

``` swift
public struct RenderHierarchyLandmark: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(reference:kind:)`

Creates a new hierarchy landmark.

``` swift
public init(reference: RenderReferenceIdentifier, kind: Kind) 
```

#### Parameters

  - reference: The topic reference for the landmark.
  - kind: The kind of landmark.

## Properties

### `reference`

The topic reference for the landmark.

``` swift
public var reference: RenderReferenceIdentifier
```

### `kind`

The kind of landmark.

``` swift
public var kind: Kind
```
