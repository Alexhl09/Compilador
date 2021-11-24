# BundleData

The data associated with a documentation resource, for a specific trait collection.

``` swift
public struct BundleData 
```

## Initializers

### `init(url:traitCollection:)`

Creates a bundle data value given its location and an associated trait collection.

``` swift
public init(url: URL, traitCollection: DataTraitCollection?) 
```

#### Parameters

  - url: The location of the resource in the documentation bundle.
  - traitCollection: An optional trait collection associated with the resource.

## Properties

### `url`

The location of the resource.

``` swift
public var url: URL
```

### `traitCollection`

The trait collection associated with the resource.

``` swift
public var traitCollection: DataTraitCollection?
```
