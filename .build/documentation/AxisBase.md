# AxisBase

Base class for all axes

``` swift
@objc(ChartAxisBase)
open class AxisBase: ComponentBase
```

## Inheritance

[`ComponentBase`](/ComponentBase)

## Initializers

### `init()`

``` swift
public override init()
```

## Properties

### `labelFont`

``` swift
@objc open var labelFont 
```

### `labelTextColor`

``` swift
@objc open var labelTextColor = NSUIColor.black
```

### `axisLineColor`

``` swift
@objc open var axisLineColor = NSUIColor.gray
```

### `axisLineWidth`

``` swift
@objc open var axisLineWidth 
```

### `axisLineDashPhase`

``` swift
@objc open var axisLineDashPhase 
```

### `axisLineDashLengths`

``` swift
@objc open var axisLineDashLengths: [CGFloat]!
```

### `gridColor`

``` swift
@objc open var gridColor 
```

### `gridLineWidth`

``` swift
@objc open var gridLineWidth 
```

### `gridLineDashPhase`

``` swift
@objc open var gridLineDashPhase 
```

### `gridLineDashLengths`

``` swift
@objc open var gridLineDashLengths: [CGFloat]!
```

### `gridLineCap`

``` swift
@objc open var gridLineCap = CGLineCap.butt
```

### `drawGridLinesEnabled`

``` swift
@objc open var drawGridLinesEnabled = true
```

### `drawAxisLineEnabled`

``` swift
@objc open var drawAxisLineEnabled = true
```

### `drawLabelsEnabled`

flag that indicates of the labels of this axis should be drawn or not

``` swift
@objc open var drawLabelsEnabled = true
```

### `centerAxisLabelsEnabled`

Centers the axis labels instead of drawing them at their original position.
This is useful especially for grouped BarChart.

``` swift
@objc open var centerAxisLabelsEnabled: Bool
```

### `isCenterAxisLabelsEnabled`

``` swift
@objc open var isCenterAxisLabelsEnabled: Bool
```

### `drawLimitLinesBehindDataEnabled`

Are the LimitLines drawn behind the data or in front of the data?

``` swift
@objc open var drawLimitLinesBehindDataEnabled = false
```

**default**: false

### `gridAntialiasEnabled`

the flag can be used to turn off the antialias for grid lines

``` swift
@objc open var gridAntialiasEnabled = true
```

### `entries`

the actual array of entries

``` swift
@objc open var entries 
```

### `centeredEntries`

axis label entries only used for centered labels

``` swift
@objc open var centeredEntries 
```

### `entryCount`

the number of entries the legend contains

``` swift
@objc open var entryCount: Int 
```

### `decimals`

