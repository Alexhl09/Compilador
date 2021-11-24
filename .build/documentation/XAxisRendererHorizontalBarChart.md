# XAxisRendererHorizontalBarChart

``` swift
open class XAxisRendererHorizontalBarChart: XAxisRenderer
```

## Inheritance

[`XAxisRenderer`](/XAxisRenderer)

## Initializers

### `init(viewPortHandler:xAxis:transformer:chart:)`

``` swift
@objc public init(viewPortHandler: ViewPortHandler, xAxis: XAxis?, transformer: Transformer?, chart: BarChartView)
```

## Properties

### `gridClippingRect`

``` swift
open override var gridClippingRect: CGRect
```

## Methods

### `computeAxis(min:max:inverted:)`

``` swift
open override func computeAxis(min: Double, max: Double, inverted: Bool)
```

### `computeSize()`

``` swift
open override func computeSize()
```

### `renderAxisLabels(context:)`

``` swift
open override func renderAxisLabels(context: CGContext)
```

### `drawLabels(context:pos:anchor:)`

draws the x-labels on the specified y-position

``` swift
open override func drawLabels(context: CGContext, pos: CGFloat, anchor: CGPoint)
```

### `drawLabel(context:formattedLabel:x:y:attributes:anchor:angleRadians:)`

``` swift
@objc open func drawLabel(
        context: CGContext,
        formattedLabel: String,
        x: CGFloat,
        y: CGFloat,
        attributes: [NSAttributedString.Key : Any],
        anchor: CGPoint,
        angleRadians: CGFloat)
```

### `drawGridLine(context:x:y:)`

``` swift
open override func drawGridLine(context: CGContext, x: CGFloat, y: CGFloat)
```

### `renderAxisLine(context:)`

``` swift
open override func renderAxisLine(context: CGContext)
```

### `renderLimitLines(context:)`

``` swift
open override func renderLimitLines(context: CGContext)
```
