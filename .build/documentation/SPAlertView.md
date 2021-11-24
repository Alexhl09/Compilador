# SPAlertView

``` swift
open class SPAlertView: UIView 
```

## Inheritance

`UIView`, `UIView`, `UIView`, `UIView`, `UIView`

## Initializers

### `init(title:message:preset:)`

``` swift
public init(title: String, message: String?, preset: SPAlertPreset) 
```

### `init(title:message:icon:)`

``` swift
public init(title: String, message: String?, icon view: UIView) 
```

### `init(title:message:image:)`

``` swift
public init(title: String, message: String?, image: UIImage) 
```

### `init(message:)`

``` swift
public init(message: String) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

### `init(title:message:preset:)`

``` swift
public init(title: String, message: String?, preset: SPAlertPreset) 
```

### `init(title:message:icon:)`

``` swift
public init(title: String, message: String?, icon view: UIView) 
```

### `init(title:message:image:)`

``` swift
public init(title: String, message: String?, image: UIImage) 
```

### `init(message:)`

``` swift
public init(message: String) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

### `init(message:)`

``` swift
public init(message: String) 
```

### `init(title:message:preset:)`

``` swift
public init(title: String, message: String?, preset: SPAlertPreset) 
```

### `init(title:message:icon:)`

``` swift
public init(title: String, message: String?, icon view: UIView) 
```

### `init(title:message:image:)`

``` swift
public init(title: String, message: String?, image: UIImage) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

### `init(title:message:preset:)`

``` swift
public init(title: String, message: String?, preset: SPAlertPreset) 
```

### `init(title:message:icon:)`

``` swift
public init(title: String, message: String?, icon view: UIView) 
```

### `init(title:message:image:)`

``` swift
public init(title: String, message: String?, image: UIImage) 
```

### `init(message:)`

``` swift
public init(message: String) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

### `init(title:message:preset:)`

``` swift
public init(title: String, message: String? = nil, preset: SPAlertIconPreset) 
```

### `init(message:)`

``` swift
public init(message: String) 
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder) 
```

## Properties

### `duration`

Duration time when alert visible.

``` swift
public var duration: TimeInterval = 1.5
```

### `dismissByTap`

Allow dismiss by tap on alert. By default it allowed.

``` swift
public var dismissByTap: Bool = true
```

### `haptic`

Vibro for this alert. Default value using for presets. If you init custom. haptic not configure.

``` swift
public var haptic: SPAlertHaptic = .none
```

### `layout`

Spacing and icon size configure here. Auto configure when you using presets.

``` swift
public var layout 
```

### `keyWindow`

View on which present alert.

``` swift
public var keyWindow: UIView = (UIApplication.shared.keyWindow ?? UIWindow())
```

### `duration`

Duration time when alert visible.

``` swift
public var duration: TimeInterval = 1.5
```

### `dismissByTap`

Allow dismiss by tap on alert. By default it allowed.

``` swift
public var dismissByTap: Bool = true
```

### `haptic`

Vibro for this alert. Default value using for presets. If you init custom. haptic not configure.

``` swift
public var haptic: SPAlertHaptic = .none
```

### `layout`

Spacing and icon size configure here. Auto configure when you using presets.

``` swift
public var layout 
```

### `keyWindow`

View on which present alert.

``` swift
public var keyWindow: UIView = (UIApplication.shared.keyWindow ?? UIWindow())
```

### `duration`

``` swift
public var duration: TimeInterval = 1.5
```

### `dismissByTap`

``` swift
public var dismissByTap: Bool = true
```

### `haptic`

``` swift
public var haptic: SPAlertHaptic = .none
```

### `iconColor`

``` swift
public var iconColor: UIColor! 
```

### `textColor`

``` swift
public var textColor: UIColor! 
```

### `layout`

``` swift
public var layout 
```

### `duration`

Duration time when alert visible.

``` swift
public var duration: TimeInterval = 1.5
```

### `dismissByTap`

Allow dismiss by tap on alert. By default it allowed.

``` swift
public var dismissByTap: Bool = true
```

### `haptic`

Vibro for this alert. Default value using for presets. If you init custom. haptic not configure.

``` swift
public var haptic: SPAlertHaptic = .none
```

### `layout`

Spacing and icon size configure here. Auto configure when you using presets.

``` swift
public var layout 
```

### `keyWindow`

View on which present alert.

``` swift
public var keyWindow: UIView = (UIApplication.shared.keyWindow ?? UIWindow())
```

### `titleLabel`

``` swift
open var titleLabel: UILabel?
```

### `subtitleLabel`

``` swift
open var subtitleLabel: UILabel?
```

### `iconView`

``` swift
open var iconView: UIView?
```

### `presentWindow`

``` swift
weak open var presentWindow: UIWindow? = UIApplication.shared.windows.first
```

### `dismissByTap`

``` swift
open var dismissByTap: Bool = true
```

### `completion`

``` swift
open var completion: (() -> Void)? = nil
```

### `layout`

``` swift
open var layout: SPAlertLayout 
```

## Methods

### `present()`

Use this method for present controller. No need pass any controller, alert appear on `keyWindow`.

``` swift
public func present() 
```

### `dismiss()`

Use this method for force dismiss controller. By default it call automatically.

``` swift
@objc public func dismiss() 
```

### `layoutSubviews()`

``` swift
open override func layoutSubviews() 
```

### `present()`

Use this method for present controller. No need pass any controller, alert appear on `keyWindow`.

``` swift
public func present() 
```

### `dismiss()`

Use this method for force dismiss controller. By default it call automatically.

``` swift
@objc public func dismiss() 
```

### `layoutSubviews()`

``` swift
open override func layoutSubviews() 
```

### `present()`

``` swift
public func present() 
```

### `layoutSubviews()`

``` swift
open override func layoutSubviews() 
```

### `present()`

Use this method for present controller. No need pass any controller, alert appear on `keyWindow`.

``` swift
public func present() 
```

### `dismiss()`

Use this method for force dismiss controller. By default it call automatically.

``` swift
@objc public func dismiss() 
```

### `layoutSubviews()`

``` swift
open override func layoutSubviews() 
```

### `present(duration:haptic:completion:)`

``` swift
open func present(duration: TimeInterval = 1.5, haptic: SPAlertHaptic = .success, completion: (() -> Void)? = nil) 
```

### `dismiss()`

``` swift
@objc open func dismiss() 
```

### `sizeThatFits(_:)`

``` swift
open override func sizeThatFits(_ size: CGSize) -> CGSize 
```

### `layoutSubviews()`

``` swift
open override func layoutSubviews() 
```
