# ILineRadarChartDataSet

``` swift
@objc
public protocol ILineRadarChartDataSet: ILineScatterCandleRadarChartDataSet
```

## Inheritance

[`ILineScatterCandleRadarChartDataSet`](/ILineScatterCandleRadarChartDataSet)

## Requirements

### fillColor

The color that is used for filling the line surface area.

``` swift
var fillColor: NSUIColor 
```

### fill

``` swift
var fill: Fill? 
```

  - Returns: The object that is used for filling the area below the line.
    **default**: nil

### fillAlpha

The alpha value that is used for filling the line surface.
**default**:​ 0.33

``` swift
var fillAlpha: CGFloat 
```

### lineWidth

line width of the chart (min = 0.0, max = 10)

``` swift
var lineWidth: CGFloat 
```

**default**: 1

### drawFilledEnabled

Set to `true` if the DataSet should be drawn filled (surface), and not just as a line.
Disabling this will give great performance boost.
Please note that this method uses the path clipping for drawing the filled area (with images, gradients and layers).

``` swift
var drawFilledEnabled: Bool 
```

### isDrawFilledEnabled

`true` if filled drawing is enabled, `false` if not

``` swift
var isDrawFilledEnabled: Bool 
```
