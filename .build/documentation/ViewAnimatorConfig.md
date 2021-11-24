# ViewAnimatorConfig

Configuration class for the default values used in animations.
All it's values are used when creating 'random' animations as well.

``` swift
public class ViewAnimatorConfig 
```

## Properties

### `offset`

Amount of movement in points.
Depends on the Direction given to the AnimationType.

``` swift
public static var offset: CGFloat = 30.0
```

### `duration`

Duration of the animation.

``` swift
public static var duration: Double = 0.3
```

### `interval`

Interval for animations handling multiple views that need
to be animated one after the other and not at the same time.

``` swift
public static var interval: Double = 0.075
```

### `maxZoomScale`

Maximum zoom to be applied in animations using random AnimationType.zoom.

``` swift
public static var maxZoomScale: Double = 2.0
```

### `maxRotationAngle`

Maximum rotation (left or right) to be applied in animations using random AnimationType.rotate

``` swift
public static var maxRotationAngle: CGFloat = CGFloat.pi/4
```

### `springDampingRatio`

The damping ratio for the spring animation as it approaches its quiescent state.

``` swift
public static var springDampingRatio: CGFloat = 1
```

### `initialSpringVelocity`

The initial spring velocity. For smooth start to the animation, match this value to the view’s velocity as it was prior to attachment.

``` swift
public static var initialSpringVelocity: CGFloat = 0
```

### `offset`

Amount of movement in points.
Depends on the Direction given to the AnimationType.

``` swift
public static var offset: CGFloat = 30.0
```

### `duration`

Duration of the animation.

``` swift
public static var duration: Double = 0.3
```

### `interval`

Interval for animations handling multiple views that need
to be animated one after the other and not at the same time.

``` swift
public static var interval: Double = 0.075
```

### `maxZoomScale`

Maximum zoom to be applied in animations using random AnimationType.zoom.

``` swift
public static var maxZoomScale: Double = 2.0
```

### `maxRotationAngle`

Maximum rotation (left or right) to be applied in animations using random AnimationType.rotate

``` swift
public static var maxRotationAngle: CGFloat = CGFloat.pi/4
```

### `springDampingRatio`

The damping ratio for the spring animation as it approaches its quiescent state.

``` swift
public static var springDampingRatio: CGFloat = 1
```

### `initialSpringVelocity`

The initial spring velocity. For smooth start to the animation, match this value to the view’s velocity as it was prior to attachment.

``` swift
public static var initialSpringVelocity: CGFloat = 0
```
