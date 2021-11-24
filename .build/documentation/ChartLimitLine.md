# ChartLimitLine

The limit line is an additional feature for all Line, Bar and ScatterCharts.
It allows the displaying of an additional line in the chart that marks a certain maximum / limit on the specified axis (x- or y-axis).

``` swift
open class ChartLimitLine: ComponentBase
```

## Inheritance

[`ComponentBase`](/ComponentBase)

## Initializers

### `init()`

``` swift
public override init()
```

### `init(limit:)`

``` swift
@objc public init(limit: Double)
```

### `init(limit:label:)`

``` swift
@objc public init(limit: Double, label: String)
```

## Properties

### `limit`

limit / maximum (the y-value or xIndex)

``` swift
@objc open var limit 
```

### `lineColor`

``` swift
@objc open var lineColor 
```

### `lineDashPhase`

``` swift
@objc open var lineDashPhase 
```

### `lineDashLengths`

``` swift
@objc open var lineDashLengths: [CGFloat]?
```

### `valueTextColor`

``` swift
@objc open var valueTextColor = NSUIColor.black
```

### `valueFont`

``` swift
@objc open var valueFont 
```

### `drawLabelEnabled`

``` swift
@objc open var drawLabelEnabled = true
```

### `label`

``` swift
@objc open var label = ""
```

### `labelPosition`

``` swift
@objc open var labelPosition = LabelPosition.topRight
```

### `lineWidth`

set the line width of the chart (min = 0.2, max = 12); default 2

``` swift
@objc open var lineWidth: CGFloat
```
