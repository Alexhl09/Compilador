# ILineScatterCandleRadarChartDataSet

``` swift
@objc
public protocol ILineScatterCandleRadarChartDataSet: IBarLineScatterCandleBubbleChartDataSet
```

## Inheritance

[`IBarLineScatterCandleBubbleChartDataSet`](/IBarLineScatterCandleBubbleChartDataSet)

## Requirements

### drawHorizontalHighlightIndicatorEnabled

Enables / disables the horizontal highlight-indicator. If disabled, the indicator is not drawn.

``` swift
var drawHorizontalHighlightIndicatorEnabled: Bool 
```

### drawVerticalHighlightIndicatorEnabled

Enables / disables the vertical highlight-indicator. If disabled, the indicator is not drawn.

``` swift
var drawVerticalHighlightIndicatorEnabled: Bool 
```

### isHorizontalHighlightIndicatorEnabled

`true` if horizontal highlight indicator lines are enabled (drawn)

``` swift
var isHorizontalHighlightIndicatorEnabled: Bool 
```

### isVerticalHighlightIndicatorEnabled

`true` if vertical highlight indicator lines are enabled (drawn)

``` swift
var isVerticalHighlightIndicatorEnabled: Bool 
```

### setDrawHighlightIndicators(\_:​)

Enables / disables both vertical and horizontal highlight-indicators.
:​param:​ enabled

``` swift
func setDrawHighlightIndicators(_ enabled: Bool)
```
