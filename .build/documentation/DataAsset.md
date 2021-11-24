# DataAsset

A container for a collection of data that represent multiple ways to describe a single asset.

``` swift
public struct DataAsset: Codable 
```

Assets can be media files, source code files, or files for download.
A `DataAsset` instance represents one bundle asset, which might be represented by multiple files. For example, a single image
asset might have a light and dark variants, and 1x, 2x, and 3x image sizes.

Each variant of an asset is identified by a `DataTraitCollection` and represents the best asset file for the given
combination of traits, e.g. a 2x scale image when rendered for Dark Mode.

## Topics

### Asset Traits

  - `DisplayScale`

  - `UserInterfaceStyle`

## Inheritance

`Codable`

## Initializers

### `init()`

Creates an empty asset.

``` swift
public init() 
```

## Properties

### `variants`

The variants associated with the resource.

``` swift
public var variants 
```

An asset can have multiple variants which you can use in different environments.
For example, an image asset can have distinct light and dark variants, so a renderer can select the appropriate variant
depending on the system's appearance.

### `context`

The context in which you intend to use the data asset.

``` swift
public var context = Context.display
```

## Methods

### `register(_:with:)`

Registers a variant of the asset.

``` swift
public mutating func register(_ url: URL, with traitCollection: DataTraitCollection) 
```

#### Parameters

  - url: The location of the variant.
  - traitCollection: The trait collection associated with the variant.

### `data(with:)`

Returns the data that is registered to the data asset that best matches the given trait collection.

``` swift
@available(*, deprecated, renamed: "data(bestMatching:)")
    public func data(with traitCollection: DataTraitCollection) -> BundleData 
```

### `data(bestMatching:)`

Returns the data that is registered to the data asset that best matches the given trait collection.

``` swift
public func data(bestMatching traitCollection: DataTraitCollection) -> BundleData 
```

If no variant with the exact given trait collection is found, the variant that has the largest trait collection overlap with the
provided one is returned.
