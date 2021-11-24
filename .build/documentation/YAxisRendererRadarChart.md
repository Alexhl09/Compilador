# YAxisRendererRadarChart

``` swift
open class YAxisRendererRadarChart: YAxisRenderer
```

## Inheritance

[`YAxisRenderer`](/YAxisRenderer)

## Initializers

### `init(viewPortHandler:yAxis:chart:)`

``` swift
@objc public init(viewPortHandler: ViewPortHandler, yAxis: YAxis?, chart: RadarChartView)
```

## Methods

### `computeAxisValues(min:max:)`

``` swift
open override func computeAxisValues(min yMin: Double, max yMax: Double)
```

### `renderAxisLabels(context:)`

``` swift
open override func renderAxisLabels(context: CGContext)
```

### `renderLimitLines(context:)`

``` swift
open override func renderLimitLines(context: CGContext)
```
