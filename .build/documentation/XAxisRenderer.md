# XAxisRenderer

``` swift
@objc(ChartXAxisRenderer)
open class XAxisRenderer: AxisRendererBase
```

## Inheritance

[`AxisRendererBase`](/AxisRendererBase)

## Initializers

### `init(viewPortHandler:xAxis:transformer:)`

``` swift
@objc public init(viewPortHandler: ViewPortHandler, xAxis: XAxis?, transformer: Transformer?)
```

## Properties

### `gridClippingRect`

``` swift
@objc open var gridClippingRect: CGRect
```

## Methods

### `computeAxis(min:max:inverted:)`

``` swift
open override func computeAxis(min: Double, max: Double, inverted: Bool)
```

### `computeAxisValues(min:max:)`

``` swift
open override func computeAxisValues(min: Double, max: Double)
```

### `computeSize()`

``` swift
@objc open func computeSize()
```

### `renderAxisLabels(context:)`

``` swift
open override func renderAxisLabels(context: CGContext)
```

### `renderAxisLine(context:)`

``` swift
open override func renderAxisLine(context: CGContext)
```

### `drawLabels(context:pos:anchor:)`

draws the x-labels on the specified y-position

``` swift
@objc open func drawLabels(context: CGContext, pos: CGFloat, anchor: CGPoint)
```

### `drawLabel(context:formattedLabel:x:y:attributes:constrainedToSize:anchor:angleRadians:)`

``` swift
@objc open func drawLabel(
        context: CGContext,
        formattedLabel: String,
        x: CGFloat,
        y: CGFloat,
        attributes: [NSAttributedString.Key : Any],
        constrainedToSize: CGSize,
        anchor: CGPoint,
        angleRadians: CGFloat)
```

### `renderGridLines(context:)`

``` swift
open override func renderGridLines(context: CGContext)
```

### `drawGridLine(context:x:y:)`

``` swift
@objc open func drawGridLine(context: CGContext, x: CGFloat, y: CGFloat)
```

### `renderLimitLines(context:)`

``` swift
open override func renderLimitLines(context: CGContext)
```

### `renderLimitLineLine(context:limitLine:position:)`

``` swift
@objc open func renderLimitLineLine(context: CGContext, limitLine: ChartLimitLine, position: CGPoint)
```

### `renderLimitLineLabel(context:limitLine:position:yOffset:)`

``` swift
@objc open func renderLimitLineLabel(context: CGContext, limitLine: ChartLimitLine, position: CGPoint, yOffset: CGFloat)
```
