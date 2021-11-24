# AnimatedViewPortJob

``` swift
open class AnimatedViewPortJob: ViewPortJob
```

## Inheritance

[`ViewPortJob`](/ViewPortJob)

## Initializers

### `init(viewPortHandler:xValue:yValue:transformer:view:xOrigin:yOrigin:duration:easing:)`

``` swift
@objc public init(
        viewPortHandler: ViewPortHandler,
        xValue: Double,
        yValue: Double,
        transformer: Transformer,
        view: ChartViewBase,
        xOrigin: CGFloat,
        yOrigin: CGFloat,
        duration: TimeInterval,
        easing: ChartEasingFunctionBlock?)
```

## Methods

### `doJob()`

``` swift
open override func doJob()
```

### `start()`

``` swift
@objc open func start()
```

### `stop(finish:)`

``` swift
@objc open func stop(finish: Bool)
```
