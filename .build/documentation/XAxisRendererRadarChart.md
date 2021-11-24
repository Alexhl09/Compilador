# XAxisRendererRadarChart

``` swift
open class XAxisRendererRadarChart: XAxisRenderer
```

## Inheritance

[`XAxisRenderer`](/XAxisRenderer)

## Initializers

### `init(viewPortHandler:xAxis:chart:)`

``` swift
@objc public init(viewPortHandler: ViewPortHandler, xAxis: XAxis?, chart: RadarChartView)
```

## Properties

### `chart`

``` swift
@objc open weak var chart: RadarChartView?
```

## Methods

### `renderAxisLabels(context:)`

``` swift
open override func renderAxisLabels(context: CGContext)
```

### `drawLabel(context:formattedLabel:x:y:attributes:anchor:angleRadians:)`

``` swift
@objc open func drawLabel(
        context: CGContext,
        formattedLabel: String,
        x: CGFloat,
        y: CGFloat,
        attributes: [NSAttributedString.Key : Any],
        anchor: CGPoint,
        angleRadians: CGFloat)
```

### `renderLimitLines(context:)`

``` swift
open override func renderLimitLines(context: CGContext)
```
