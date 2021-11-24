# BarLineScatterCandleBubbleChartDataProvider

``` swift
@objc
public protocol BarLineScatterCandleBubbleChartDataProvider: ChartDataProvider
```

## Inheritance

[`ChartDataProvider`](/ChartDataProvider)

## Requirements

### getTransformer(forAxis:​)

``` swift
func getTransformer(forAxis: YAxis.AxisDependency) -> Transformer
```

### isInverted(axis:​)

``` swift
func isInverted(axis: YAxis.AxisDependency) -> Bool
```

### lowestVisibleX

``` swift
var lowestVisibleX: Double 
```

### highestVisibleX

``` swift
var highestVisibleX: Double 
```
