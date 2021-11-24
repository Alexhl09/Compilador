# BarChartView

Chart that draws bars.

``` swift
open class BarChartView: BarLineChartViewBase, BarChartDataProvider
```

## Inheritance

[`BarLineChartViewBase`](/BarLineChartViewBase), [`BarChartDataProvider`](/BarChartDataProvider)

## Properties

### `drawValueAboveBarEnabled`

if set to true, all values are drawn above their bars, instead of below their top

``` swift
@objc open var drawValueAboveBarEnabled: Bool
```

### `drawBarShadowEnabled`

if set to true, a grey area is drawn behind each bar that indicates the maximum value

``` swift
@objc open var drawBarShadowEnabled: Bool
```

### `fitBars`

Adds half of the bar width to each side of the x-axis range in order to allow the bars of the barchart to be fully displayed.
**default**:​ false

``` swift
@objc open var fitBars = false
```

### `highlightFullBarEnabled`

Set this to `true` to make the highlight operation full-bar oriented, `false` to make it highlight single values (relevant only for stacked).
If enabled, highlighting operations will highlight the whole bar, even if only a single stack entry was tapped.

``` swift
@objc open var highlightFullBarEnabled: Bool = false
```

### `isHighlightFullBarEnabled`

`true` the highlight is be full-bar oriented, `false` ifsingle-value

``` swift
open var isHighlightFullBarEnabled: Bool 
```

### `barData`

``` swift
open var barData: BarChartData? 
```

### `isDrawValueAboveBarEnabled`

`true` if drawing values above bars is enabled, `false` ifnot

``` swift
open var isDrawValueAboveBarEnabled: Bool 
```

### `isDrawBarShadowEnabled`

`true` if drawing shadows (maxvalue) for each bar is enabled, `false` ifnot

``` swift
open var isDrawBarShadowEnabled: Bool 
```

## Methods

### `getHighlightByTouchPoint(_:)`

``` swift
open override func getHighlightByTouchPoint(_ pt: CGPoint) -> Highlight?
```

  - Returns: The Highlight object (contains x-index and DataSet index) of the selected value at the given touch point inside the BarChart.

### `getBarBounds(entry:)`

``` swift
@objc open func getBarBounds(entry e: BarChartDataEntry) -> CGRect
```

  - Returns: The bounding box of the specified Entry in the specified DataSet. Returns null if the Entry could not be found in the charts data.

### `groupBars(fromX:groupSpace:barSpace:)`

Groups all BarDataSet objects this data object holds together by modifying the x-value of their entries.
Previously set x-values of entries will be overwritten. Leaves space between bars and groups as specified by the parameters.
Calls `notifyDataSetChanged()` afterwards.

``` swift
@objc open func groupBars(fromX: Double, groupSpace: Double, barSpace: Double)
```

#### Parameters

  - fromX: the starting point on the x-axis where the grouping should begin
  - groupSpace: the space between groups of bars in values (not pixels) e.g. 0.8f for bar width 1f
  - barSpace: the space between individual bars in values (not pixels) e.g. 0.1f for bar width 1f

### `highlightValue(x:dataSetIndex:stackIndex:)`

Highlights the value at the given x-value in the given DataSet. Provide -1 as the dataSetIndex to undo all highlighting.

``` swift
@objc open func highlightValue(x: Double, dataSetIndex: Int, stackIndex: Int)
```

#### Parameters

  - x:
  - dataSetIndex:
  - stackIndex: the index inside the stack - only relevant for stacked entries
