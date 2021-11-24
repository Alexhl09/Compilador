# AxisRendererBase

``` swift
@objc(ChartAxisRendererBase)
open class AxisRendererBase: Renderer
```

## Inheritance

[`Renderer`](/Renderer)

## Initializers

### `init(viewPortHandler:transformer:axis:)`

``` swift
@objc public init(viewPortHandler: ViewPortHandler, transformer: Transformer?, axis: AxisBase?)
```

## Properties

### `axis`

base axis this axis renderer works with

``` swift
@objc open var axis: AxisBase?
```

### `transformer`

transformer to transform values to screen pixels and return

``` swift
@objc open var transformer: Transformer?
```

## Methods

### `renderAxisLabels(context:)`

Draws the axis labels on the specified context

``` swift
@objc open func renderAxisLabels(context: CGContext)
```

### `renderGridLines(context:)`

Draws the grid lines belonging to the axis.

``` swift
@objc open func renderGridLines(context: CGContext)
```

### `renderAxisLine(context:)`

Draws the line that goes alongside the axis.

``` swift
@objc open func renderAxisLine(context: CGContext)
```

### `renderLimitLines(context:)`

Draws the LimitLines associated with this axis to the screen.

``` swift
@objc open func renderLimitLines(context: CGContext)
```

### `computeAxis(min:max:inverted:)`

Computes the axis values.

``` swift
@objc open func computeAxis(min: Double, max: Double, inverted: Bool)
```

#### Parameters

  - min: the minimum value in the data object for this axis
  - max: the maximum value in the data object for this axis

### `computeAxisValues(min:max:)`

Sets up the axis values. Computes the desired number of labels between the two given extremes.

``` swift
@objc open func computeAxisValues(min: Double, max: Double)
```
