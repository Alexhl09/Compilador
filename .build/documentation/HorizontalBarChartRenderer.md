# HorizontalBarChartRenderer

``` swift
open class HorizontalBarChartRenderer: BarChartRenderer
```

## Inheritance

[`BarChartRenderer`](/BarChartRenderer)

## Initializers

### `init(dataProvider:animator:viewPortHandler:)`

``` swift
public override init(dataProvider: BarChartDataProvider, animator: Animator, viewPortHandler: ViewPortHandler)
```

## Methods

### `initBuffers()`

``` swift
open override func initBuffers()
```

### `drawDataSet(context:dataSet:index:)`

``` swift
open override func drawDataSet(context: CGContext, dataSet: IBarChartDataSet, index: Int)
```

### `prepareBarHighlight(x:y1:y2:barWidthHalf:trans:rect:)`

``` swift
open override func prepareBarHighlight(
        x: Double,
        y1: Double,
        y2: Double,
        barWidthHalf: Double,
        trans: Transformer,
        rect: inout CGRect)
```

### `drawValues(context:)`

``` swift
open override func drawValues(context: CGContext)
```

### `isDrawingValuesAllowed(dataProvider:)`

``` swift
open override func isDrawingValuesAllowed(dataProvider: ChartDataProvider?) -> Bool
```
