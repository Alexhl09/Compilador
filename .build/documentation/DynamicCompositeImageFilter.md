# DynamicCompositeImageFilter

The `DynamicCompositeImageFilter` class is a composite image filter based on a specified array of filters.

``` swift
public struct DynamicCompositeImageFilter: CompositeImageFilter 
```

## Inheritance

[`CompositeImageFilter`](/CompositeImageFilter)

## Initializers

### `init(_:)`

Initializes the `DynamicCompositeImageFilter` instance with the given filters.

``` swift
public init(_ filters: [ImageFilter]) 
```

#### Parameters

  - filters: The filters taking part in the composite image filter.

#### Returns

The new `DynamicCompositeImageFilter` instance.

### `init(_:)`

Initializes the `DynamicCompositeImageFilter` instance with the given filters.

``` swift
public init(_ filters: ImageFilter...) 
```

#### Parameters

  - filters: The filters taking part in the composite image filter.

#### Returns

The new `DynamicCompositeImageFilter` instance.

## Properties

### `filters`

The image filters to apply to the image in sequential order.

``` swift
public let filters: [ImageFilter]
```
