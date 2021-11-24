# LineScatterCandleRadarRenderer

``` swift
@objc(LineScatterCandleRadarChartRenderer)
open class LineScatterCandleRadarRenderer: BarLineScatterCandleBubbleRenderer
```

## Inheritance

[`BarLineScatterCandleBubbleRenderer`](/BarLineScatterCandleBubbleRenderer)

## Initializers

### `init(animator:viewPortHandler:)`

``` swift
public override init(animator: Animator, viewPortHandler: ViewPortHandler)
```

## Methods

### `drawHighlightLines(context:point:set:)`

Draws vertical & horizontal highlight-lines if enabled.
:​param:​ context
:​param:​ points
:​param:​ horizontal
:​param:​ vertical

``` swift
@objc open func drawHighlightLines(context: CGContext, point: CGPoint, set: ILineScatterCandleRadarChartDataSet)
```
