# Extensions on UIView

## Properties

### `isSkeletonable`

``` swift
@IBInspectable
    var isSkeletonable: Bool 
```

### `isSkeletonActive`

``` swift
var isSkeletonActive: Bool 
```

### `skeletonDescription`

``` swift
public var skeletonDescription: String 
```

### `spruce`

Access to all of the Spruce library animations. Use this to call functions such as `.animate` or `.prepare`

``` swift
var spruce: Spruce 
```

### `🌲`

Access to all of the Spruce library animations. Use this to call functions such as `.animate` or `.prepare`

``` swift
var 🌲: Spruce 
```

### `isSkeletonable`

``` swift
@IBInspectable
    var isSkeletonable: Bool 
```

### `skeletonCornerRadius`

``` swift
@IBInspectable
    var skeletonCornerRadius: Float 
```

### `isSkeletonActive`

``` swift
var isSkeletonActive: Bool 
```

### `skeletonDescription`

``` swift
public var skeletonDescription: String 
```

## Methods

### `showSkeleton(usingColor:transition:)`

Shows the skeleton without animation using the view that calls this method as root view.

``` swift
func showSkeleton(usingColor color: UIColor = SkeletonAppearance.default.tintColor, transition: SkeletonTransitionStyle = .none) 
```

#### Parameters

  - color: The color of the skeleton. Defaults to `SkeletonAppearance.default.tintColor`.
  - transition: The style of the transition when the skeleton appears. Defaults to `.none`.

### `showGradientSkeleton(usingGradient:transition:)`

Shows the gradient skeleton without animation using the view that calls this method as root view.

``` swift
func showGradientSkeleton(usingGradient gradient: SkeletonGradient = SkeletonAppearance.default.gradient, transition: SkeletonTransitionStyle = .none) 
```

#### Parameters

  - gradient: The gradient of the skeleton. Defaults to `SkeletonAppearance.default.gradient`.
  - transition: The style of the transition when the skeleton appears. Defaults to `.none`.

### `showAnimatedSkeleton(usingColor:animation:transition:)`

Shows the animated skeleton using the view that calls this method as root view.

``` swift
func showAnimatedSkeleton(usingColor color: UIColor = SkeletonAppearance.default.tintColor, animation: SkeletonLayerAnimation? = nil, transition: SkeletonTransitionStyle = .none) 
```

If animation is nil, sliding animation will be used, with direction left to right.

#### Parameters

  - color: The color of skeleton. Defaults to `SkeletonAppearance.default.tintColor`.
  - animation: The animation of the skeleton. Defaults to `nil`.
  - transition: The style of the transition when the skeleton appears. Defaults to `.none`.

### `showAnimatedGradientSkeleton(usingGradient:animation:transition:)`

Shows the gradient skeleton without animation using the view that calls this method as root view.

``` swift
func showAnimatedGradientSkeleton(usingGradient gradient: SkeletonGradient = SkeletonAppearance.default.gradient, animation: SkeletonLayerAnimation? = nil, transition: SkeletonTransitionStyle = .none) 
```

If animation is nil, sliding animation will be used, with direction left to right.

#### Parameters

  - gradient: The gradient of the skeleton. Defaults to `SkeletonAppearance.default.gradient`.
  - animation: The animation of the skeleton. Defaults to `nil`.
  - transition: The style of the transition when the skeleton appears. Defaults to `.none`.

### `updateSkeleton(usingColor:)`

``` swift
func updateSkeleton(usingColor color: UIColor = SkeletonAppearance.default.tintColor) 
```

### `updateGradientSkeleton(usingGradient:)`

``` swift
func updateGradientSkeleton(usingGradient gradient: SkeletonGradient = SkeletonAppearance.default.gradient) 
```

### `updateAnimatedSkeleton(usingColor:animation:)`

``` swift
func updateAnimatedSkeleton(usingColor color: UIColor = SkeletonAppearance.default.tintColor, animation: SkeletonLayerAnimation? = nil) 
```

### `updateAnimatedGradientSkeleton(usingGradient:animation:)`

``` swift
func updateAnimatedGradientSkeleton(usingGradient gradient: SkeletonGradient = SkeletonAppearance.default.gradient, animation: SkeletonLayerAnimation? = nil) 
```

### `layoutSkeletonIfNeeded()`

``` swift
func layoutSkeletonIfNeeded() 
```

### `hideSkeleton(reloadDataAfter:transition:)`

``` swift
func hideSkeleton(reloadDataAfter reload: Bool = true, transition: SkeletonTransitionStyle = .none) 
```

### `startSkeletonAnimation(_:)`

``` swift
func startSkeletonAnimation(_ anim: SkeletonLayerAnimation? = nil) 
```

### `stopSkeletonAnimation()`

``` swift
func stopSkeletonAnimation() 
```

### `skeletonHierarchy(index:)`

``` swift
public func skeletonHierarchy(index: Int = 0) -> String 
```

