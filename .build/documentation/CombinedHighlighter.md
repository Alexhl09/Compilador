# CombinedHighlighter

``` swift
@objc(CombinedChartHighlighter)
open class CombinedHighlighter: ChartHighlighter
```

## Inheritance

[`ChartHighlighter`](/ChartHighlighter)

## Initializers

### `init(chart:barDataProvider:)`

``` swift
@objc public init(chart: CombinedChartDataProvider, barDataProvider: BarChartDataProvider)
```

## Methods

### `getHighlights(xValue:x:y:)`

``` swift
open override func getHighlights(xValue: Double, x: CGFloat, y: CGFloat) -> [Highlight]
```
