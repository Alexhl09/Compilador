# PieChartRenderer

``` swift
open class PieChartRenderer: DataRenderer
```

## Inheritance

[`DataRenderer`](/DataRenderer)

## Initializers

### `init(chart:animator:viewPortHandler:)`

``` swift
@objc public init(chart: PieChartView, animator: Animator, viewPortHandler: ViewPortHandler)
```

## Properties

### `chart`

``` swift
@objc open weak var chart: PieChartView?
```

## Methods

### `drawData(context:)`

``` swift
open override func drawData(context: CGContext)
```

### `calculateMinimumRadiusForSpacedSlice(center:radius:angle:arcStartPointX:arcStartPointY:startAngle:sweepAngle:)`

``` swift
@objc open func calculateMinimumRadiusForSpacedSlice(
        center: CGPoint,
        radius: CGFloat,
        angle: CGFloat,
        arcStartPointX: CGFloat,
        arcStartPointY: CGFloat,
        startAngle: CGFloat,
        sweepAngle: CGFloat) -> CGFloat
```

### `getSliceSpace(dataSet:)`

Calculates the sliceSpace to use based on visible values and their size compared to the set sliceSpace.

``` swift
@objc open func getSliceSpace(dataSet: IPieChartDataSet) -> CGFloat
```

### `drawDataSet(context:dataSet:)`

``` swift
@objc open func drawDataSet(context: CGContext, dataSet: IPieChartDataSet)
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
