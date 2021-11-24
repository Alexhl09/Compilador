# VideoReference

A reference to a video.

``` swift
public struct VideoReference: MediaReference, URLReference 
```

## Inheritance

[`MediaReference`](/MediaReference), [`URLReference`](/URLReference)

## Initializers

### `init(identifier:altText:videoAsset:poster:)`

Creates a new video reference.

``` swift
public init(identifier: RenderReferenceIdentifier, altText: String? = nil, videoAsset asset: DataAsset, poster: RenderReferenceIdentifier?) 
```

#### Parameters

  - identifier: The identifier for this video reference.
  - altText: Alternate text for the video.
  - asset: The data associated with this asset, including its variants.
  - poster: The reference to a poster image for this video.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `type`

The type of this video reference.

``` swift
public var type: RenderReferenceType = .video
```

This value is always `.video`.

### `identifier`

The identifier of this reference.

``` swift
public var identifier: RenderReferenceIdentifier
```

### `altText`

Alternate text for the video.

``` swift
public var altText: String?
```

This text helps screen readers describe the video.

### `asset`

The data associated with this asset, including its variants.

``` swift
public var asset: DataAsset
```

### `poster`

The reference to a poster image for this video.

``` swift
public var poster: RenderReferenceIdentifier?
```

### `baseURL`

The relative URL to the folder that contains all images in the built documentation output.

``` swift
public static let baseURL = URL(string: "/videos/")!
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
