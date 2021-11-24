# LegendRenderer

``` swift
@objc(ChartLegendRenderer)
open class LegendRenderer: Renderer
```

## Inheritance

[`Renderer`](/Renderer)

## Initializers

### `init(viewPortHandler:legend:)`

``` swift
@objc public init(viewPortHandler: ViewPortHandler, legend: Legend?)
```

## Properties

### `legend`

the legend object this renderer renders

``` swift
@objc open var legend: Legend?
```

## Methods

### `computeLegend(data:)`

Prepares the legend and calculates all needed forms, labels and colors.

``` swift
@objc open func computeLegend(data: ChartData)
```

### `renderLegend(context:)`

``` swift
@objc open func renderLegend(context: CGContext)
```

### `drawForm(context:x:y:entry:legend:)`

Draws the Legend-form at the given position with the color at the given index.

``` swift
@objc open func drawForm(
        context: CGContext,
        x: CGFloat,
        y: CGFloat,
        entry: LegendEntry,
        legend: Legend)
```

### `drawLabel(context:x:y:label:font:textColor:)`

Draws the provided label at the given position.

``` swift
@objc open func drawLabel(context: CGContext, x: CGFloat, y: CGFloat, label: String, font: NSUIFont, textColor: NSUIColor)
```
