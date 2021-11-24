# BarLineChartViewBase

Base-class of LineChart, BarChart, ScatterChart and CandleStickChart.

``` swift
open class BarLineChartViewBase: ChartViewBase, BarLineScatterCandleBubbleChartDataProvider, NSUIGestureRecognizerDelegate
```

## Inheritance

[`ChartViewBase`](/ChartViewBase), [`BarLineScatterCandleBubbleChartDataProvider`](/BarLineScatterCandleBubbleChartDataProvider), `NSUIGestureRecognizerDelegate`

## Initializers

### `init(frame:)`

``` swift
public override init(frame: CGRect)
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder)
```

## Properties

### `gridBackgroundColor`

the color for the background of the chart-drawing area (everything behind the grid lines).

``` swift
@objc open var gridBackgroundColor 
```

### `borderColor`

``` swift
@objc open var borderColor = NSUIColor.black
```

### `borderLineWidth`

``` swift
@objc open var borderLineWidth: CGFloat = 1.0
```

### `drawGridBackgroundEnabled`

flag indicating if the grid background should be drawn or not

``` swift
@objc open var drawGridBackgroundEnabled = false
```

### `drawBordersEnabled`

When enabled, the borders rectangle will be rendered.
If this is enabled, there is no point drawing the axis-lines of x- and y-axis.

``` swift
@objc open var drawBordersEnabled = false
```

### `clipValuesToContentEnabled`

When enabled, the values will be clipped to contentRect, otherwise they can bleed outside the content rect.

``` swift
@objc open var clipValuesToContentEnabled: Bool = false
```

### `clipDataToContentEnabled`

When disabled, the data and/or highlights will not be clipped to contentRect. Disabling this option can
be useful, when the data lies fully within the content rect, but is drawn in such a way (such as thick lines)
that there is unwanted clipping.

``` swift
@objc open var clipDataToContentEnabled: Bool = true
```

### `minOffset`

Sets the minimum offset (padding) around the chart, defaults to 10

``` swift
@objc open var minOffset 
```

### `keepPositionOnRotation`

Sets whether the chart should keep its position (zoom / scroll) after a rotation (orientation change)
**default**:​ false

``` swift
@objc open var keepPositionOnRotation: Bool = false
```

### `leftAxis`

The left y-axis object. In the horizontal bar-chart, this is the
top axis.

``` swift
@objc open internal(set) var leftAxis 
```

### `rightAxis`

The right y-axis object. In the horizontal bar-chart, this is the
bottom axis.

``` swift
@objc open internal(set) var rightAxis 
```

### `leftYAxisRenderer`

The left Y axis renderer. This is a read-write property so you can set your own custom renderer here.
**default**:​ An instance of YAxisRenderer

``` swift
@objc open lazy var leftYAxisRenderer 
```

### `rightYAxisRenderer`

The right Y axis renderer. This is a read-write property so you can set your own custom renderer here.
**default**:​ An instance of YAxisRenderer

``` swift
@objc open lazy var rightYAxisRenderer 
```

### `xAxisRenderer`

The X axis renderer. This is a read-write property so you can set your own custom renderer here.
**default**:​ An instance of XAxisRenderer

``` swift
@objc open lazy var xAxisRenderer 
```

### `visibleXRange`

``` swift
@objc open var visibleXRange: Double
```

### `dragEnabled`

is dragging enabled? (moving the chart with the finger) for the chart (this does not affect scaling).

``` swift
@objc open var dragEnabled: Bool
```

### `isDragEnabled`

is dragging enabled? (moving the chart with the finger) for the chart (this does not affect scaling).

``` swift
@objc open var isDragEnabled: Bool
```

### `dragXEnabled`

is dragging on the X axis enabled?

``` swift
@objc open var dragXEnabled: Bool
```

### `dragYEnabled`

is dragging on the Y axis enabled?

``` swift
@objc open var dragYEnabled: Bool
```

### `scaleXEnabled`

``` swift
@objc open var scaleXEnabled: Bool
```

### `scaleYEnabled`

``` swift
@objc open var scaleYEnabled: Bool
```

### `isScaleXEnabled`

``` swift
@objc open var isScaleXEnabled: Bool 
```

### `isScaleYEnabled`

``` swift
@objc open var isScaleYEnabled: Bool 
```

### `doubleTapToZoomEnabled`

flag that indicates if double tap zoom is enabled or not

``` swift
@objc open var doubleTapToZoomEnabled: Bool
```

### `isDoubleTapToZoomEnabled`

