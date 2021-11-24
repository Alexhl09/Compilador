# ViewPortHandler

Class that contains information about the charts current viewport settings, including offsets, scale & translation levels, ...

``` swift
@objc(ChartViewPortHandler)
open class ViewPortHandler: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init(width:height:)`

Constructor - don't forget calling setChartDimens(...)

``` swift
@objc public init(width: CGFloat, height: CGFloat)
```

## Properties

### `hasChartDimens`

``` swift
@objc open var hasChartDimens: Bool
```

### `offsetLeft`

``` swift
@objc open var offsetLeft: CGFloat
```

### `offsetRight`

``` swift
@objc open var offsetRight: CGFloat
```

### `offsetTop`

``` swift
@objc open var offsetTop: CGFloat
```

### `offsetBottom`

``` swift
@objc open var offsetBottom: CGFloat
```

### `contentTop`

``` swift
@objc open var contentTop: CGFloat
```

### `contentLeft`

``` swift
@objc open var contentLeft: CGFloat
```

### `contentRight`

``` swift
@objc open var contentRight: CGFloat
```

### `contentBottom`

``` swift
@objc open var contentBottom: CGFloat
```

### `contentWidth`

``` swift
@objc open var contentWidth: CGFloat
```

### `contentHeight`

``` swift
@objc open var contentHeight: CGFloat
```

### `contentRect`

``` swift
@objc open var contentRect: CGRect
```

### `contentCenter`

``` swift
@objc open var contentCenter: CGPoint
```

### `chartHeight`

``` swift
@objc open var chartHeight: CGFloat
```

### `chartWidth`

``` swift
@objc open var chartWidth: CGFloat
```

### `touchMatrix`

``` swift
@objc open var touchMatrix: CGAffineTransform
```

### `scaleX`

The current x-scale factor

``` swift
@objc open var scaleX: CGFloat
```

### `scaleY`

The current y-scale factor

``` swift
@objc open var scaleY: CGFloat
```

### `minScaleX`

The minimum x-scale factor

``` swift
@objc open var minScaleX: CGFloat
```

### `minScaleY`

The minimum y-scale factor

``` swift
@objc open var minScaleY: CGFloat
```

### `maxScaleX`

The minimum x-scale factor

``` swift
@objc open var maxScaleX: CGFloat
```

### `maxScaleY`

The minimum y-scale factor

``` swift
@objc open var maxScaleY: CGFloat
```

### `transX`

The translation (drag / pan) distance on the x-axis

``` swift
@objc open var transX: CGFloat
```

### `transY`

The translation (drag / pan) distance on the y-axis

``` swift
@objc open var transY: CGFloat
```

### `isFullyZoomedOut`

if the chart is fully zoomed out, return true

``` swift
@objc open var isFullyZoomedOut: Bool
```

### `isFullyZoomedOutY`

`true` if the chart is fully zoomed out on it's y-axis (vertical).

``` swift
@objc open var isFullyZoomedOutY: Bool
```

### `isFullyZoomedOutX`

`true` if the chart is fully zoomed out on it's x-axis (horizontal).

``` swift
@objc open var isFullyZoomedOutX: Bool
```

### `hasNoDragOffset`

`true` if both drag offsets (x and y) are zero or smaller.

``` swift
@objc open var hasNoDragOffset: Bool
```

### `canZoomOutMoreX`

`true` if the chart is not yet fully zoomed out on the x-axis

``` swift
@objc open var canZoomOutMoreX: Bool
```

### `canZoomInMoreX`

`true` if the chart is not yet fully zoomed in on the x-axis

``` swift
@objc open var canZoomInMoreX: Bool
```

### `canZoomOutMoreY`

`true` if the chart is not yet fully zoomed out on the y-axis

``` swift
@objc open var canZoomOutMoreY: Bool
```

### `canZoomInMoreY`

`true` if the chart is not yet fully zoomed in on the y-axis

``` swift
@objc open var canZoomInMoreY: Bool
```

## Methods

### `setChartDimens(width:height:)`

``` swift
@objc open func setChartDimens(width: CGFloat, height: CGFloat)
```

### `restrainViewPort(offsetLeft:offsetTop:offsetRight:offsetBottom:)`

``` swift
@objc open func restrainViewPort(offsetLeft: CGFloat, offsetTop: CGFloat, offsetRight: CGFloat, offsetBottom: CGFloat)
```

### `zoom(scaleX:scaleY:)`

Zooms by the specified zoom factors.

``` swift
@objc open func zoom(scaleX: CGFloat, scaleY: CGFloat) -> CGAffineTransform
```

### `zoom(scaleX:scaleY:x:y:)`

Zooms around the specified center

``` swift
@objc open func zoom(scaleX: CGFloat, scaleY: CGFloat, x: CGFloat, y: CGFloat) -> CGAffineTransform
```

### `zoomIn(x:y:)`

Zooms in by 1.4, x and y are the coordinates (in pixels) of the zoom center.

``` swift
@objc open func zoomIn(x: CGFloat, y: CGFloat) -> CGAffineTransform
```

