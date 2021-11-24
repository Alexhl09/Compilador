# DynamicImageFilter

The `DynamicImageFilter` class simplifies custom image filter creation by using a trailing closure initializer.

``` swift
public struct DynamicImageFilter: ImageFilter 
```

## Inheritance

[`ImageFilter`](/ImageFilter)

## Initializers

### `init(_:filter:)`

Initializes the `DynamicImageFilter` instance with the specified identifier and filter closure.

``` swift
public init(_ identifier: String, filter: @escaping (Image) -> Image) 
```

#### Parameters

  - identifier: The unique identifier of the filter.
  - filter: A closure used to create an alternative representation of the given image.

#### Returns

The new `DynamicImageFilter` instance.

## Properties

### `identifier`

The string used to uniquely identify the image filter operation.

``` swift
public let identifier: String
```

### `filter`

A closure used to create an alternative representation of the given image.

``` swift
public let filter: (Image) -> Image
```