**default**:​ true
`true` if zooming via double-tap is enabled `false` ifnot.

``` swift
@objc open var isDoubleTapToZoomEnabled: Bool
```

### `highlightPerDragEnabled`

flag that indicates if highlighting per dragging over a fully zoomed out chart is enabled

``` swift
@objc open var highlightPerDragEnabled = true
```

### `isHighlightPerDragEnabled`

If set to true, highlighting per dragging over a fully zoomed out chart is enabled
You might want to disable this when using inside a `NSUIScrollView`

``` swift
@objc open var isHighlightPerDragEnabled: Bool
```

**default**: true

### `isDrawGridBackgroundEnabled`

**default**:​ true
`true` if drawing the grid background is enabled, `false` ifnot.

``` swift
@objc open var isDrawGridBackgroundEnabled: Bool
```

### `isDrawBordersEnabled`

**default**:​ false
`true` if drawing the borders rectangle is enabled, `false` ifnot.

``` swift
@objc open var isDrawBordersEnabled: Bool
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

### `isFullyZoomedOut`

if the chart is fully zoomed out, return true

``` swift
@objc open var isFullyZoomedOut: Bool 
```

### `pinchZoomEnabled`

flag that indicates if pinch-zoom is enabled. if true, both x and y axis can be scaled simultaneously with 2 fingers, if false, x and y axis can be scaled separately

``` swift
@objc open var pinchZoomEnabled: Bool
```

### `isPinchZoomEnabled`

**default**:​ false
`true` if pinch-zoom is enabled, `false` ifnot

``` swift
@objc open var isPinchZoomEnabled: Bool 
```

### `hasNoDragOffset`

`true` if both drag offsets (x and y) are zero or smaller.

``` swift
@objc open var hasNoDragOffset: Bool 
```

### `chartYMax`

``` swift
open override var chartYMax: Double
```

### `chartYMin`

``` swift
open override var chartYMin: Double
```

### `isAnyAxisInverted`

`true` if either the left or the right or both axes are inverted.

``` swift
@objc open var isAnyAxisInverted: Bool
```

### `autoScaleMinMaxEnabled`

flag that indicates if auto scaling on the y axis is enabled.
if yes, the y axis automatically adjusts to the min and max y values of the current x axis range whenever the viewport changes

``` swift
@objc open var autoScaleMinMaxEnabled: Bool
```

### `isAutoScaleMinMaxEnabled`

**default**:​ false
`true` if auto scaling on the y axis is enabled.

``` swift
@objc open var isAutoScaleMinMaxEnabled : Bool 
```

### `maxVisibleCount`

the number of maximum visible drawn values on the chart only active when `drawValuesEnabled` is enabled

``` swift
open override var maxVisibleCount: Int
```

### `lowestVisibleX`

The lowest x-index (value on the x-axis) that is still visible on he chart.

``` swift
open var lowestVisibleX: Double
```

### `highestVisibleX`

The highest x-index (value on the x-axis) that is still visible on the chart.

``` swift
open var highestVisibleX: Double
```

## Methods

### `observeValue(forKeyPath:of:change:context:)`

``` swift
open override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?)
```

### `draw(_:)`

``` swift
open override func draw(_ rect: CGRect)
```

### `notifyDataSetChanged()`

``` swift
open override func notifyDataSetChanged()
```

### `stopDeceleration()`

``` swift
@objc open func stopDeceleration()
```

### `gestureRecognizerShouldBegin(_:)`

<dl>
<dt><code>!os(OSX)</code></dt>
<dd>

``` swift
open override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
```

</dd>
</dl>

### `gestureRecognizerShouldBegin(gestureRecognizer:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
public func gestureRecognizerShouldBegin(gestureRecognizer: NSGestureRecognizer) -> Bool
```

</dd>
</dl>

### `gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)`

``` swift
open func gestureRecognizer(_ gestureRecognizer: NSUIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: NSUIGestureRecognizer) -> Bool
```

### `zoomIn()`

MARK:​ Viewport modifiers
Zooms in by 1.4, into the charts center.

``` swift
@objc open func zoomIn()
```

### `zoomOut()`

Zooms out by 0.7, from the charts center.

``` swift
@objc open func zoomOut()
```

### `resetZoom()`

Zooms out to original size.

``` swift
@objc open func resetZoom()
```

### `zoom(scaleX:scaleY:x:y:)`

Zooms in or out by the given scale factor. x and y are the coordinates
(in pixels) of the zoom center.

``` swift
@objc open func zoom(
        scaleX: CGFloat,
               scaleY: CGFloat,
               x: CGFloat,
               y: CGFloat)
