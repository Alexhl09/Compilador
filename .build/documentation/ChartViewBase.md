# ChartViewBase

``` swift
open class ChartViewBase: NSUIView, ChartDataProvider, AnimatorDelegate
```

## Inheritance

[`NSUIView`](/NSUIView), [`NSUIView`](/NSUIView), [`AnimatorDelegate`](/AnimatorDelegate), [`ChartDataProvider`](/ChartDataProvider)

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

### `xAxis`

``` swift
@objc open var xAxis: XAxis
```

  - Returns: The object representing all x-labels, this method can be used to
    acquire the XAxis object and modify it (e.g. change the position of the
    labels)

### `dragDecelerationEnabled`

If set to true, chart continues to scroll after touch up

``` swift
@objc open var dragDecelerationEnabled = true
```

### `chartDescription`

The `Description` object of the chart.
This should have been called just "description", but

``` swift
@objc open var chartDescription: Description?
```

### `delegate`

delegate to receive chart events

``` swift
@objc open weak var delegate: ChartViewDelegate?
```

### `noDataText`

text that is displayed when the chart is empty

``` swift
@objc open var noDataText = "No chart data available."
```

### `noDataFont`

Font to be used for the no data text.

``` swift
@objc open var noDataFont 
```

### `noDataTextColor`

color of the no data text

``` swift
@objc open var noDataTextColor: NSUIColor = NSUIColor.black
```

### `noDataTextAlignment`

alignment of the no data text

``` swift
@objc open var noDataTextAlignment: NSTextAlignment = .left
```

### `renderer`

object responsible for rendering the data

``` swift
@objc open var renderer: DataRenderer?
```

### `highlighter`

``` swift
@objc open var highlighter: IHighlighter?
```

### `drawMarkers`

`true` if drawing the marker is enabled when tapping on values
(use the `marker` property to specify a marker)

``` swift
@objc open var drawMarkers = true
```

### `isDrawMarkersEnabled`

``` swift
@objc open var isDrawMarkersEnabled: Bool 
```

  - Returns: `true` if drawing the marker is enabled when tapping on values
    (use the `marker` property to specify a marker)

### `marker`

The marker that is displayed when a value is clicked on the chart

``` swift
@objc open var marker: IMarker?
```

### `extraTopOffset`

An extra offset to be appended to the viewport's top

``` swift
@objc open var extraTopOffset: CGFloat = 0.0
```

### `extraRightOffset`

An extra offset to be appended to the viewport's right

``` swift
@objc open var extraRightOffset: CGFloat = 0.0
```

### `extraBottomOffset`

An extra offset to be appended to the viewport's bottom

``` swift
@objc open var extraBottomOffset: CGFloat = 0.0
```

### `extraLeftOffset`

An extra offset to be appended to the viewport's left

``` swift
@objc open var extraLeftOffset: CGFloat = 0.0
```

### `data`

The data for the chart

``` swift
open var data: ChartData?
```

### `highlighted`

The array of currently highlighted values. This might an empty if nothing is highlighted.

``` swift
@objc open var highlighted: [Highlight]
```

### `highlightPerTapEnabled`

Set this to false to prevent values from being highlighted by tap gesture.
Values can still be highlighted via drag or programmatically.
**default**:​ true

``` swift
@objc open var highlightPerTapEnabled: Bool
```

### `isHighLightPerTapEnabled`

`true` if values can be highlighted via tap gesture, `false` ifnot.

``` swift
@objc open var isHighLightPerTapEnabled: Bool
```

### `lastHighlighted`

The last value that was highlighted via touch.

``` swift
@objc open var lastHighlighted: Highlight?
```

### `chartAnimator`

The animator responsible for animating chart values.

``` swift
@objc open var chartAnimator: Animator!
```

### `chartYMax`

The current y-max value across all DataSets

``` swift
open var chartYMax: Double
```

### `chartYMin`

The current y-min value across all DataSets

``` swift
open var chartYMin: Double
```

### `chartXMax`

``` swift
open var chartXMax: Double
```

### `chartXMin`

``` swift
open var chartXMin: Double
```

### `xRange`

``` swift
open var xRange: Double
```

### `midPoint`

``` swift
@objc open var midPoint: CGPoint
```

  - Note: (Equivalent of getCenter() in MPAndroidChart, as center is already a standard in iOS that returns the center point relative to superview, and MPAndroidChart returns relative to self)\*
    The center point of the chart (the whole View) in pixels.

### `centerOffsets`

The center of the chart taking offsets under consideration. (returns the center of the content rectangle)

``` swift
open var centerOffsets: CGPoint
```

### `legend`

The Legend object of the chart. This method can be used to get an instance of the legend in order to customize the automatically generated Legend.

``` swift
@objc open var legend: Legend
```

### `legendRenderer`

The renderer object responsible for rendering / drawing the Legend.

``` swift
@objc open var legendRenderer: LegendRenderer!
```

### `contentRect`

The rectangle that defines the borders of the chart-value surface (into which the actual values are drawn).

``` swift
@objc open var contentRect: CGRect
```

