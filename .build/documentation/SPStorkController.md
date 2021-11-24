# SPStorkController

``` swift
public enum SPStorkController 
```

## Properties

### `topScrollIndicatorInset`

``` swift
static public var topScrollIndicatorInset: CGFloat 
```

## Methods

### `scrollViewDidScroll(_:)`

``` swift
static public func scrollViewDidScroll(_ scrollView: UIScrollView) 
```

### `dismissWithConfirmation(controller:completion:)`

``` swift
static public func dismissWithConfirmation(controller: UIViewController, completion: (()->())?) 
```

### `updatePresentingController(parent:)`

``` swift
static public func updatePresentingController(parent controller: UIViewController) 
```

### `updatePresentingController(modal:)`

``` swift
static public func updatePresentingController(modal controller: UIViewController) 
```