```

#### Parameters

  - scaleX: if \< 1 --\> zoom out, if \> 1 --\> zoom in
  - scaleY: if \< 1 --\> zoom out, if \> 1 --\> zoom in
  - x:
  - y:

### `zoom(scaleX:scaleY:xValue:yValue:axis:)`

Zooms in or out by the given scale factor.
x and y are the values (**not pixels**) of the zoom center.

``` swift
@objc open func zoom(
        scaleX: CGFloat,
               scaleY: CGFloat,
               xValue: Double,
               yValue: Double,
               axis: YAxis.AxisDependency)
```

#### Parameters

  - scaleX: if \< 1 --\> zoom out, if \> 1 --\> zoom in
  - scaleY: if \< 1 --\> zoom out, if \> 1 --\> zoom in
  - xValue:
  - yValue:
  - axis:

### `zoomToCenter(scaleX:scaleY:)`

Zooms to the center of the chart with the given scale factor.

``` swift
@objc open func zoomToCenter(
        scaleX: CGFloat,
               scaleY: CGFloat)
```

#### Parameters

  - scaleX: if \< 1 --\> zoom out, if \> 1 --\> zoom in
  - scaleY: if \< 1 --\> zoom out, if \> 1 --\> zoom in
  - xValue:
  - yValue:
  - axis:

### `zoomAndCenterViewAnimated(scaleX:scaleY:xValue:yValue:axis:duration:easing:)`

Zooms by the specified scale factor to the specified values on the specified axis.

``` swift
@objc open func zoomAndCenterViewAnimated(
        scaleX: CGFloat,
        scaleY: CGFloat,
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval,
        easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - scaleX:
  - scaleY:
  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `zoomAndCenterViewAnimated(scaleX:scaleY:xValue:yValue:axis:duration:easingOption:)`

Zooms by the specified scale factor to the specified values on the specified axis.

``` swift
@objc open func zoomAndCenterViewAnimated(
        scaleX: CGFloat,
        scaleY: CGFloat,
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval,
        easingOption: ChartEasingOption)
```

#### Parameters

  - scaleX:
  - scaleY:
  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `zoomAndCenterViewAnimated(scaleX:scaleY:xValue:yValue:axis:duration:)`

Zooms by the specified scale factor to the specified values on the specified axis.

``` swift
@objc open func zoomAndCenterViewAnimated(
        scaleX: CGFloat,
        scaleY: CGFloat,
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval)
```

#### Parameters

  - scaleX:
  - scaleY:
  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `fitScreen()`

Resets all zooming and dragging and makes the chart fit exactly it's bounds.

``` swift
@objc open func fitScreen()
```

### `setScaleMinima(_:scaleY:)`

Sets the minimum scale value to which can be zoomed out. 1 = fitScreen

``` swift
@objc open func setScaleMinima(_ scaleX: CGFloat, scaleY: CGFloat)
```

### `setVisibleXRangeMaximum(_:)`

Sets the size of the area (range on the x-axis) that should be maximum visible at once (no further zooming out allowed).

``` swift
@objc open func setVisibleXRangeMaximum(_ maxXRange: Double)
```

If this is e.g. set to 10, no more than a range of 10 values on the x-axis can be viewed at once without scrolling.

If you call this method, chart must have data or it has no effect.

### `setVisibleXRangeMinimum(_:)`

Sets the size of the area (range on the x-axis) that should be minimum visible at once (no further zooming in allowed).

``` swift
@objc open func setVisibleXRangeMinimum(_ minXRange: Double)
```

If this is e.g. set to 10, no less than a range of 10 values on the x-axis can be viewed at once without scrolling.

If you call this method, chart must have data or it has no effect.

### `setVisibleXRange(minXRange:maxXRange:)`

Limits the maximum and minimum value count that can be visible by pinching and zooming.

``` swift
@objc open func setVisibleXRange(minXRange: Double, maxXRange: Double)
```

e.g. minRange=10, maxRange=100 no less than 10 values and no more that 100 values can be viewed
at once without scrolling.

If you call this method, chart must have data or it has no effect.

### `setVisibleYRangeMaximum(_:axis:)`

Sets the size of the area (range on the y-axis) that should be maximum visible at once.

``` swift
@objc open func setVisibleYRangeMaximum(_ maxYRange: Double, axis: YAxis.AxisDependency)
```

#### Parameters

  - yRange:
  - axis:   - the axis for which this limit should apply

### `setVisibleYRangeMinimum(_:axis:)`

Sets the size of the area (range on the y-axis) that should be minimum visible at once, no further zooming in possible.

``` swift
@objc open func setVisibleYRangeMinimum(_ minYRange: Double, axis: YAxis.AxisDependency)
```

#### Parameters

  - yRange:
  - axis:   - the axis for which this limit should apply

### `setVisibleYRange(minYRange:maxYRange:axis:)`

Limits the maximum and minimum y range that can be visible by pinching and zooming.

``` swift
@objc open func setVisibleYRange(minYRange: Double, maxYRange: Double, axis: YAxis.AxisDependency)
```

#### Parameters

  - minYRange:
  - maxYRange:
  - axis:

### `moveViewToX(_:)`

Moves the left side of the current viewport to the specified x-value.
This also refreshes the chart by calling setNeedsDisplay().

``` swift
@objc open func moveViewToX(_ xValue: Double)
```

### `moveViewToY(_:axis:)`

Centers the viewport to the specified y-value on the y-axis.
This also refreshes the chart by calling setNeedsDisplay().

``` swift
@objc open func moveViewToY(_ yValue: Double, axis: YAxis.AxisDependency)
```

#### Parameters

  - yValue:
  - axis:   - which axis should be used as a reference for the y-axis

### `moveViewTo(xValue:yValue:axis:)`

This will move the left side of the current viewport to the specified x-value on the x-axis, and center the viewport to the specified y-value on the y-axis.
This also refreshes the chart by calling setNeedsDisplay().

``` swift
@objc open func moveViewTo(xValue: Double, yValue: Double, axis: YAxis.AxisDependency)
```

#### Parameters

  - xValue:
  - yValue:
  - axis:   - which axis should be used as a reference for the y-axis

### `moveViewToAnimated(xValue:yValue:axis:duration:easing:)`

This will move the left side of the current viewport to the specified x-position and center the viewport to the specified y-position animated.
This also refreshes the chart by calling setNeedsDisplay().

``` swift
@objc open func moveViewToAnimated(
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval,
        easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `moveViewToAnimated(xValue:yValue:axis:duration:easingOption:)`

This will move the left side of the current viewport to the specified x-position and center the viewport to the specified y-position animated.
This also refreshes the chart by calling setNeedsDisplay().

``` swift
@objc open func moveViewToAnimated(
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval,
        easingOption: ChartEasingOption)
```

#### Parameters

  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `moveViewToAnimated(xValue:yValue:axis:duration:)`

This will move the left side of the current viewport to the specified x-position and center the viewport to the specified y-position animated.
This also refreshes the chart by calling setNeedsDisplay().

``` swift
@objc open func moveViewToAnimated(
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval)
```

#### Parameters

  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `centerViewTo(xValue:yValue:axis:)`

This will move the center of the current viewport to the specified x-value and y-value.
This also refreshes the chart by calling setNeedsDisplay().

``` swift
@objc open func centerViewTo(
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency)
```

#### Parameters

  - xValue:
  - yValue:
  - axis:   - which axis should be used as a reference for the y-axis

### `centerViewToAnimated(xValue:yValue:axis:duration:easing:)`

This will move the center of the current viewport to the specified x-value and y-value animated.

``` swift
@objc open func centerViewToAnimated(
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval,
        easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `centerViewToAnimated(xValue:yValue:axis:duration:easingOption:)`

This will move the center of the current viewport to the specified x-value and y-value animated.

``` swift
@objc open func centerViewToAnimated(
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval,
        easingOption: ChartEasingOption)
```

#### Parameters

  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `centerViewToAnimated(xValue:yValue:axis:duration:)`

This will move the center of the current viewport to the specified x-value and y-value animated.

``` swift
@objc open func centerViewToAnimated(
        xValue: Double,
        yValue: Double,
        axis: YAxis.AxisDependency,
        duration: TimeInterval)
```

#### Parameters

  - xValue:
  - yValue:
  - axis: which axis should be used as a reference for the y-axis
  - duration: the duration of the animation in seconds
  - easing:

### `setViewPortOffsets(left:top:right:bottom:)`

Sets custom offsets for the current `ChartViewPort` (the offsets on the sides of the actual chart window). Setting this will prevent the chart from automatically calculating it's offsets. Use `resetViewPortOffsets()` to undo this.
ONLY USE THIS WHEN YOU KNOW WHAT YOU ARE DOING, else use `setExtraOffsets(...)`.

``` swift
@objc open func setViewPortOffsets(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat)
```

### `resetViewPortOffsets()`

Resets all custom offsets set via `setViewPortOffsets(...)` method. Allows the chart to again calculate all offsets automatically.

``` swift
@objc open func resetViewPortOffsets()
```

### `getAxisRange(axis:)`

``` swift
@objc open func getAxisRange(axis: YAxis.AxisDependency) -> Double
```

  - Returns: The range of the specified axis.

### `getPosition(entry:axis:)`

``` swift
@objc open func getPosition(entry e: ChartDataEntry, axis: YAxis.AxisDependency) -> CGPoint
```

  - Returns: The position (in pixels) the provided Entry has inside the chart view

### `setScaleEnabled(_:)`

is scaling enabled? (zooming in and out by gesture) for the chart (this does not affect dragging).

``` swift
@objc open func setScaleEnabled(_ enabled: Bool)
```

### `valueForTouchPoint(point:axis:)`

``` swift
@objc open func valueForTouchPoint(point pt: CGPoint, axis: YAxis.AxisDependency) -> CGPoint
```

  - Returns: The x and y values in the chart at the given touch point
    (encapsulated in a `CGPoint`). This method transforms pixel coordinates to
    coordinates / values in the chart. This is the opposite method to
    `getPixelsForValues(...)`.

### `pixelForValues(x:y:axis:)`

Transforms the given chart values into pixels. This is the opposite
method to `valueForTouchPoint(...)`.

``` swift
@objc open func pixelForValues(x: Double, y: Double, axis: YAxis.AxisDependency) -> CGPoint
```

### `getEntryByTouchPoint(point:)`

``` swift
@objc open func getEntryByTouchPoint(point pt: CGPoint) -> ChartDataEntry!
```

  - Returns: The Entry object displayed at the touched position of the chart

### `getDataSetByTouchPoint(point:)`

``` swift
@objc open func getDataSetByTouchPoint(point pt: CGPoint) -> IBarLineScatterCandleBubbleChartDataSet?
```

  - Returns: The DataSet object displayed at the touched position of the chart

### `getAxis(_:)`

``` swift
@objc open func getAxis(_ axis: YAxis.AxisDependency) -> YAxis
```

  - Returns: The y-axis object to the corresponding AxisDependency. In the
    horizontal bar-chart, LEFT == top, RIGHT == BOTTOM

### `setDragOffsetX(_:)`

Set an offset in dp that allows the user to drag the chart over it's
bounds on the x-axis.

``` swift
@objc open func setDragOffsetX(_ offset: CGFloat)
```

### `setDragOffsetY(_:)`

Set an offset in dp that allows the user to drag the chart over it's
bounds on the y-axis.

``` swift
@objc open func setDragOffsetY(_ offset: CGFloat)
```

### `setYAxisMinWidth(_:width:)`

Sets a minimum width to the specified y axis.

``` swift
@objc open func setYAxisMinWidth(_ axis: YAxis.AxisDependency, width: CGFloat)
```

### `getYAxisMinWidth(_:)`

**default**:​ 0.0

``` swift
@objc open func getYAxisMinWidth(_ axis: YAxis.AxisDependency) -> CGFloat
```

#### Returns

The (custom) minimum width of the specified Y axis.

### `setYAxisMaxWidth(_:width:)`

Sets a maximum width to the specified y axis.
Zero (0.0) means there's no maximum width

``` swift
@objc open func setYAxisMaxWidth(_ axis: YAxis.AxisDependency, width: CGFloat)
```

### `getYAxisMaxWidth(_:)`

Zero (0.0) means there's no maximum width

``` swift
@objc open func getYAxisMaxWidth(_ axis: YAxis.AxisDependency) -> CGFloat
```

**default**: 0.0 (no maximum specified)

#### Returns

The (custom) maximum width of the specified Y axis.

### `getYAxisWidth(_:)`

``` swift
@objc open func getYAxisWidth(_ axis: YAxis.AxisDependency) -> CGFloat
```

  - Returns the width of the specified y axis.

### `getTransformer(forAxis:)`

``` swift
open func getTransformer(forAxis axis: YAxis.AxisDependency) -> Transformer
```

  - Returns: The Transformer class that contains all matrices and is
    responsible for transforming values into pixels on the screen and
    backwards.

### `isInverted(axis:)`

``` swift
open func isInverted(axis: YAxis.AxisDependency) -> Bool
```
