# ImageCache

The `ImageCache` protocol defines a set of APIs for adding, removing and fetching images from a cache.

``` swift
public protocol ImageCache 
```

## Requirements

### add(\_:​withIdentifier:​)

Adds the image to the cache with the given identifier.

``` swift
func add(_ image: Image, withIdentifier identifier: String)
```

### removeImage(withIdentifier:​)

Removes the image from the cache matching the given identifier.

``` swift
func removeImage(withIdentifier identifier: String) -> Bool
```

### removeAllImages()

Removes all images stored in the cache.

``` swift
@discardableResult
    func removeAllImages() -> Bool
```

### image(withIdentifier:​)

Returns the image in the cache associated with the given identifier.

``` swift
func image(withIdentifier identifier: String) -> Image?
```
