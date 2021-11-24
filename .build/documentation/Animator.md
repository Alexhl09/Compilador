# Animator

``` swift
@objc(ChartAnimator)
open class Animator: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init()`

``` swift
public override init()
```

## Properties

### `delegate`

``` swift
@objc open weak var delegate: AnimatorDelegate?
```

### `updateBlock`

``` swift
@objc open var updateBlock: (() -> Void)?
```

### `stopBlock`

``` swift
@objc open var stopBlock: (() -> Void)?
```

### `phaseX`

the phase that is animated and influences the drawn values on the x-axis

``` swift
@objc open var phaseX: Double = 1.0
```

### `phaseY`

the phase that is animated and influences the drawn values on the y-axis

``` swift
@objc open var phaseY: Double = 1.0
```

## Methods

### `stop()`

``` swift
@objc open func stop()
```

### `animate(xAxisDuration:yAxisDuration:easingX:easingY:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval, easingX: ChartEasingFunctionBlock?, easingY: ChartEasingFunctionBlock?)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis
  - easingX: an easing function for the animation on the x axis
  - easingY: an easing function for the animation on the y axis

### `animate(xAxisDuration:yAxisDuration:easingOptionX:easingOptionY:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval, easingOptionX: ChartEasingOption, easingOptionY: ChartEasingOption)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis
  - easingOptionX: the easing function for the animation on the x axis
  - easingOptionY: the easing function for the animation on the y axis

### `animate(xAxisDuration:yAxisDuration:easing:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval, easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis
  - easing: an easing function for the animation

### `animate(xAxisDuration:yAxisDuration:easingOption:)`

Animates the drawing / rendering of the chart on both x- and y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, yAxisDuration: TimeInterval, easingOption: ChartEasingOption = .easeInOutSine)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - yAxisDuration: duration for animating the y axis
  - easingOption: the easing function for the animation

### `animate(xAxisDuration:easing:)`

Animates the drawing / rendering of the chart the x-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - easing: an easing function for the animation

### `animate(xAxisDuration:easingOption:)`

Animates the drawing / rendering of the chart the x-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(xAxisDuration: TimeInterval, easingOption: ChartEasingOption = .easeInOutSine)
```

#### Parameters

  - xAxisDuration: duration for animating the x axis
  - easingOption: the easing function for the animation

### `animate(yAxisDuration:easing:)`

Animates the drawing / rendering of the chart the y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(yAxisDuration: TimeInterval, easing: ChartEasingFunctionBlock?)
```

#### Parameters

  - yAxisDuration: duration for animating the y axis
  - easing: an easing function for the animation

### `animate(yAxisDuration:easingOption:)`

Animates the drawing / rendering of the chart the y-axis with the specified animation time.
If `animate(...)` is called, no further calling of `invalidate()` is necessary to refresh the chart.

``` swift
@objc open func animate(yAxisDuration: TimeInterval, easingOption: ChartEasingOption = .easeInOutSine)
```

#### Parameters

  - yAxisDuration: duration for animating the y axis
  - easingOption: the easing function for the animation