### `viewPortHandler`

``` swift
@objc open var viewPortHandler: ViewPortHandler!
```

  - Returns: The ViewPortHandler of the chart that is responsible for the
    content area of the chart and its offsets and dimensions.

### `isDragDecelerationEnabled`

**default**:​ true
`true` if chart continues to scroll after touch up, `false` ifnot.

``` swift
@objc open var isDragDecelerationEnabled: Bool
```

### `dragDecelerationFrictionCoef`

Deceleration friction coefficient in \[0 ; 1\] interval, higher values indicate that speed will decrease slowly, for example if it set to 0, it will stop immediately.
1 is an invalid value, and will be converted to 0.999 automatically.

``` swift
@objc open var dragDecelerationFrictionCoef: CGFloat
```

**default**: true

### `maxHighlightDistance`

The maximum distance in screen pixels away from an entry causing it to highlight.
**default**:​ 500.0

``` swift
open var maxHighlightDistance: CGFloat = 500.0
```

### `maxVisibleCount`

the number of maximum visible drawn values on the chart only active when `drawValuesEnabled` is enabled

``` swift
open var maxVisibleCount: Int
```

## Methods

### `setExtraOffsets(left:top:right:bottom:)`

``` swift
@objc open func setExtraOffsets(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat)
```

### `clear()`

Clears the chart from all data (sets it to null) and refreshes it (by calling setNeedsDisplay()).

``` swift
@objc open func clear()
```

### `clearValues()`

Removes all DataSets (and thereby Entries) from the chart. Does not set the data object to nil. Also refreshes the chart by calling setNeedsDisplay().

``` swift
@objc open func clearValues()
```

### `isEmpty()`

``` swift
@objc open func isEmpty() -> Bool
```

  - Returns: `true` if the chart is empty (meaning it's data object is either null or contains no entries).

### `notifyDataSetChanged()`

Lets the chart know its underlying data has changed and should perform all necessary recalculations.
It is crucial that this method is called everytime data is changed dynamically. Not calling this method can lead to crashes or unexpected behaviour.

``` swift
@objc open func notifyDataSetChanged()
```

### `draw(_:)`

``` swift
open override func draw(_ rect: CGRect)
```

### `accessibilityChildren()`

``` swift
open override func accessibilityChildren() -> [Any]? 
```

### `valuesToHighlight()`

Checks if the highlight array is null, has a length of zero or if the first object is null.

``` swift
@objc open func valuesToHighlight() -> Bool
```

#### Returns

`true` if there are values to highlight, `false` ifthere are no values to highlight.

### `highlightValues(_:)`

Highlights the values at the given indices in the given DataSets. Provide
null or an empty array to undo all highlighting.
This should be used to programmatically highlight values.
This method *will not* call the delegate.

``` swift
@objc open func highlightValues(_ highs: [Highlight]?)
```

### `highlightValue(x:dataSetIndex:dataIndex:)`

Highlights any y-value at the given x-value in the given DataSet.
Provide -1 as the dataSetIndex to undo all highlighting.
This method will call the delegate.

``` swift
@objc open func highlightValue(x: Double, dataSetIndex: Int, dataIndex: Int = -1)
```

#### Parameters

  - x: The x-value to highlight
  - dataSetIndex: The dataset index to search in
  - dataIndex: The data index to search in (only used in CombinedChartView currently)

### `highlightValue(x:y:dataSetIndex:dataIndex:)`

Highlights the value at the given x-value and y-value in the given DataSet.
Provide -1 as the dataSetIndex to undo all highlighting.
This method will call the delegate.

``` swift
@objc open func highlightValue(x: Double, y: Double, dataSetIndex: Int, dataIndex: Int = -1)
```

#### Parameters

  - x: The x-value to highlight
  - y: The y-value to highlight. Supply `NaN` for "any"
  - dataSetIndex: The dataset index to search in
  - dataIndex: The data index to search in (only used in CombinedChartView currently)

### `highlightValue(x:dataSetIndex:dataIndex:callDelegate:)`

Highlights any y-value at the given x-value in the given DataSet.
Provide -1 as the dataSetIndex to undo all highlighting.

``` swift
@objc open func highlightValue(x: Double, dataSetIndex: Int, dataIndex: Int = -1, callDelegate: Bool)
```

#### Parameters

  - x: The x-value to highlight
  - dataSetIndex: The dataset index to search in
  - dataIndex: The data index to search in (only used in CombinedChartView currently)
  - callDelegate: Should the delegate be called for this change

### `highlightValue(x:y:dataSetIndex:dataIndex:callDelegate:)`

Highlights the value at the given x-value and y-value in the given DataSet.
Provide -1 as the dataSetIndex to undo all highlighting.

``` swift
@objc open func highlightValue(x: Double, y: Double, dataSetIndex: Int, dataIndex: Int = -1, callDelegate: Bool)
```

#### Parameters

  - x: The x-value to highlight
  - y: The y-value to highlight. Supply `NaN` for "any"
  - dataSetIndex: The dataset index to search in
  - dataIndex: The data index to search in (only used in CombinedChartView currently)
  - callDelegate: Should the delegate be called for this change

### `highlightValue(_:)`

Highlights the values represented by the provided Highlight object
This method *will not* call the delegate.

``` swift
@objc open func highlightValue(_ highlight: Highlight?)
```

#### Parameters

  - highlight: contains information about which entry should be highlighted

### `highlightValue(_:callDelegate:)`

Highlights the value selected by touch gesture.

``` swift
@objc open func highlightValue(_ highlight: Highlight?, callDelegate: Bool)
```

### `getHighlightByTouchPoint(_:)`

``` swift
@objc open func getHighlightByTouchPoint(_ pt: CGPoint) -> Highlight?
```

  - Returns: The Highlight object (contains x-index and DataSet index) of the
    selected value at the given touch point inside the Line-, Scatter-, or
    CandleStick-Chart.

### `getMarkerPosition(highlight:)`

``` swift
@objc open func getMarkerPosition(highlight: Highlight) -> CGPoint
```

  - Returns: The actual position in pixels of the MarkerView for the given Entry in the given DataSet.

### `animate(xAxisDuration:yAxisDuration:easingX:easingY:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval, easingX: ChartEasingFunctionBlock?, easingY: ChartEasingFunctionBlock?)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis
  - easingX: an easing function for the animation on the x axis
  - easingY: an easing function for the animation on the y axis

### `animate(xAxisDuration:yAxisDuration:easingOptionX:easingOptionY:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval, easingOptionX: ChartEasingOption, easingOptionY: ChartEasingOption)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis
  - easingOptionX: the easing function for the animation on the x axis
  - easingOptionY: the easing function for the animation on the y axis

### `animate(xAxisDuration:yAxisDuration:easing:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval, easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis
  - easing: an easing function for the animation

### `animate(xAxisDuration:yAxisDuration:easingOption:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval, easingOption: ChartEasingOption)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis
  - easingOption: the easing function for the animation

### `animate(xAxisDuration:yAxisDuration:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis

### `animate(xAxisDuration:easing:)`

Animates the drawing / rendering of the chart the x-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - easing: an easing function for the animation

### `animate(xAxisDuration:easingOption:)`

Animates the drawing / rendering of the chart the x-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, easingOption: ChartEasingOption)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - easingOption: the easing function for the animation

