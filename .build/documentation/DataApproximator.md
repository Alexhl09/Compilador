# DataApproximator

``` swift
@objc(ChartDataApproximator)
open class DataApproximator: NSObject
```

## Inheritance

`NSObject`

## Methods

### `reduceWithDouglasPeukerN(_:resultCount:)`

uses the douglas peuker algorithm to reduce the given arraylist of entries to given number of points
More algorithm details here - http:​//psimpl.sourceforge.net/douglas-peucker.html

``` swift
@objc open class func reduceWithDouglasPeukerN(_ points: [CGPoint], resultCount: Int) -> [CGPoint]
```

### `reduceWithDouglasPeuker(_:tolerance:)`

uses the douglas peuker algorithm to reduce the given arraylist of entries

``` swift
@objc open class func reduceWithDouglasPeuker(_ points: [CGPoint], tolerance: CGFloat) -> [CGPoint]
```

### `reduceWithDouglasPeuker(points:tolerance:start:end:keep:)`

apply the Douglas-Peucker-Reduction to an array of `CGPoint`s with a given tolerance

``` swift
open class func reduceWithDouglasPeuker(
        points: [CGPoint],
        tolerance: CGFloat,
        start: Int,
        end: Int,
        keep: inout [Bool])
```

#### Parameters

  - points:
  - tolerance:
  - start:
  - end:
