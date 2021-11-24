# BarChartData

``` swift
open class BarChartData: BarLineScatterCandleBubbleChartData
```

## Inheritance

[`BarLineScatterCandleBubbleChartData`](/BarLineScatterCandleBubbleChartData)

## Initializers

### `init()`

``` swift
public override init()
```

### `init(dataSets:)`

``` swift
public override init(dataSets: [IChartDataSet]?)
```

## Properties

### `barWidth`

The width of the bars on the x-axis, in values (not pixels)

``` swift
@objc open var barWidth 
```

**default**: 0.85

## Methods

### `groupBars(fromX:groupSpace:barSpace:)`

Groups all BarDataSet objects this data object holds together by modifying the x-value of their entries.
Previously set x-values of entries will be overwritten. Leaves space between bars and groups as specified by the parameters.
Do not forget to call notifyDataSetChanged() on your BarChart object after calling this method.

``` swift
@objc open func groupBars(fromX: Double, groupSpace: Double, barSpace: Double)
```

#### Parameters

  - fromX: the starting point on the x-axis where the grouping should begin
  - groupSpace: The space between groups of bars in values (not pixels) e.g. 0.8f for bar width 1f
  - barSpace: The space between individual bars in values (not pixels) e.g. 0.1f for bar width 1f

### `groupWidth(groupSpace:barSpace:)`

In case of grouped bars, this method returns the space an individual group of bar needs on the x-axis.

``` swift
@objc open func groupWidth(groupSpace: Double, barSpace: Double) -> Double
```

#### Parameters

  - groupSpace:
  - barSpace:
