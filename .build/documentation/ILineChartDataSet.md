# ILineChartDataSet

``` swift
@objc
public protocol ILineChartDataSet: ILineRadarChartDataSet
```

## Inheritance

[`ILineRadarChartDataSet`](/ILineRadarChartDataSet)

## Requirements

### mode

The drawing mode for this line dataset

``` swift
var mode: LineChartDataSet.Mode 
```

**default**: Linear

### cubicIntensity

Intensity for cubic lines (min = 0.05, max = 1)

``` swift
var cubicIntensity: CGFloat 
```

**default**: 0.2

### circleRadius

The radius of the drawn circles.

``` swift
var circleRadius: CGFloat 
```

### circleHoleRadius

The hole radius of the drawn circles.

``` swift
var circleHoleRadius: CGFloat 
```

### circleColors

``` swift
var circleColors: [NSUIColor] 
```

### getCircleColor(atIndex:​)

``` swift
func getCircleColor(atIndex: Int) -> NSUIColor?
```

  - Returns: The color at the given index of the DataSet's circle-color array.
    Performs a IndexOutOfBounds check by modulus.

### setCircleColor(\_:​)

Sets the one and ONLY color that should be used for this DataSet.
Internally, this recreates the colors array and adds the specified color.

``` swift
func setCircleColor(_ color: NSUIColor)
```

### resetCircleColors(\_:​)

Resets the circle-colors array and creates a new one

``` swift
func resetCircleColors(_ index: Int)
```

### drawCirclesEnabled

If true, drawing circles is enabled

``` swift
var drawCirclesEnabled: Bool 
```

### isDrawCirclesEnabled

`true` if drawing circles for this DataSet is enabled, `false` ifnot

``` swift
var isDrawCirclesEnabled: Bool 
```

### circleHoleColor

The color of the inner circle (the circle-hole).

``` swift
var circleHoleColor: NSUIColor? 
```

### drawCircleHoleEnabled

`true` if drawing circles for this DataSet is enabled, `false` ifnot

``` swift
var drawCircleHoleEnabled: Bool 
```

### isDrawCircleHoleEnabled

`true` if drawing the circle-holes is enabled, `false` ifnot.

``` swift
var isDrawCircleHoleEnabled: Bool 
```

### lineDashPhase

This is how much (in pixels) into the dash pattern are we starting from.

``` swift
var lineDashPhase: CGFloat 
```

### lineDashLengths

This is the actual dash pattern.
I.e. \[2, 3\] will paint \[--   --   \]
\[1, 3, 4, 2\] will paint \[-   ----  -   ----  \]

``` swift
var lineDashLengths: [CGFloat]? 
```

### lineCapType

Line cap type, default is CGLineCap.Butt

``` swift
var lineCapType: CGLineCap 
```

### fillFormatter

Sets a custom IFillFormatter to the chart that handles the position of the filled-line for each DataSet. Set this to null to use the default logic.

``` swift
var fillFormatter: IFillFormatter? 
```
