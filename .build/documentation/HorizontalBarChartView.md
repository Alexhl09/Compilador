# HorizontalBarChartView

BarChart with horizontal bar orientation. In this implementation, x- and y-axis are switched.

``` swift
open class HorizontalBarChartView: BarChartView
```

## Inheritance

[`BarChartView`](/BarChartView)

## Properties

### `lowestVisibleX`

The lowest x-index (value on the x-axis) that is still visible on he chart.

``` swift
open override var lowestVisibleX: Double
```

### `highestVisibleX`

The highest x-index (value on the x-axis) that is still visible on the chart.

``` swift
open override var highestVisibleX: Double
```

## Methods

### `getMarkerPosition(highlight:)`

``` swift
open override func getMarkerPosition(highlight: Highlight) -> CGPoint
```

### `getBarBounds(entry:)`

``` swift
open override func getBarBounds(entry e: BarChartDataEntry) -> CGRect
```

### `getPosition(entry:axis:)`

``` swift
open override func getPosition(entry e: ChartDataEntry, axis: YAxis.AxisDependency) -> CGPoint
```

### `getHighlightByTouchPoint(_:)`

``` swift
open override func getHighlightByTouchPoint(_ pt: CGPoint) -> Highlight?
```

### `setVisibleXRangeMaximum(_:)`

``` swift
open override func setVisibleXRangeMaximum(_ maxXRange: Double)
```

### `setVisibleXRangeMinimum(_:)`

``` swift
open override func setVisibleXRangeMinimum(_ minXRange: Double)
```

### `setVisibleXRange(minXRange:maxXRange:)`

``` swift
open override func setVisibleXRange(minXRange: Double, maxXRange: Double)
```

### `setVisibleYRangeMaximum(_:axis:)`

``` swift
open override func setVisibleYRangeMaximum(_ maxYRange: Double, axis: YAxis.AxisDependency)
```

### `setVisibleYRangeMinimum(_:axis:)`

``` swift
open override func setVisibleYRangeMinimum(_ minYRange: Double, axis: YAxis.AxisDependency)
```

### `setVisibleYRange(minYRange:maxYRange:axis:)`

``` swift
open override func setVisibleYRange(minYRange: Double, maxYRange: Double, axis: YAxis.AxisDependency)
```
