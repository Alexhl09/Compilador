# SPLarkTransitioningDelegate

``` swift
@available(iOS 10.0, *)
public final class SPLarkTransitioningDelegate: NSObject, UIViewControllerTransitioningDelegate 
```

## Inheritance

`NSObject`, `UIViewControllerTransitioningDelegate`

## Properties

### `customHeight`

``` swift
public var customHeight: CGFloat? = nil
```

### `swipeToDismissEnabled`

``` swift
public var swipeToDismissEnabled: Bool = true
```

### `translateForDismiss`

``` swift
public var translateForDismiss: CGFloat = 100
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
