# ImageReference

A reference to an image.

``` swift
public struct ImageReference: MediaReference, URLReference 
```

## Inheritance

[`MediaReference`](/MediaReference), [`URLReference`](/URLReference)

## Initializers

### `init(identifier:altText:imageAsset:)`

Creates a new image reference.

``` swift
public init(identifier: RenderReferenceIdentifier, altText: String? = nil, imageAsset asset: DataAsset) 
```

#### Parameters

  - identifier: The identifier for this image reference.
  - altText: Alternate text for the image.
  - asset: The data associated with this asset, including its variants.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `type`

The type of this image reference.

``` swift
public var type: RenderReferenceType = .image
```

This value is always `.image`.

### `identifier`

The identifier of this reference.

``` swift
public var identifier: RenderReferenceIdentifier
```

### `altText`

Alternate text for the image.

``` swift
public var altText: String?
```

This text helps screen-readers describe the image.

### `asset`

The data associated with this asset, including its variants.

``` swift
public var asset: DataAsset
```

### `baseURL`

The relative URL to the folder that contains all images in the built documentation output.

``` swift
public static let baseURL = URL(string: "/images/")!
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