### `zoomOut(x:y:)`

Zooms out by 0.7, x and y are the coordinates (in pixels) of the zoom center.

``` swift
@objc open func zoomOut(x: CGFloat, y: CGFloat) -> CGAffineTransform
```

### `resetZoom()`

Zooms out to original size.

``` swift
@objc open func resetZoom() -> CGAffineTransform
```

### `setZoom(scaleX:scaleY:)`

Sets the scale factor to the specified values.

``` swift
@objc open func setZoom(scaleX: CGFloat, scaleY: CGFloat) -> CGAffineTransform
```

### `setZoom(scaleX:scaleY:x:y:)`

Sets the scale factor to the specified values. x and y is pivot.

``` swift
@objc open func setZoom(scaleX: CGFloat, scaleY: CGFloat, x: CGFloat, y: CGFloat) -> CGAffineTransform
```

### `fitScreen()`

Resets all zooming and dragging and makes the chart fit exactly it's bounds.

``` swift
@objc open func fitScreen() -> CGAffineTransform
```

### `translate(pt:)`

Translates to the specified point.

``` swift
@objc open func translate(pt: CGPoint) -> CGAffineTransform
```

### `centerViewPort(pt:chart:)`

Centers the viewport around the specified position (x-index and y-value) in the chart.
Centering the viewport outside the bounds of the chart is not possible.
Makes most sense in combination with the setScaleMinima(...) method.

``` swift
@objc open func centerViewPort(pt: CGPoint, chart: ChartViewBase)
```

### `refresh(newMatrix:chart:invalidate:)`

call this method to refresh the graph with a given matrix

``` swift
@objc @discardableResult open func refresh(newMatrix: CGAffineTransform, chart: ChartViewBase, invalidate: Bool) -> CGAffineTransform
```

### `setMinimumScaleX(_:)`

Sets the minimum scale factor for the x-axis

``` swift
@objc open func setMinimumScaleX(_ xScale: CGFloat)
```

### `setMaximumScaleX(_:)`

Sets the maximum scale factor for the x-axis

``` swift
@objc open func setMaximumScaleX(_ xScale: CGFloat)
```

### `setMinMaxScaleX(minScaleX:maxScaleX:)`

Sets the minimum and maximum scale factors for the x-axis

``` swift
@objc open func setMinMaxScaleX(minScaleX: CGFloat, maxScaleX: CGFloat)
```

### `setMinimumScaleY(_:)`

Sets the minimum scale factor for the y-axis

``` swift
@objc open func setMinimumScaleY(_ yScale: CGFloat)
```

### `setMaximumScaleY(_:)`

Sets the maximum scale factor for the y-axis

``` swift
@objc open func setMaximumScaleY(_ yScale: CGFloat)
```

### `setMinMaxScaleY(minScaleY:maxScaleY:)`

``` swift
@objc open func setMinMaxScaleY(minScaleY: CGFloat, maxScaleY: CGFloat)
```

### `isInBoundsX(_:)`

``` swift
@objc open func isInBoundsX(_ x: CGFloat) -> Bool
```

### `isInBoundsY(_:)`

``` swift
@objc open func isInBoundsY(_ y: CGFloat) -> Bool
```

### `isInBounds(point:)`

A method to check whether coordinate lies within the viewport.

``` swift
@objc open func isInBounds(point: CGPoint) -> Bool
```

#### Parameters

  - point: a coordinate.

### `isInBounds(x:y:)`

``` swift
@objc open func isInBounds(x: CGFloat, y: CGFloat) -> Bool
```

### `isInBoundsLeft(_:)`

``` swift
@objc open func isInBoundsLeft(_ x: CGFloat) -> Bool
```

### `isInBoundsRight(_:)`

``` swift
@objc open func isInBoundsRight(_ x: CGFloat) -> Bool
```

### `isInBoundsTop(_:)`

``` swift
@objc open func isInBoundsTop(_ y: CGFloat) -> Bool
```

### `isInBoundsBottom(_:)`

``` swift
@objc open func isInBoundsBottom(_ y: CGFloat) -> Bool
```

### `isIntersectingLine(from:to:)`

A method to check whether a line between two coordinates intersects with the view port  by using a linear function.

``` swift
@objc open func isIntersectingLine(from startPoint: CGPoint, to endPoint: CGPoint) -> Bool
```

Linear function (calculus): `y = ax + b`

Note: this method will not check for collision with the right edge of the view port, as we assume lines run from left
to right (e.g. `startPoint < endPoint`).

#### Parameters

  - startPoint: the start coordinate of the line.
  - endPoint: the end coordinate of the line.

### `setDragOffsetX(_:)`

Set an offset in pixels that allows the user to drag the chart over it's bounds on the x-axis.

``` swift
@objc open func setDragOffsetX(_ offset: CGFloat)
```

### `setDragOffsetY(_:)`

Set an offset in pixels that allows the user to drag the chart over it's bounds on the y-axis.

``` swift
@objc open func setDragOffsetY(_ offset: CGFloat)
```