### `animate(xAxisDuration:)`

Animates the drawing / rendering of the chart the x-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis

### `animate(yAxisDuration:easing:)`

Animates the drawing / rendering of the chart the y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(yAxisDuration: TimeInterval, easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - yAxisDuration: duration for animating the y axis
  - easing: an easing function for the animation

### `animate(yAxisDuration:easingOption:)`

Animates the drawing / rendering of the chart the y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(yAxisDuration: TimeInterval, easingOption: ChartEasingOption)
```

#### Parameters

  - yAxisDuration: duration for animating the y axis
  - easingOption: the easing function for the animation

### `animate(yAxisDuration:)`

Animates the drawing / rendering of the chart the y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(yAxisDuration: TimeInterval)
```

#### Parameters

  - yAxisDuration: duration for animating the y axis

### `getChartImage(transparent:)`

``` swift
@objc open func getChartImage(transparent: Bool) -> NSUIImage?
```

  - Returns: The bitmap that represents the chart.

### `save(to:format:compressionQuality:)`

Saves the current chart state with the given name to the given path on
the sdcard leaving the path empty "" will put the saved file directly on
the SD card chart is saved as a PNG image, example:​
saveToPath("myfilename", "foldername1/foldername2")

``` swift
open func save(to path: String, format: ImageFormat, compressionQuality: Double) -> Bool
```

#### Parameters

  - to: path to the image to save
  - format: the format to save
  - compressionQuality: compression quality for lossless formats (JPEG)

#### Returns

`true` if the image was saved successfully

### `observeValue(forKeyPath:of:change:context:)`

``` swift
open override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?)
```

### `removeViewportJob(_:)`

``` swift
@objc open func removeViewportJob(_ job: ViewPortJob)
```

### `clearAllViewportJobs()`

``` swift
@objc open func clearAllViewportJobs()
```

### `addViewportJob(_:)`

``` swift
@objc open func addViewportJob(_ job: ViewPortJob)
```

### `animatorUpdated(_:)`

``` swift
open func animatorUpdated(_ chartAnimator: Animator)
```

### `animatorStopped(_:)`

``` swift
open func animatorStopped(_ chartAnimator: Animator)
```

### `nsuiTouchesBegan(_:withEvent:)`

``` swift
open override func nsuiTouchesBegan(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

### `nsuiTouchesMoved(_:withEvent:)`

``` swift
open override func nsuiTouchesMoved(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

### `nsuiTouchesEnded(_:withEvent:)`

``` swift
open override func nsuiTouchesEnded(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

### `nsuiTouchesCancelled(_:withEvent:)`

``` swift
open override func nsuiTouchesCancelled(_ touches: Set<NSUITouch>?, withEvent event: NSUIEvent?)
```
