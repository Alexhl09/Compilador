# CandleStickChartRenderer

``` swift
open class CandleStickChartRenderer: LineScatterCandleRadarRenderer
```

## Inheritance

[`LineScatterCandleRadarRenderer`](/LineScatterCandleRadarRenderer)

## Initializers

### `init(dataProvider:animator:viewPortHandler:)`

``` swift
@objc public init(dataProvider: CandleChartDataProvider, animator: Animator, viewPortHandler: ViewPortHandler)
```

## Properties

### `dataProvider`

``` swift
@objc open weak var dataProvider: CandleChartDataProvider?
```

## Methods

### `drawData(context:)`

``` swift
open override func drawData(context: CGContext)
```

### `drawDataSet(context:dataSet:)`

``` swift
@objc open func drawDataSet(context: CGContext, dataSet: ICandleChartDataSet)
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