### `animate(animations:reversed:initialAlpha:finalAlpha:delay:duration:usingSpringWithDamping:initialSpringVelocity:options:completion:)`

Performs the animation.

``` swift
func animate(animations: [Animation],
                 reversed: Bool = false,
                 initialAlpha: CGFloat = 0.0,
                 finalAlpha: CGFloat = 1.0,
                 delay: Double = 0,
                 duration: TimeInterval = ViewAnimatorConfig.duration,
                 usingSpringWithDamping dampingRatio: CGFloat = ViewAnimatorConfig.springDampingRatio,
                 initialSpringVelocity velocity: CGFloat = ViewAnimatorConfig.initialSpringVelocity,
                 options: UIView.AnimationOptions = [],
                 completion: (() -> Void)? = nil) 
```

#### Parameters

  - animations: Array of Animations to perform on the animation block.
  - reversed: Initial state of the animation. Reversed will start from its original position.
  - initialAlpha: Initial alpha of the view prior to the animation.
  - finalAlpha: View's alpha after the animation.
  - delay: Time Delay before the animation.
  - duration: TimeInterval the animation takes to complete.
  - dampingRatio: The damping ratio for the spring animation.
  - velocity: The initial spring velocity.
  - completion: CompletionBlock after the animation finishes.

### `animate(views:animations:reversed:initialAlpha:finalAlpha:delay:animationInterval:duration:usingSpringWithDamping:initialSpringVelocity:options:completion:)`

Performs the animation.

``` swift
static func animate(views: [UIView],
                        animations: [Animation],
                        reversed: Bool = false,
                        initialAlpha: CGFloat = 0.0,
                        finalAlpha: CGFloat = 1.0,
                        delay: Double = 0,
                        animationInterval: TimeInterval = 0.05,
                        duration: TimeInterval = ViewAnimatorConfig.duration,
                        usingSpringWithDamping dampingRatio: CGFloat = ViewAnimatorConfig.springDampingRatio,
                        initialSpringVelocity velocity: CGFloat = ViewAnimatorConfig.initialSpringVelocity,
                        options: UIView.AnimationOptions = [],
                        completion: (() -> Void)? = nil) 
```

#### Parameters

  - animations: Array of Animations to perform on the animation block.
  - reversed: Initial state of the animation. Reversed will start from its original position.
  - initialAlpha: Initial alpha of the view prior to the animation.
  - finalAlpha: View's alpha after the animation.
  - delay: Time Delay before the animation.
  - animationInterval: Interval between the animations of each view.
  - duration: TimeInterval the animation takes to complete.
  - dampingRatio: The damping ratio for the spring animation.
  - velocity: The initial spring velocity.
  - completion: CompletionBlock after the animation finishes.

### `showSkeleton(usingColor:transition:)`

Shows the skeleton without animation using the view that calls this method as root view.

``` swift
func showSkeleton(usingColor color: UIColor = SkeletonAppearance.default.tintColor, transition: SkeletonTransitionStyle = .crossDissolve(0.25)) 
```

#### Parameters

  - color: The color of the skeleton. Defaults to `SkeletonAppearance.default.tintColor`.
  - transition: The style of the transition when the skeleton appears. Defaults to `.crossDissolve(0.25)`.

### `showGradientSkeleton(usingGradient:transition:)`

Shows the gradient skeleton without animation using the view that calls this method as root view.

``` swift
func showGradientSkeleton(usingGradient gradient: SkeletonGradient = SkeletonAppearance.default.gradient, transition: SkeletonTransitionStyle = .crossDissolve(0.25)) 
```

#### Parameters

  - gradient: The gradient of the skeleton. Defaults to `SkeletonAppearance.default.gradient`.
  - transition: The style of the transition when the skeleton appears. Defaults to `.crossDissolve(0.25)`.

### `showAnimatedSkeleton(usingColor:animation:transition:)`

Shows the animated skeleton using the view that calls this method as root view.

``` swift
func showAnimatedSkeleton(usingColor color: UIColor = SkeletonAppearance.default.tintColor, animation: SkeletonLayerAnimation? = nil, transition: SkeletonTransitionStyle = .crossDissolve(0.25)) 
```

If animation is nil, sliding animation will be used, with direction left to right.

#### Parameters

  - color: The color of skeleton. Defaults to `SkeletonAppearance.default.tintColor`.
  - animation: The animation of the skeleton. Defaults to `nil`.
  - transition: The style of the transition when the skeleton appears. Defaults to `.crossDissolve(0.25)`.

### `showAnimatedGradientSkeleton(usingGradient:animation:transition:)`

Shows the gradient skeleton without animation using the view that calls this method as root view.

``` swift
func showAnimatedGradientSkeleton(usingGradient gradient: SkeletonGradient = SkeletonAppearance.default.gradient, animation: SkeletonLayerAnimation? = nil, transition: SkeletonTransitionStyle = .crossDissolve(0.25)) 
```

