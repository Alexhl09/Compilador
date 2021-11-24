# LineChartDataSet

``` swift
open class LineChartDataSet: LineRadarChartDataSet, ILineChartDataSet
```

## Inheritance

[`LineRadarChartDataSet`](/LineRadarChartDataSet), [`ILineChartDataSet`](/ILineChartDataSet)

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

### `mode`

The drawing mode for this line dataset

``` swift
open var mode: Mode = Mode.linear
```

**default**: Linear

### `cubicIntensity`

Intensity for cubic lines (min = 0.05, max = 1)

``` swift
open var cubicIntensity: CGFloat
```

**default**: 0.2

### `circleRadius`

The radius of the drawn circles.

``` swift
open var circleRadius 
```

### `circleHoleRadius`

The hole radius of the drawn circles

``` swift
open var circleHoleRadius 
```

### `circleColors`

``` swift
open var circleColors 
```

### `drawCirclesEnabled`

If true, drawing circles is enabled

``` swift
open var drawCirclesEnabled = true
```

### `isDrawCirclesEnabled`

`true` if drawing circles for this DataSet is enabled, `false` ifnot

``` swift
open var isDrawCirclesEnabled: Bool 
```

### `circleHoleColor`

The color of the inner circle (the circle-hole).

``` swift
open var circleHoleColor: NSUIColor? = NSUIColor.white
```

### `drawCircleHoleEnabled`

`true` if drawing circles for this DataSet is enabled, `false` ifnot

``` swift
open var drawCircleHoleEnabled = true
```

### `isDrawCircleHoleEnabled`

`true` if drawing the circle-holes is enabled, `false` ifnot.

``` swift
open var isDrawCircleHoleEnabled: Bool 
```

### `lineDashPhase`

This is how much (in pixels) into the dash pattern are we starting from.

``` swift
open var lineDashPhase 
```

### `lineDashLengths`

This is the actual dash pattern.
I.e. \[2, 3\] will paint \[--   --   \]
\[1, 3, 4, 2\] will paint \[-   ----  -   ----  \]

``` swift
open var lineDashLengths: [CGFloat]?
```

### `lineCapType`

Line cap type, default is CGLineCap.Butt

``` swift
open var lineCapType = CGLineCap.butt
```

### `fillFormatter`

Sets a custom IFillFormatter to the chart that handles the position of the filled-line for each DataSet. Set this to null to use the default logic.

``` swift
open var fillFormatter: IFillFormatter?
```

## Methods

### `getCircleColor(atIndex:)`

``` swift
open func getCircleColor(atIndex index: Int) -> NSUIColor?
```

  - Returns: The color at the given index of the DataSet's circle-color array.
    Performs a IndexOutOfBounds check by modulus.

### `setCircleColor(_:)`

Sets the one and ONLY color that should be used for this DataSet.
Internally, this recreates the colors array and adds the specified color.

``` swift
open func setCircleColor(_ color: NSUIColor)
```

### `setCircleColors(_:)`

``` swift
open func setCircleColors(_ colors: NSUIColor...)
```

### `resetCircleColors(_:)`

Resets the circle-colors array and creates a new one

``` swift
open func resetCircleColors(_ index: Int)
```

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
