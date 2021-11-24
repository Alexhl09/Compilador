# RenderHierarchyTutorial

A hierarchy tree node that represents a tutorial or a tutorial article.

``` swift
public struct RenderHierarchyTutorial: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(identifier:)`

Creates a new tutorial or tutorial article.

``` swift
public init(identifier: RenderReferenceIdentifier) 
```

#### Parameters

  - identifier: The topic reference.

## Properties

### `reference`

The topic reference.

``` swift
public var reference: RenderReferenceIdentifier
```

### `landmarks`

The landmarks on the page.

``` swift
public var landmarks: [RenderHierarchyLandmark] = []
```
