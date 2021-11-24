# SPAlert

``` swift
public enum SPAlert 
```

## Methods

### `present(title:message:preset:)`

Present with presets.

``` swift
public static func present(title: String, message: String? = nil, preset: SPAlertPreset) 
```

#### Parameters

  - title: Main text in alert.
  - message: Subtitle in alert. Optional.
  - preset: Default configure layout and icons.

### `present(title:message:image:)`

Present with image.

``` swift
public static func present(title: String, message: String? = nil, image: UIImage) 
```

#### Parameters

  - title: Main text in alert.
  - message: Subtitle in alert. Optional.
  - image: Custom `UIImage` for alert.

### `present(message:haptic:)`

Present only message, without icon.

``` swift
public static func present(message: String, haptic: SPAlertHaptic = .none) 
```

#### Parameters

  - haptic: Pass with vibro using with present alet.

### `present(title:message:preset:)`

Present with presets.

``` swift
public static func present(title: String, message: String? = nil, preset: SPAlertPreset) 
```

#### Parameters

  - title: Main text in alert.
  - message: Subtitle in alert. Optional.
  - preset: Сonfigureв preset with layout and icons.

### `present(title:message:image:)`

Present with image.

``` swift
public static func present(title: String, message: String? = nil, image: UIImage) 
```

#### Parameters

  - title: Main text in alert.
  - message: Subtitle in alert. Optional.
  - image: Custom `UIImage` for alert. No need recize it before.

### `present(message:haptic:)`

Present only message, without icon.

``` swift
public static func present(message: String, haptic: SPAlertHaptic = .none) 
```

#### Parameters

  - haptic: Pass with vibro using with present alet.

### `present(title:message:preset:)`

``` swift
public static func present(title: String, message: String? = nil, preset: SPAlertPreset) 
```

### `present(title:message:image:)`

``` swift
public static func present(title: String, message: String? = nil, image: UIImage) 
```

### `present(message:)`

``` swift
public static func present(message: String) 
```

### `present(title:message:preset:)`

Present with presets.

``` swift
public static func present(title: String, message: String? = nil, preset: SPAlertPreset) 
```

#### Parameters

  - title: Main text in alert.
  - message: Subtitle in alert. Optional.
  - preset: Сonfigureв preset with layout and icons.

### `present(title:message:image:)`

Present with image.

``` swift
public static func present(title: String, message: String? = nil, image: UIImage) 
```

#### Parameters

  - title: Main text in alert.
  - message: Subtitle in alert. Optional.
  - image: Custom `UIImage` for alert. No need recize it before.

### `present(message:haptic:)`

Present only message, without icon.

``` swift
public static func present(message: String, haptic: SPAlertHaptic = .none) 
```

#### Parameters

  - haptic: Pass with vibro using with present alet.

### `present(title:message:preset:haptic:completion:)`

SPAlert:​ Present alert with preset and custom haptic.

``` swift
public static func present(title: String, message: String? = nil, preset: SPAlertIconPreset, haptic: SPAlertHaptic, completion: (() -> Void)? = nil) 
```

#### Parameters

  - title: Title text in alert.
  - message: Subtitle text in alert. Optional.
  - preset: Icon ready-use style or custom image.
  - haptic: Haptic response with present. Default is `.success`.
  - completion: Will call with dismiss alert.

### `present(title:message:preset:completion:)`

SPAlert:​ Present alert with preset and automatically detect type haptic.

``` swift
public static func present(title: String, message: String? = nil, preset: SPAlertIconPreset, completion: (() -> Void)? = nil) 
```

#### Parameters

  - title: Title text in alert.
  - message: Subtitle text in alert. Optional.
  - preset: Icon ready-use style or custom image.
  - completion: Will call with dismiss alert.

### `present(message:haptic:completion:)`

SPAlert:​ Show only message, without title and icon.

``` swift
public static func present(message: String, haptic: SPAlertHaptic, completion: (() -> Void)? = nil) 
```

#### Parameters

  - message: Title text.
  - haptic: Haptic response with present. Default is `.success`.
  - completion: Will call with dismiss alert.

### `present(title:message:image:haptic:completion:)`

``` swift
@available(*, deprecated, message: "For present with custom image use preset `.custom(UIImage)`")
    public static func present(title: String, message: String? = nil, image: UIImage, haptic: SPAlertHaptic, completion: (() -> Void)? = nil) 
```
