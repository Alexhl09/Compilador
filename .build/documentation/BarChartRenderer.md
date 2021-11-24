# BarChartRenderer

``` swift
open class BarChartRenderer: BarLineScatterCandleBubbleRenderer
```

## Inheritance

[`BarLineScatterCandleBubbleRenderer`](/BarLineScatterCandleBubbleRenderer)

## Initializers

### `init(dataProvider:animator:viewPortHandler:)`

``` swift
@objc public init(dataProvider: BarChartDataProvider, animator: Animator, viewPortHandler: ViewPortHandler)
```

## Properties

### `dataProvider`

``` swift
@objc open weak var dataProvider: BarChartDataProvider?
```

## Methods

### `initBuffers()`

``` swift
open override func initBuffers()
```

### `drawData(context:)`

``` swift
open override func drawData(context: CGContext)
```

### `drawDataSet(context:dataSet:index:)`

``` swift
@objc open func drawDataSet(context: CGContext, dataSet: IBarChartDataSet, index: Int)
```

### `prepareBarHighlight(x:y1:y2:barWidthHalf:trans:rect:)`

``` swift
open func prepareBarHighlight(
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

### `drawValue(context:value:xPos:yPos:font:align:color:)`

Draws a value at the specified x and y position.

``` swift
@objc open func drawValue(context: CGContext, value: String, xPos: CGFloat, yPos: CGFloat, font: NSUIFont, align: NSTextAlignment, color: NSUIColor)
```

### `drawExtras(context:)`

``` swift
open override func drawExtras(context: CGContext)
```

### `drawHighlighted(context:indices:)`

``` swift
open override func drawHighlighted(context: CGContext, indices: [Highlight])
```
