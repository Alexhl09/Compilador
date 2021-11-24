# IBarChartDataSet

``` swift
@objc
public protocol IBarChartDataSet: IBarLineScatterCandleBubbleChartDataSet
```

## Inheritance

[`IBarLineScatterCandleBubbleChartDataSet`](/IBarLineScatterCandleBubbleChartDataSet)

## Requirements

### isStacked

`true` if this DataSet is stacked (stacksize \> 1) or not.

``` swift
var isStacked: Bool 
```

### stackSize

The maximum number of bars that can be stacked upon another in this DataSet.

``` swift
var stackSize: Int 
```

### barShadowColor

the color used for drawing the bar-shadows. The bar shadows is a surface behind the bar that indicates the maximum value

``` swift
var barShadowColor: NSUIColor 
```

### barBorderWidth

the width used for drawing borders around the bars. If borderWidth == 0, no border will be drawn.

``` swift
var barBorderWidth : CGFloat 
```

### barBorderColor

the color drawing borders around the bars.

``` swift
var barBorderColor: NSUIColor 
```

### highlightAlpha

the alpha value (transparency) that is used for drawing the highlight indicator bar. min = 0.0 (fully transparent), max = 1.0 (fully opaque)

``` swift
var highlightAlpha: CGFloat 
```

### stackLabels

array of labels used to describe the different values of the stacked bars

``` swift
var stackLabels: [String] 
```
