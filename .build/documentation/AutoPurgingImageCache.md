# AutoPurgingImageCache

The `AutoPurgingImageCache` in an in-memory image cache used to store images up to a given memory capacity. When
the memory capacity is reached, the image cache is sorted by last access date, then the oldest image is continuously
purged until the preferred memory usage after purge is met. Each time an image is accessed through the cache, the
internal access date of the image is updated.

``` swift
open class AutoPurgingImageCache: ImageRequestCache 
```

## Inheritance

[`ImageRequestCache`](/ImageRequestCache)

## Initializers

### `init(memoryCapacity:preferredMemoryUsageAfterPurge:)`

Initializes the `AutoPurgingImageCache` instance with the given memory capacity and preferred memory usage
after purge limit.

``` swift
public init(memoryCapacity: UInt64 = 100_000_000, preferredMemoryUsageAfterPurge: UInt64 = 60_000_000) 
```

Please note, the memory capacity must always be greater than or equal to the preferred memory usage after purge.

#### Parameters

  - memoryCapacity: The total memory capacity of the cache in bytes. `100 MB` by default.
  - preferredMemoryUsageAfterPurge: The preferred memory usage after purge in bytes. `60 MB` by default.

#### Returns

The new `AutoPurgingImageCache` instance.

## Properties

### `memoryUsage`

The current total memory usage in bytes of all images stored within the cache.

``` swift
open var memoryUsage: UInt64 
```

### `memoryCapacity`

The total memory capacity of the cache in bytes.

``` swift
public let memoryCapacity: UInt64
```

### `preferredMemoryUsageAfterPurge`

The preferred memory usage after purge in bytes. During a purge, images will be purged until the memory
capacity drops below this limit.

``` swift
public let preferredMemoryUsageAfterPurge: UInt64
```

## Methods

### `add(_:for:withIdentifier:)`

Adds the image to the cache using an identifier created from the request and optional identifier.

``` swift
open func add(_ image: Image, for request: URLRequest, withIdentifier identifier: String? = nil) 
```

#### Parameters

  - image: The image to add to the cache.
  - request: The request used to generate the image's unique identifier.
  - identifier: The additional identifier to append to the image's unique identifier.

### `add(_:withIdentifier:)`

Adds the image to the cache with the given identifier.

``` swift
open func add(_ image: Image, withIdentifier identifier: String) 
```

#### Parameters

  - image: The image to add to the cache.
  - identifier: The identifier to use to uniquely identify the image.

### `removeImage(for:withIdentifier:)`

Removes the image from the cache using an identifier created from the request and optional identifier.

``` swift
@discardableResult
    open func removeImage(for request: URLRequest, withIdentifier identifier: String?) -> Bool 
```

#### Parameters

  - request: The request used to generate the image's unique identifier.
  - identifier: The additional identifier to append to the image's unique identifier.

#### Returns

`true` if the image was removed, `false` otherwise.

### `removeImages(matching:)`

Removes all images from the cache created from the request.

``` swift
@discardableResult
    open func removeImages(matching request: URLRequest) -> Bool 
```

#### Parameters

  - request: The request used to generate the image's unique identifier.

#### Returns

`true` if any images were removed, `false` otherwise.

### `removeImage(withIdentifier:)`

Removes the image from the cache matching the given identifier.

``` swift
@discardableResult
    open func removeImage(withIdentifier identifier: String) -> Bool 
```

#### Parameters

  - identifier: The unique identifier for the image.

#### Returns

`true` if the image was removed, `false` otherwise.

### `removeAllImages()`

Removes all images stored in the cache.

``` swift
@discardableResult @objc
    open func removeAllImages() -> Bool 
```

#### Returns

`true` if images were removed from the cache, `false` otherwise.

### `image(for:withIdentifier:)`

Returns the image from the cache associated with an identifier created from the request and optional identifier.

``` swift
open func image(for request: URLRequest, withIdentifier identifier: String? = nil) -> Image? 
```

#### Parameters

  - request: The request used to generate the image's unique identifier.
  - identifier: The additional identifier to append to the image's unique identifier.

#### Returns

The image if it is stored in the cache, `nil` otherwise.

### `image(withIdentifier:)`

Returns the image in the cache associated with the given identifier.

``` swift
open func image(withIdentifier identifier: String) -> Image? 
```

#### Parameters

  - identifier: The unique identifier for the image.

#### Returns

The image if it is stored in the cache, `nil` otherwise.

### `imageCacheKey(for:withIdentifier:)`

Returns the unique image cache key for the specified request and additional identifier.

``` swift
open func imageCacheKey(for request: URLRequest, withIdentifier identifier: String?) -> String 
```

#### Parameters

  - request: The request.
  - identifier: The additional identifier.

#### Returns

The unique image cache key.
