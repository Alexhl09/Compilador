# AnimatedZoomViewJob

``` swift
open class AnimatedZoomViewJob: AnimatedViewPortJob
```

## Inheritance

[`AnimatedViewPortJob`](/AnimatedViewPortJob)

## Initializers

### `init(viewPortHandler:transformer:view:yAxis:xAxisRange:scaleX:scaleY:xOrigin:yOrigin:zoomCenterX:zoomCenterY:zoomOriginX:zoomOriginY:duration:easing:)`

``` swift
@objc public init(
        viewPortHandler: ViewPortHandler,
        transformer: Transformer,
        view: ChartViewBase,
        yAxis: YAxis,
        xAxisRange: Double,
        scaleX: CGFloat,
        scaleY: CGFloat,
        xOrigin: CGFloat,
        yOrigin: CGFloat,
        zoomCenterX: CGFloat,
        zoomCenterY: CGFloat,
        zoomOriginX: CGFloat,
        zoomOriginY: CGFloat,
        duration: TimeInterval,
        easing: ChartEasingFunctionBlock?)
```
