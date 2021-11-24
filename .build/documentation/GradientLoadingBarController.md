# GradientLoadingBarController

The `GradientLoadingBarController` mediates between the `GradientLoadingBarViewModel` and the corresponding `GradientActivityIndicatorView`.

``` swift
open class GradientLoadingBarController 
```

## Initializers

### `init(height:isRelativeToSafeArea:)`

Creates a new gradient loading bar instance.

``` swift
public init(height: CGFloat = 3,
                isRelativeToSafeArea: Bool = true) 
```

#### Parameters

  - height: Height of the gradient bar (defaults to `3.0`).
  - isRelativeToSafeArea: Flag whether the top layout constraint should respect `safeAreaLayoutGuide`.

#### Returns

Instance of gradient loading bar.

## Properties

### `height`

The height of the gradient bar.

``` swift
public let height: CGFloat
```

> 

### `isRelativeToSafeArea`

Flag whether the top layout constraint should respect `safeAreaLayoutGuide`.

``` swift
public let isRelativeToSafeArea: Bool
```

> 

### `gradientActivityIndicatorView`

View containing the gradient layer.

``` swift
public let gradientActivityIndicatorView 
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

### `shared`

Singleton instance.

``` swift
public static var shared 
```

## Methods

### `setupConstraints(superview:)`

Apply layout constraints for gradient loading view.

``` swift
open func setupConstraints(superview: UIView) 
```

### `fadeIn(duration:completion:)`

Fades in the gradient loading bar.

``` swift
public func fadeIn(duration: TimeInterval = TimeInterval.GradientLoadingBar.fadeInDuration, completion: ((Bool) -> Void)? = nil) 
```

### `fadeOut(duration:completion:)`

Fades out the gradient loading bar.

``` swift
public func fadeOut(duration: TimeInterval = TimeInterval.GradientLoadingBar.fadeOutDuration, completion: ((Bool) -> Void)? = nil) 
```
