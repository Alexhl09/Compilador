# LineRadarChartDataSet

``` swift
open class LineRadarChartDataSet: LineScatterCandleRadarChartDataSet, ILineRadarChartDataSet
```

## Inheritance

[`LineScatterCandleRadarChartDataSet`](/LineScatterCandleRadarChartDataSet), [`ILineRadarChartDataSet`](/ILineRadarChartDataSet)

## Properties

### `fillColor`

The color that is used for filling the line surface area.

``` swift
open var fillColor: NSUIColor
```

### `fill`

The object that is used for filling the area below the line.
**default**:​ nil

``` swift
open var fill: Fill?
```

### `fillAlpha`

The alpha value that is used for filling the line surface,
**default**:​ 0.33

``` swift
open var fillAlpha 
```

### `lineWidth`

line width of the chart (min = 0.0, max = 10)

``` swift
open var lineWidth: CGFloat
```

**default**: 1

### `drawFilledEnabled`

Set to `true` if the DataSet should be drawn filled (surface), and not just as a line.
Disabling this will give great performance boost.
Please note that this method uses the path clipping for drawing the filled area (with images, gradients and layers).

``` swift
open var drawFilledEnabled = false
```

### `isDrawFilledEnabled`

`true` if filled drawing is enabled, `false` ifnot

``` swift
open var isDrawFilledEnabled: Bool
```

## Methods

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