If animation is nil, sliding animation will be used, with direction left to right.

#### Parameters

  - gradient: The gradient of the skeleton. Defaults to `SkeletonAppearance.default.gradient`.
  - animation: The animation of the skeleton. Defaults to `nil`.
  - transition: The style of the transition when the skeleton appears. Defaults to `.crossDissolve(0.25)`.

### `updateSkeleton(usingColor:)`

``` swift
func updateSkeleton(usingColor color: UIColor = SkeletonAppearance.default.tintColor) 
```

### `updateGradientSkeleton(usingGradient:)`

``` swift
func updateGradientSkeleton(usingGradient gradient: SkeletonGradient = SkeletonAppearance.default.gradient) 
```

### `updateAnimatedSkeleton(usingColor:animation:)`

``` swift
func updateAnimatedSkeleton(usingColor color: UIColor = SkeletonAppearance.default.tintColor, animation: SkeletonLayerAnimation? = nil) 
```

### `updateAnimatedGradientSkeleton(usingGradient:animation:)`

``` swift
func updateAnimatedGradientSkeleton(usingGradient gradient: SkeletonGradient = SkeletonAppearance.default.gradient, animation: SkeletonLayerAnimation? = nil) 
```

### `layoutSkeletonIfNeeded()`

``` swift
func layoutSkeletonIfNeeded() 
```

### `hideSkeleton(reloadDataAfter:transition:)`

``` swift
func hideSkeleton(reloadDataAfter reload: Bool = true, transition: SkeletonTransitionStyle = .crossDissolve(0.25)) 
```

### `startSkeletonAnimation(_:)`

``` swift
func startSkeletonAnimation(_ anim: SkeletonLayerAnimation? = nil) 
```

### `stopSkeletonAnimation()`

``` swift
func stopSkeletonAnimation() 
```

### `skeletonHierarchy(index:)`

``` swift
public func skeletonHierarchy(index: Int = 0) -> String 
```

### `roundCorners(corners:radius:)`

``` swift
public func roundCorners(corners: UIRectCorner = .allCorners, radius: Double = 0.0) 
```

### `animate(animations:reversed:initialAlpha:finalAlpha:delay:duration:usingSpringWithDamping:initialSpringVelocity:options:completion:)`

Performs the animation.

``` swift
func animate(animations: [Animation],
                 reversed: Bool = false,
                 initialAlpha: CGFloat = 0.0,
                 finalAlpha: CGFloat = 1.0,
                 delay: Double = 0,
                 duration: TimeInterval = ViewAnimatorConfig.duration,
                 usingSpringWithDamping dampingRatio: CGFloat = ViewAnimatorConfig.springDampingRatio,
                 initialSpringVelocity velocity: CGFloat = ViewAnimatorConfig.initialSpringVelocity,
                 options: UIView.AnimationOptions = [],
                 completion: (() -> Void)? = nil) 
```

#### Parameters

  - animations: Array of Animations to perform on the animation block.
  - reversed: Initial state of the animation. Reversed will start from its original position.
  - initialAlpha: Initial alpha of the view prior to the animation.
  - finalAlpha: View's alpha after the animation.
  - delay: Time Delay before the animation.
  - duration: TimeInterval the animation takes to complete.
  - dampingRatio: The damping ratio for the spring animation.
  - velocity: The initial spring velocity.
  - completion: CompletionBlock after the animation finishes.

### `animate(views:animations:reversed:initialAlpha:finalAlpha:delay:animationInterval:duration:usingSpringWithDamping:initialSpringVelocity:options:completion:)`

Performs the animation.

``` swift
static func animate(views: [UIView],
                        animations: [Animation],
                        reversed: Bool = false,
                        initialAlpha: CGFloat = 0.0,
                        finalAlpha: CGFloat = 1.0,
                        delay: Double = 0,
                        animationInterval: TimeInterval = 0.05,
                        duration: TimeInterval = ViewAnimatorConfig.duration,
                        usingSpringWithDamping dampingRatio: CGFloat = ViewAnimatorConfig.springDampingRatio,
                        initialSpringVelocity velocity: CGFloat = ViewAnimatorConfig.initialSpringVelocity,
                        options: UIView.AnimationOptions = [],
                        completion: (() -> Void)? = nil) 
```

#### Parameters

  - animations: Array of Animations to perform on the animation block.
  - reversed: Initial state of the animation. Reversed will start from its original position.
  - initialAlpha: Initial alpha of the view prior to the animation.
  - finalAlpha: View's alpha after the animation.
  - delay: Time Delay before the animation.
  - animationInterval: Interval between the animations of each view.
  - duration: TimeInterval the animation takes to complete.
  - dampingRatio: The damping ratio for the spring animation.
  - velocity: The initial spring velocity.
  - completion: CompletionBlock after the animation finishes.
