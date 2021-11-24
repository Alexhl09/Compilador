# Transformer

Transformer class that contains all matrices and is responsible for transforming values into pixels on the screen and backwards.

``` swift
@objc(ChartTransformer)
open class Transformer: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init(viewPortHandler:)`

``` swift
@objc public init(viewPortHandler: ViewPortHandler)
```

## Properties

### `valueToPixelMatrix`

``` swift
@objc open var valueToPixelMatrix: CGAffineTransform
```

### `pixelToValueMatrix`

``` swift
@objc open var pixelToValueMatrix: CGAffineTransform
```

## Methods

### `prepareMatrixValuePx(chartXMin:deltaX:deltaY:chartYMin:)`

Prepares the matrix that transforms values to pixels. Calculates the scale factors from the charts size and offsets.

``` swift
@objc open func prepareMatrixValuePx(chartXMin: Double, deltaX: CGFloat, deltaY: CGFloat, chartYMin: Double)
```

### `prepareMatrixOffset(inverted:)`

Prepares the matrix that contains all offsets.

``` swift
@objc open func prepareMatrixOffset(inverted: Bool)
```

### `pointValuesToPixel(_:)`

Transform an array of points with all matrices.

``` swift
open func pointValuesToPixel(_ points: inout [CGPoint])
```

### `pointValueToPixel(_:)`

``` swift
open func pointValueToPixel(_ point: inout CGPoint)
```

### `pixelForValues(x:y:)`

``` swift
@objc open func pixelForValues(x: Double, y: Double) -> CGPoint
```

### `rectValueToPixel(_:)`

Transform a rectangle with all matrices.

``` swift
open func rectValueToPixel(_ r: inout CGRect)
```

### `rectValueToPixel(_:phaseY:)`

Transform a rectangle with all matrices with potential animation phases.

``` swift
open func rectValueToPixel(_ r: inout CGRect, phaseY: Double)
```

### `rectValueToPixelHorizontal(_:)`

Transform a rectangle with all matrices.

``` swift
open func rectValueToPixelHorizontal(_ r: inout CGRect)
```

### `rectValueToPixelHorizontal(_:phaseY:)`

Transform a rectangle with all matrices with potential animation phases.

``` swift
open func rectValueToPixelHorizontal(_ r: inout CGRect, phaseY: Double)
```

### `rectValuesToPixel(_:)`

transforms multiple rects with all matrices

``` swift
open func rectValuesToPixel(_ rects: inout [CGRect])
```

### `pixelsToValues(_:)`

Transforms the given array of touch points (pixels) into values on the chart.

``` swift
open func pixelsToValues(_ pixels: inout [CGPoint])
```

### `pixelToValues(_:)`

Transforms the given touch point (pixels) into a value on the chart.

``` swift
open func pixelToValues(_ pixel: inout CGPoint)
```

### `valueForTouchPoint(_:)`

``` swift
@objc open func valueForTouchPoint(_ point: CGPoint) -> CGPoint
```

  - Returns: The x and y values in the chart at the given touch point
    (encapsulated in a CGPoint). This method transforms pixel coordinates to
    coordinates / values in the chart.

### `valueForTouchPoint(x:y:)`

``` swift
@objc open func valueForTouchPoint(x: CGFloat, y: CGFloat) -> CGPoint
```

  - Returns: The x and y values in the chart at the given touch point
    (x/y). This method transforms pixel coordinates to
    coordinates / values in the chart.