the number of decimal digits to use (for the default formatter

``` swift
@objc open var decimals: Int = 0
```

### `granularityEnabled`

When true, axis labels are controlled by the `granularity` property.
When false, axis values could possibly be repeated.
This could happen if two adjacent axis values are rounded to same value.
If using granularity this could be avoided by having fewer axis values visible.

``` swift
@objc open var granularityEnabled = false
```

### `granularity`

The minimum interval between axis values.
This can be used to avoid label duplicating when zooming in.

``` swift
@objc open var granularity: Double
```

**default**: 1.0

### `isGranularityEnabled`

The minimum interval between axis values.

``` swift
@objc open var isGranularityEnabled: Bool
```

### `forceLabelsEnabled`

if true, the set number of y-labels will be forced

``` swift
@objc open var forceLabelsEnabled = false
```

### `valueFormatter`

Sets the formatter to be used for formatting the axis labels.
If no formatter is set, the chart will automatically determine a reasonable formatting (concerning decimals) for all the values that are drawn inside the chart.
Use `nil` to use the formatter calculated by the chart.

``` swift
@objc open var valueFormatter: IAxisValueFormatter?
```

### `isDrawGridLinesEnabled`

``` swift
@objc open var isDrawGridLinesEnabled: Bool 
```

### `isDrawAxisLineEnabled`

``` swift
@objc open var isDrawAxisLineEnabled: Bool 
```

### `isDrawLabelsEnabled`

``` swift
@objc open var isDrawLabelsEnabled: Bool 
```

### `isDrawLimitLinesBehindDataEnabled`

Are the LimitLines drawn behind the data or in front of the data?

``` swift
@objc open var isDrawLimitLinesBehindDataEnabled: Bool 
```

**default**: false

### `spaceMin`

Extra spacing for `axisMinimum` to be added to automatically calculated `axisMinimum`

``` swift
@objc open var spaceMin: Double = 0.0
```

### `spaceMax`

Extra spacing for `axisMaximum` to be added to automatically calculated `axisMaximum`

``` swift
@objc open var spaceMax: Double = 0.0
```

### `axisRange`

the total range of values this axis covers

``` swift
@objc open var axisRange 
```

### `axisMinLabels`

The minumum number of labels on the axis

``` swift
@objc open var axisMinLabels 
```

### `axisMaxLabels`

The maximum number of labels on the axis

``` swift
@objc open var axisMaxLabels 
```

### `labelCount`

the number of label entries the axis should have
max = 25,
min = 2,
default = 6,
be aware that this number is not fixed and can only be approximated

``` swift
@objc open var labelCount: Int
```

### `isForceLabelsEnabled`

`true` if focing the y-label count is enabled. Default:​ false

``` swift
@objc open var isForceLabelsEnabled: Bool 
```

### `limitLines`

The LimitLines of this axis.

``` swift
@objc open var limitLines : [ChartLimitLine]
```

### `isAxisMinCustom`

``` swift
@objc open var isAxisMinCustom: Bool 
```

### `isAxisMaxCustom`

``` swift
@objc open var isAxisMaxCustom: Bool 
```

### `axisMinimum`

The minimum value for this axis.
If set, this value will not be calculated automatically depending on the provided data.
Use `resetCustomAxisMin()` to undo this.

``` swift
@objc open var axisMinimum: Double
```

### `axisMaximum`

The maximum value for this axis.
If set, this value will not be calculated automatically depending on the provided data.
Use `resetCustomAxisMax()` to undo this.

``` swift
@objc open var axisMaximum: Double
```

## Methods

### `getLongestLabel()`

``` swift
@objc open func getLongestLabel() -> String
```

### `getFormattedLabel(_:)`

``` swift
@objc open func getFormattedLabel(_ index: Int) -> String
```

  - Returns: The formatted label at the specified index. This will either use the auto-formatter or the custom formatter (if one is set).

### `setLabelCount(_:force:)`

``` swift
@objc open func setLabelCount(_ count: Int, force: Bool)
```

### `addLimitLine(_:)`

Adds a new ChartLimitLine to this axis.

``` swift
@objc open func addLimitLine(_ line: ChartLimitLine)
```

### `removeLimitLine(_:)`

Removes the specified ChartLimitLine from the axis.

``` swift
@objc open func removeLimitLine(_ line: ChartLimitLine)
```

### `removeAllLimitLines()`

Removes all LimitLines from the axis.

``` swift
@objc open func removeAllLimitLines()
```

### `resetCustomAxisMin()`

By calling this method, any custom minimum value that has been previously set is reseted, and the calculation is done automatically.

``` swift
@objc open func resetCustomAxisMin()
```

### `resetCustomAxisMax()`

By calling this method, any custom maximum value that has been previously set is reseted, and the calculation is done automatically.

``` swift
@objc open func resetCustomAxisMax()
```

### `calculate(min:max:)`

Calculates the minimum, maximum and range values of the YAxis with the given minimum and maximum values from the chart data.

``` swift
@objc open func calculate(min dataMin: Double, max dataMax: Double)
```

#### Parameters

  - dataMin: the y-min value according to chart data
  - dataMax: the y-max value according to chart
