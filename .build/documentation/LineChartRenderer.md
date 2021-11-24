# LineChartRenderer

``` swift
open class LineChartRenderer: LineRadarRenderer
```

## Inheritance

[`LineRadarRenderer`](/LineRadarRenderer)

## Initializers

### `init(dataProvider:animator:viewPortHandler:)`

``` swift
@objc public init(dataProvider: LineChartDataProvider, animator: Animator, viewPortHandler: ViewPortHandler)
```

## Properties

### `dataProvider`

``` swift
@objc open weak var dataProvider: LineChartDataProvider?
```

## Methods

### `drawData(context:)`

``` swift
open override func drawData(context: CGContext)
```

### `drawDataSet(context:dataSet:)`

``` swift
@objc open func drawDataSet(context: CGContext, dataSet: ILineChartDataSet)
```

### `drawCubicBezier(context:dataSet:)`

``` swift
@objc open func drawCubicBezier(context: CGContext, dataSet: ILineChartDataSet)
```

### `drawHorizontalBezier(context:dataSet:)`

``` swift
@objc open func drawHorizontalBezier(context: CGContext, dataSet: ILineChartDataSet)
```

### `drawCubicFill(context:dataSet:spline:matrix:bounds:)`

``` swift
open func drawCubicFill(
        context: CGContext,
                dataSet: ILineChartDataSet,
                spline: CGMutablePath,
                matrix: CGAffineTransform,
                bounds: XBounds)
```

### `drawLinear(context:dataSet:)`

``` swift
@objc open func drawLinear(context: CGContext, dataSet: ILineChartDataSet)
```

### `drawLinearFill(context:dataSet:trans:bounds:)`

``` swift
open func drawLinearFill(context: CGContext, dataSet: ILineChartDataSet, trans: Transformer, bounds: XBounds)
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
