# LineRadarRenderer

``` swift
@objc(LineRadarChartRenderer)
open class LineRadarRenderer: LineScatterCandleRadarRenderer
```

## Inheritance

[`LineScatterCandleRadarRenderer`](/LineScatterCandleRadarRenderer)

## Initializers

### `init(animator:viewPortHandler:)`

``` swift
public override init(animator: Animator, viewPortHandler: ViewPortHandler)
```

## Methods

### `drawFilledPath(context:path:fill:fillAlpha:)`

Draws the provided path in filled mode with the provided drawable.

``` swift
@objc open func drawFilledPath(context: CGContext, path: CGPath, fill: Fill, fillAlpha: CGFloat)
```

### `drawFilledPath(context:path:fillColor:fillAlpha:)`

Draws the provided path in filled mode with the provided color and alpha.

``` swift
@objc open func drawFilledPath(context: CGContext, path: CGPath, fillColor: NSUIColor, fillAlpha: CGFloat)
```
