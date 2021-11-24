# BarChartDataSet

``` swift
open class BarChartDataSet: BarLineScatterCandleBubbleChartDataSet, IBarChartDataSet
```

## Inheritance

[`BarLineScatterCandleBubbleChartDataSet`](/BarLineScatterCandleBubbleChartDataSet), [`IBarChartDataSet`](/IBarChartDataSet)

## Initializers

### `init()`

``` swift
public required init()
```

### `init(entries:label:)`

``` swift
public override init(entries: [ChartDataEntry]?, label: String?)
```

## Properties

### `stackSize`

The maximum number of bars that can be stacked upon another in this DataSet.

``` swift
open var stackSize: Int
```

### `isStacked`

`true` if this DataSet is stacked (stacksize \> 1) or not.

``` swift
open var isStacked: Bool
```

### `entryCountStacks`

The overall entry count, including counting each stack-value individually

``` swift
@objc open var entryCountStacks: Int
```

### `stackLabels`

array of labels used to describe the different values of the stacked bars

``` swift
open var stackLabels: [String] = []
```

### `barShadowColor`

the color used for drawing the bar-shadows. The bar shadows is a surface behind the bar that indicates the maximum value

``` swift
open var barShadowColor 
```

### `barBorderWidth`

the width used for drawing borders around the bars. If borderWidth == 0, no border will be drawn.

``` swift
open var barBorderWidth : CGFloat = 0.0
```

### `barBorderColor`

the color drawing borders around the bars.

``` swift
open var barBorderColor = NSUIColor.black
```

### `highlightAlpha`

the alpha value (transparency) that is used for drawing the highlight indicator bar. min = 0.0 (fully transparent), max = 1.0 (fully opaque)

``` swift
open var highlightAlpha 
```

## Methods

### `calcMinMax(entry:)`

``` swift
open override func calcMinMax(entry e: ChartDataEntry)
```

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
