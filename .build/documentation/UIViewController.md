# Extensions on UIViewController

## Properties

### `isPresentedAsLark`

``` swift
open var isPresentedAsLark: Bool 
```

### `isPresentedAsStork`

``` swift
public var isPresentedAsStork: Bool 
```

## Methods

### `presentAsLark(_:height:completion:)`

``` swift
open func presentAsLark(_ controller: UIViewController, height: CGFloat? = nil, completion: (() -> Void)? = nil) 
```

### `presentLark(settings:)`

``` swift
open func presentLark(settings controller: SPLarkSettingsController) 
```

### `presentAsStork(_:height:)`

``` swift
public func presentAsStork(_ controller: UIViewController, height: CGFloat? = nil) 
```

### `presentAsStork(_:height:showIndicator:showCloseButton:complection:)`

``` swift
public func presentAsStork(_ controller: UIViewController, height: CGFloat?, showIndicator: Bool, showCloseButton: Bool, complection: (() -> Void)? = nil) 
```
