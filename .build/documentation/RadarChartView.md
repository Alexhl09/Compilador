# RadarChartView

Implementation of the RadarChart, a "spidernet"-like chart. It works best
when displaying 5-10 entries per DataSet.

``` swift
open class RadarChartView: PieRadarChartViewBase
```

## Inheritance

[`PieRadarChartViewBase`](/PieRadarChartViewBase)

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

### `webLineWidth`

width of the web lines that come from the center.

``` swift
@objc open var webLineWidth 
```

### `innerWebLineWidth`

width of the web lines that are in between the lines coming from the center

``` swift
@objc open var innerWebLineWidth 
```

### `webColor`

color for the web lines that come from the center

``` swift
@objc open var webColor 
```

### `innerWebColor`

color for the web lines in between the lines that come from the center.

``` swift
@objc open var innerWebColor 
```

### `webAlpha`

transparency the grid is drawn with (0.0 - 1.0)

``` swift
@objc open var webAlpha: CGFloat = 150.0 / 255.0
```

### `drawWeb`

flag indicating if the web lines should be drawn or not

``` swift
@objc open var drawWeb = true
```

### `factor`

The factor that is needed to transform values into pixels.

``` swift
@objc open var factor: CGFloat
```

### `sliceAngle`

The angle that each slice in the radar chart occupies.

``` swift
@objc open var sliceAngle: CGFloat
```

### `yAxis`

The object that represents all y-labels of the RadarChart.

``` swift
@objc open var yAxis: YAxis
```

### `skipWebLineCount`

Sets the number of web-lines that should be skipped on chart web before the next one is drawn. This targets the lines that come from the center of the RadarChart.
if count = 1 -\> 1 line is skipped in between

``` swift
@objc open var skipWebLineCount: Int
```

### `radius`

``` swift
open override var radius: CGFloat
```

### `chartYMax`

The maximum value this chart can display on it's y-axis.

``` swift
open override var chartYMax: Double 
```

### `chartYMin`

The minimum value this chart can display on it's y-axis.

``` swift
open override var chartYMin: Double 
```

### `yRange`

The range of y-values this chart can display.

``` swift
@objc open var yRange: Double 
```

## Methods

### `notifyDataSetChanged()`

``` swift
open override func notifyDataSetChanged()
```

### `draw(_:)`

``` swift
open override func draw(_ rect: CGRect)
```

### `indexForAngle(_:)`

``` swift
open override func indexForAngle(_ angle: CGFloat) -> Int
```
