# LineChartDataProvider

``` swift
@objc
public protocol LineChartDataProvider: BarLineScatterCandleBubbleChartDataProvider
```

## Inheritance

[`BarLineScatterCandleBubbleChartDataProvider`](/BarLineScatterCandleBubbleChartDataProvider)

## Requirements

### lineData

``` swift
var lineData: LineChartData? 
```

### getAxis(\_:​)

``` swift
func getAxis(_ axis: YAxis.AxisDependency) -> YAxis
```
