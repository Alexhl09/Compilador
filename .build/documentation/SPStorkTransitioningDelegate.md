# SPStorkTransitioningDelegate

``` swift
public final class SPStorkTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate 
```

## Inheritance

`NSObject`, `UIViewControllerTransitioningDelegate`

## Properties

### `swipeToDismissEnabled`

``` swift
public var swipeToDismissEnabled: Bool = true
```

### `tapAroundToDismissEnabled`

``` swift
public var tapAroundToDismissEnabled: Bool = true
```

### `showCloseButton`

``` swift
public var showCloseButton: Bool = false
```

### `showIndicator`

``` swift
public var showIndicator: Bool = true
```

### `indicatorColor`

``` swift
public var indicatorColor: UIColor 
```

### `hideIndicatorWhenScroll`

``` swift
public var hideIndicatorWhenScroll: Bool = false
```

### `indicatorMode`

``` swift
public var indicatorMode: SPStorkArrowMode = .auto
```

### `customHeight`

``` swift
public var customHeight: CGFloat? = nil
```

### `translateForDismiss`

``` swift
public var translateForDismiss: CGFloat = 200
```

### `cornerRadius`

``` swift
public var cornerRadius: CGFloat = 10
```

### `hapticMoments`

``` swift
public var hapticMoments: [SPStorkHapticMoments] = [.willDismissIfRelease]
```

### `storkDelegate`

``` swift
public weak var storkDelegate: SPStorkControllerDelegate? = nil
```

### `confirmDelegate`

``` swift
public weak var confirmDelegate: SPStorkControllerConfirmDelegate? = nil
```

## Methods

### `presentationController(forPresented:presenting:source:)`

``` swift
public func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? 
```

### `animationController(forPresented:presenting:source:)`

``` swift
public func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? 
```

### `animationController(forDismissed:)`

``` swift
public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? 
```
