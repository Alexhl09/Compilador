# CompositeImageFilter

The `CompositeImageFilter` protocol defines an additional `filters` property to support multiple composite filters.

``` swift
public protocol CompositeImageFilter: ImageFilter 
```

## Inheritance

[`ImageFilter`](/ImageFilter)

## Default Implementations

### `identifier`

The unique idenitifier for any `CompositeImageFilter` type.

``` swift
var identifier: String 
```

### `filter`

The filter closure for any `CompositeImageFilter` type.

``` swift
var filter: (Image) -> Image 
```

## Requirements

### filters

The image filters to apply to the image in sequential order.

``` swift
var filters: [ImageFilter] 
```
