# DownloadReference

A reference to a resource that can be downloaded.

``` swift
public struct DownloadReference: RenderReference, URLReference 
```

## Inheritance

[`RenderReference`](/RenderReference), [`URLReference`](/URLReference)

## Initializers

### `init(identifier:renderURL:sha512Checksum:)`

Creates a new reference to a downloadable resource.

``` swift
public init(identifier: RenderReferenceIdentifier, renderURL url: URL, sha512Checksum: String) 
```

#### Parameters

  - identifier: An identifier for the resource's reference.
  - url: The path to the resource.
  - sha512Checksum: The SHA512 hash value for the resource.

## Properties

### `locationName`

The name you use for the directory that contains download items.

``` swift
public static let locationName = "downloads"
```

This is the name of the directory within the generated build folder
that contains downloads.

### `baseURL`

``` swift
public static var baseURL = URL(string: "/\(locationName)/")!
```

### `type`

``` swift
public var type: RenderReferenceType = .download
```

### `identifier`

``` swift
public var identifier: RenderReferenceIdentifier
```

### `url`

The location of the downloadable resource.

``` swift
public var url: URL
```

### `sha512Checksum`

The SHA512 hash value for the resource.

``` swift
public var sha512Checksum: String
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
