# JellyFadeInPresentation

``` swift
public struct JellyFadeInPresentation: JellyPresentation, AlignablePresentation, DynamicPresentation 
```

## Inheritance

[`JellyPresentation`](/JellyPresentation), [`AlignablePresentation`](/AlignablePresentation), [`DynamicPresentation`](/DynamicPresentation)

## Initializers

### `init(dismissCurve:presentationCurve:cornerRadius:backgroundStyle:duration:widthForViewController:heightForViewController:horizontalAlignment:verticalAlignment:marginGuards:corners:)`

``` swift
public init(dismissCurve: JellyConstants.JellyCurve = .linear,
                presentationCurve: JellyConstants.JellyCurve = .linear,
                cornerRadius: Double = 0.0,
                backgroundStyle: JellyConstants.BackgroundStyle = .dimmed(alpha: 0.5),
                duration: JellyConstants.Duration = .normal,
                widthForViewController: JellyConstants.Size = .fullscreen,
                heightForViewController: JellyConstants.Size = .fullscreen,
                horizontalAlignment: JellyConstants.HorizontalAlignment = .center,
                verticalAlignment: JellyConstants.VerticalAlignment = .center,
                marginGuards: UIEdgeInsets = .zero,
                corners: UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]) 
```

## Properties

### `dismissCurve`

``` swift
public var dismissCurve: JellyConstants.JellyCurve = .linear
```

### `presentationCurve`

``` swift
public var presentationCurve: JellyConstants.JellyCurve = .linear
```

### `cornerRadius`

``` swift
public var cornerRadius: Double = 0.0
```

### `backgroundStyle`

``` swift
public var backgroundStyle: JellyConstants.BackgroundStyle 
```

### `duration`

``` swift
public var duration : JellyConstants.Duration = .normal 
```

### `widthForViewController`

``` swift
public var widthForViewController: JellyConstants.Size = .halfscreen
```

### `heightForViewController`

``` swift
public var heightForViewController: JellyConstants.Size = .halfscreen
```

### `marginGuards`

``` swift
public var marginGuards: UIEdgeInsets = .zero
```

### `isTapBackgroundToDismissEnabled`

``` swift
public var isTapBackgroundToDismissEnabled: Bool = true
```

### `corners`

``` swift
public var corners: UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]
```

### `horizontalAlignment`

``` swift
public var horizontalAlignment: JellyConstants.HorizontalAlignment = .center
```

### `verticalAlignemt`

``` swift
public var verticalAlignemt: JellyConstants.VerticalAlignment = .center
```
