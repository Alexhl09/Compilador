# GradientActivityIndicatorView

``` swift
@IBDesignable
open class GradientActivityIndicatorView: UIView 
```

## Inheritance

`UIView`

## Initializers

### `init(frame:)`

``` swift
override public init(frame: CGRect) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

## Properties

### `isHidden`

Boolean flag, whether the view is currently hidden.

``` swift
override open var isHidden: Bool 
```

### `gradientColors`

Colors used for the gradient.

``` swift
public var gradientColors: [UIColor] 
```

### `progressAnimationDuration`

Duration for the progress animation.

``` swift
public var progressAnimationDuration: TimeInterval 
```

### `layerClass`

In order to prevent adding another sublayer and keeping the frame up-to-date, we
simply overwrite the `layerClass` and use a `CAGradientLayer` for this view.

``` swift
override open class var layerClass: AnyClass 
```

## Methods

### `animate(isHidden:duration:completion:)`

Updates the view visibility.

``` swift
func animate(isHidden: Bool, duration: TimeInterval, completion: ((Bool) -> Void)? = nil) 
```

> 

#### Parameters

  - isHidden: The new view visibility.
  - duration: The duration of the animation, measured in seconds.
  - completion: Closure to be executed when the animation sequence ends. This block has no return value and takes a single Boolean argument that indicates whether or not the animations actually finished before the completion handler was called.

### `fadeOut(duration:completion:)`

Fade out the current view by animating the `alpha` to zero and update the `isHidden` flag accordingly.

``` swift
func fadeOut(duration: TimeInterval = TimeInterval.GradientLoadingBar.fadeOutDuration, completion: ((Bool) -> Void)? = nil) 
```

> 

#### Parameters

  - duration: The duration of the animation, measured in seconds.
  - completion: Closure to be executed when the animation sequence ends. This block has no return value and takes a single Boolean argument that indicates whether or not the animations actually finished before the completion handler was called.

### `fadeIn(duration:completion:)`

Fade in the current view by setting the `isHidden` flag to `false` and animating the `alpha` to one.

``` swift
func fadeIn(duration: TimeInterval = TimeInterval.GradientLoadingBar.fadeInDuration, completion: ((Bool) -> Void)? = nil) 
```

> 

#### Parameters

  - duration: The duration of the animation, measured in seconds.
  - completion: Closure to be executed when the animation sequence ends. This block has no return value and takes a single Boolean argument that indicates whether or not the animations actually finished before the completion handler was called.

### `point(inside:with:)`

``` swift
override open func point(inside _: CGPoint, with _: UIEvent?) -> Bool 
```
