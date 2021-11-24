# PieRadarHighlighter

``` swift
@objc(PieRadarChartHighlighter)
open class PieRadarHighlighter: ChartHighlighter
```

## Inheritance

[`ChartHighlighter`](/ChartHighlighter)

## Methods

### `getHighlight(x:y:)`

``` swift
open override func getHighlight(x: CGFloat, y: CGFloat) -> Highlight?
```

### `closestHighlight(index:x:y:)`

``` swift
@objc open func closestHighlight(index: Int, x: CGFloat, y: CGFloat) -> Highlight?
```

  - Parameters:
      - index:
      - x:
      - y:
  - Returns: The closest Highlight object of the given objects based on the touch position inside the chart.
