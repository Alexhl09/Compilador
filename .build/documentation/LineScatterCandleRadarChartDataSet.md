# LineScatterCandleRadarChartDataSet

``` swift
open class LineScatterCandleRadarChartDataSet: BarLineScatterCandleBubbleChartDataSet, ILineScatterCandleRadarChartDataSet
```

## Inheritance

[`BarLineScatterCandleBubbleChartDataSet`](/BarLineScatterCandleBubbleChartDataSet), [`ILineScatterCandleRadarChartDataSet`](/ILineScatterCandleRadarChartDataSet)

## Properties

### `drawHorizontalHighlightIndicatorEnabled`

Enables / disables the horizontal highlight-indicator. If disabled, the indicator is not drawn.

``` swift
open var drawHorizontalHighlightIndicatorEnabled = true
```

### `drawVerticalHighlightIndicatorEnabled`

Enables / disables the vertical highlight-indicator. If disabled, the indicator is not drawn.

``` swift
open var drawVerticalHighlightIndicatorEnabled = true
```

### `isHorizontalHighlightIndicatorEnabled`

`true` if horizontal highlight indicator lines are enabled (drawn)

``` swift
open var isHorizontalHighlightIndicatorEnabled: Bool 
```

### `isVerticalHighlightIndicatorEnabled`

`true` if vertical highlight indicator lines are enabled (drawn)

``` swift
open var isVerticalHighlightIndicatorEnabled: Bool 
```

## Methods

### `setDrawHighlightIndicators(_:)`

Enables / disables both vertical and horizontal highlight-indicators.
:​param:​ enabled

``` swift
open func setDrawHighlightIndicators(_ enabled: Bool)
```

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
