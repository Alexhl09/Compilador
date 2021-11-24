# BubbleChartRenderer

``` swift
open class BubbleChartRenderer: BarLineScatterCandleBubbleRenderer
```

## Inheritance

[`BarLineScatterCandleBubbleRenderer`](/BarLineScatterCandleBubbleRenderer)

## Initializers

### `init(dataProvider:animator:viewPortHandler:)`

``` swift
@objc public init(dataProvider: BubbleChartDataProvider, animator: Animator, viewPortHandler: ViewPortHandler)
```

## Properties

### `dataProvider`

``` swift
@objc open weak var dataProvider: BubbleChartDataProvider?
```

## Methods

### `drawData(context:)`

``` swift
open override func drawData(context: CGContext)
```

### `drawDataSet(context:dataSet:dataSetIndex:)`

``` swift
@objc open func drawDataSet(context: CGContext, dataSet: IBubbleChartDataSet, dataSetIndex: Int)
```

### `drawValues(context:)`

``` swift
open override func drawValues(context: CGContext)
```

### `drawExtras(context:)`

``` swift
open override func drawExtras(context: CGContext)
```

### `drawHighlighted(context:indices:)`

``` swift
open override func drawHighlighted(context: CGContext, indices: [Highlight])
```
