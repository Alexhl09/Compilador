# ChartDataProvider

``` swift
@objc
public protocol ChartDataProvider
```

## Requirements

### chartXMin

The minimum x-value of the chart, regardless of zoom or translation.

``` swift
var chartXMin: Double 
```

### chartXMax

The maximum x-value of the chart, regardless of zoom or translation.

``` swift
var chartXMax: Double 
```

### chartYMin

The minimum y-value of the chart, regardless of zoom or translation.

``` swift
var chartYMin: Double 
```

### chartYMax

The maximum y-value of the chart, regardless of zoom or translation.

``` swift
var chartYMax: Double 
```

### maxHighlightDistance

``` swift
var maxHighlightDistance: CGFloat 
```

### xRange

``` swift
var xRange: Double 
```

### centerOffsets

``` swift
var centerOffsets: CGPoint 
```

### data

``` swift
var data: ChartData? 
```

### maxVisibleCount

``` swift
var maxVisibleCount: Int 
```
