# PieRadarChartViewBase

Base class of PieChartView and RadarChartView.

``` swift
open class PieRadarChartViewBase: ChartViewBase
```

## Inheritance

[`ChartViewBase`](/ChartViewBase)

## Initializers

### `init(frame:)`

``` swift
public override init(frame: CGRect)
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder)
```

## Properties

### `rotationEnabled`

flag that indicates if rotation is enabled or not

``` swift
@objc open var rotationEnabled = true
```

### `minOffset`

Sets the minimum offset (padding) around the chart, defaults to 0.0

``` swift
@objc open var minOffset 
```

### `maxVisibleCount`

``` swift
open override var maxVisibleCount: Int
```

### `rotationAngle`

current rotation angle of the pie chart

``` swift
@objc open var rotationAngle: CGFloat
```

**default**: 270 --\> top (NORTH)
Will always return a normalized value, which will be between 0.0 \< 360.0

### `rawRotationAngle`

gets the raw version of the current rotation angle of the pie chart the returned value could be any value, negative or positive, outside of the 360 degrees.
this is used when working with rotation direction, mainly by gestures and animations.

``` swift
@objc open var rawRotationAngle: CGFloat
```

### `diameter`

The diameter of the pie- or radar-chart

``` swift
@objc open var diameter: CGFloat
```

### `radius`

The radius of the chart in pixels.

``` swift
@objc open var radius: CGFloat
```

### `chartYMax`

``` swift
open override var chartYMax: Double
```

### `chartYMin`

``` swift
open override var chartYMin: Double
```

### `isRotationEnabled`

``` swift
@objc open var isRotationEnabled: Bool 
```

### `rotationWithTwoFingers`

flag that indicates if rotation is done with two fingers or one.
when the chart is inside a scrollview, you need a two-finger rotation because a one-finger rotation eats up all touch events.

``` swift
@objc open var rotationWithTwoFingers: Bool
```

On iOS this will disable one-finger rotation.
On OSX this will keep two-finger multitouch rotation, and one-pointer mouse rotation.

**default**: false

### `isRotationWithTwoFingers`

flag that indicates if rotation is done with two fingers or one.
when the chart is inside a scrollview, you need a two-finger rotation because a one-finger rotation eats up all touch events.

``` swift
@objc open var isRotationWithTwoFingers: Bool
```

On iOS this will disable one-finger rotation.
On OSX this will keep two-finger multitouch rotation, and one-pointer mouse rotation.

**default**: false

## Methods

### `notifyDataSetChanged()`

``` swift
open override func notifyDataSetChanged()
```

### `angleForPoint(x:y:)`

``` swift
@objc open func angleForPoint(x: CGFloat, y: CGFloat) -> CGFloat
```

  - Returns: The angle relative to the chart center for the given point on the chart in degrees.
    The angle is always between 0 and 360°, 0° is NORTH, 90° is EAST, ...

### `getPosition(center:dist:angle:)`

Calculates the position around a center point, depending on the distance
from the center, and the angle of the position around the center.

``` swift
@objc open func getPosition(center: CGPoint, dist: CGFloat, angle: CGFloat) -> CGPoint
```

### `distanceToCenter(x:y:)`

``` swift
@objc open func distanceToCenter(x: CGFloat, y: CGFloat) -> CGFloat
```

  - Returns: The distance of a certain point on the chart to the center of the chart.

### `indexForAngle(_:)`

``` swift
@objc open func indexForAngle(_ angle: CGFloat) -> Int
```

  - Returns: The xIndex for the given angle around the center of the chart.
    \-1 if not found / outofbounds.

### `spin(duration:fromAngle:toAngle:easing:)`

Applys a spin animation to the Chart.

``` swift
@objc open func spin(duration: TimeInterval, fromAngle: CGFloat, toAngle: CGFloat, easing: ChartEasingFunctionBlock?)
```

### `spin(duration:fromAngle:toAngle:easingOption:)`

``` swift
@objc open func spin(duration: TimeInterval, fromAngle: CGFloat, toAngle: CGFloat, easingOption: ChartEasingOption)
```

### `spin(duration:fromAngle:toAngle:)`

``` swift
@objc open func spin(duration: TimeInterval, fromAngle: CGFloat, toAngle: CGFloat)
```

### `stopSpinAnimation()`

``` swift
@objc open func stopSpinAnimation()
```

### `nsuiTouchesBegan(_:withEvent:)`

<dl>
<dt><code>!os(OSX)</code></dt>
<dd>

``` swift
open override func nsuiTouchesBegan(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesMoved(_:withEvent:)`

<dl>
<dt><code>!os(OSX)</code></dt>
<dd>

``` swift
open override func nsuiTouchesMoved(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesEnded(_:withEvent:)`

<dl>
<dt><code>!os(OSX)</code></dt>
<dd>

``` swift
open override func nsuiTouchesEnded(_ touches: Set<NSUITouch>, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `nsuiTouchesCancelled(_:withEvent:)`

<dl>
<dt><code>!os(OSX)</code></dt>
<dd>

``` swift
open override func nsuiTouchesCancelled(_ touches: Set<NSUITouch>?, withEvent event: NSUIEvent?)
```

</dd>
</dl>

### `mouseDown(with:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open override func mouseDown(with theEvent: NSEvent)
```

</dd>
</dl>

### `mouseDragged(with:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open override func mouseDragged(with theEvent: NSEvent)
```

</dd>
</dl>

### `mouseUp(with:)`

<dl>
<dt><code>os(OSX)</code></dt>
<dd>

``` swift
open override func mouseUp(with theEvent: NSEvent)
```

</dd>
</dl>

### `stopDeceleration()`

``` swift
@objc open func stopDeceleration()
```
