# ImageRequestCache

The `ImageRequestCache` protocol extends the `ImageCache` protocol by adding methods for adding, removing and
fetching images from a cache given an `URLRequest` and additional identifier.

``` swift
public protocol ImageRequestCache: ImageCache 
```

## Inheritance

[`ImageCache`](/ImageCache)

## Requirements

### add(\_:​for:​withIdentifier:​)

Adds the image to the cache using an identifier created from the request and identifier.

``` swift
func add(_ image: Image, for request: URLRequest, withIdentifier identifier: String?)
```

### removeImage(for:​withIdentifier:​)

Removes the image from the cache using an identifier created from the request and identifier.

``` swift
func removeImage(for request: URLRequest, withIdentifier identifier: String?) -> Bool
```

### image(for:​withIdentifier:​)

Returns the image from the cache associated with an identifier created from the request and identifier.

``` swift
func image(for request: URLRequest, withIdentifier identifier: String?) -> Image?
```
