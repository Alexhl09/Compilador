# RadarChartRenderer

``` swift
open class RadarChartRenderer: LineRadarRenderer
```

## Inheritance

[`LineRadarRenderer`](/LineRadarRenderer)

## Initializers

### `init(chart:animator:viewPortHandler:)`

``` swift
@objc public init(chart: RadarChartView, animator: Animator, viewPortHandler: ViewPortHandler)
```

## Properties

### `chart`

``` swift
@objc open weak var chart: RadarChartView?
```

## Methods

### `drawData(context:)`

``` swift
open override func drawData(context: CGContext)
```

### `drawValues(context:)`

``` swift
open override func drawValues(context: CGContext)
```

### `drawExtras(context:)`

``` swift
open override func drawExtras(context: CGContext)
```

### `drawWeb(context:)`

``` swift
@objc open func drawWeb(context: CGContext)
```

### `drawHighlighted(context:indices:)`

``` swift
open override func drawHighlighted(context: CGContext, indices: [Highlight])
```
