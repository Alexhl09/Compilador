# UnresolvedRenderReference

A reference to another page which cannot be resolved.

``` swift
public struct UnresolvedRenderReference: RenderReference 
```

## Inheritance

[`RenderReference`](/RenderReference)

## Initializers

### `init(identifier:title:)`

Creates a new unresolved reference with a given identifier and title.

``` swift
public init(identifier: RenderReferenceIdentifier, title: String) 
```

#### Parameters

  - identifier: The identifier of this unresolved reference.
  - title: The title of this unresolved reference.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `type`

The type of this unresolvable reference.

``` swift
public var type: RenderReferenceType = .unresolvable
```

This value is always `.unresolvable`.

### `identifier`

The identifier of this unresolved reference.

``` swift
public var identifier: RenderReferenceIdentifier
```

### `title`

The title of this unresolved reference.

``` swift
public var title: String
```
