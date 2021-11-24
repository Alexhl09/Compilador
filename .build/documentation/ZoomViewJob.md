# ZoomViewJob

``` swift
@objc(ZoomChartViewJob)
open class ZoomViewJob: ViewPortJob
```

## Inheritance

[`ViewPortJob`](/ViewPortJob)

## Initializers

### `init(viewPortHandler:scaleX:scaleY:xValue:yValue:transformer:axis:view:)`

``` swift
@objc public init(
        viewPortHandler: ViewPortHandler,
        scaleX: CGFloat,
        scaleY: CGFloat,
        xValue: Double,
        yValue: Double,
        transformer: Transformer,
        axis: YAxis.AxisDependency,
        view: ChartViewBase)
```

## Methods

### `doJob()`

``` swift
open override func doJob()
```
