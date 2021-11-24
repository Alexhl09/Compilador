# AssetReference

A reference to an asset.

``` swift
public struct AssetReference: Hashable, Codable 
```

## Inheritance

`Codable`, `Hashable`

## Initializers

### `init(assetName:bundleIdentifier:)`

Creates a reference from a given asset name and the bundle it is apart of.

``` swift
public init(assetName: String, bundleIdentifier: String) 
```

## Properties

### `assetName`

The name of the asset.

``` swift
public var assetName: String
```

### `bundleIdentifier`

The identifier of the bundle the asset is apart of.

``` swift
public var bundleIdentifier: String
```

## Methods

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```
