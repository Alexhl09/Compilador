# YAxisRendererHorizontalBarChart

``` swift
open class YAxisRendererHorizontalBarChart: YAxisRenderer
```

## Inheritance

[`YAxisRenderer`](/YAxisRenderer)

## Initializers

### `init(viewPortHandler:yAxis:transformer:)`

``` swift
public override init(viewPortHandler: ViewPortHandler, yAxis: YAxis?, transformer: Transformer?)
```

## Properties

### `gridClippingRect`

``` swift
open override var gridClippingRect: CGRect
```

## Methods

### `computeAxis(min:max:inverted:)`

Computes the axis values.

``` swift
open override func computeAxis(min: Double, max: Double, inverted: Bool)
```

### `renderAxisLabels(context:)`

draws the y-axis labels to the screen

``` swift
open override func renderAxisLabels(context: CGContext)
```

### `renderAxisLine(context:)`

``` swift
open override func renderAxisLine(context: CGContext)
```

### `drawYLabels(context:fixedPosition:positions:offset:)`

draws the y-labels on the specified x-position

``` swift
@objc open func drawYLabels(
        context: CGContext,
        fixedPosition: CGFloat,
        positions: [CGPoint],
        offset: CGFloat)
```

### `drawGridLine(context:position:)`

``` swift
open override func drawGridLine(
        context: CGContext,
        position: CGPoint)
```

### `transformedPositions()`

``` swift
open override func transformedPositions() -> [CGPoint]
```

### `drawZeroLine(context:)`

Draws the zero line at the specified position.

``` swift
open override func drawZeroLine(context: CGContext)
```

### `renderLimitLines(context:)`

``` swift
open override func renderLimitLines(context: CGContext)
```
