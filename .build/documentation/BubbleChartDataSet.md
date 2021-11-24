# BubbleChartDataSet

``` swift
open class BubbleChartDataSet: BarLineScatterCandleBubbleChartDataSet, IBubbleChartDataSet
```

## Inheritance

[`BarLineScatterCandleBubbleChartDataSet`](/BarLineScatterCandleBubbleChartDataSet), [`IBubbleChartDataSet`](/IBubbleChartDataSet)

## Properties

### `maxSize`

``` swift
open var maxSize: CGFloat 
```

### `normalizeSizeEnabled`

``` swift
@objc open var normalizeSizeEnabled: Bool = true
```

### `isNormalizeSizeEnabled`

``` swift
open var isNormalizeSizeEnabled: Bool 
```

### `highlightCircleWidth`

Sets/gets the width of the circle that surrounds the bubble when highlighted

``` swift
open var highlightCircleWidth: CGFloat = 2.5
```

## Methods

### `calcMinMax(entry:)`

``` swift
open override func calcMinMax(entry e: ChartDataEntry)
```

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
