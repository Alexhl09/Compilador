# JellySlideInPresentation

``` swift
public struct JellySlideInPresentation: JellyPresentation, AlignablePresentation, DynamicPresentation 
```

## Inheritance

[`JellyPresentation`](/JellyPresentation), [`AlignablePresentation`](/AlignablePresentation), [`DynamicPresentation`](/DynamicPresentation)

## Initializers

### `init(dismissCurve:presentationCurve:cornerRadius:backgroundStyle:jellyness:duration:directionShow:directionDismiss:widthForViewController:heightForViewController:horizontalAlignment:verticalAlignment:marginGuards:corners:)`

``` swift
public init(dismissCurve: JellyConstants.JellyCurve = .linear,
                presentationCurve: JellyConstants.JellyCurve = .linear,
                cornerRadius: Double = 0.0,
                backgroundStyle: JellyConstants.BackgroundStyle = .dimmed(alpha: 0.5),
                jellyness: JellyConstants.Jellyness = .none,
                duration: JellyConstants.Duration = .normal,
                directionShow: JellyConstants.Direction = .top,
                directionDismiss: JellyConstants.Direction = .top,
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
public   var dismissCurve: JellyConstants.JellyCurve = .linear
```

### `presentationCurve`

``` swift
public   var presentationCurve: JellyConstants.JellyCurve = .linear
```

### `cornerRadius`

``` swift
public   var cornerRadius: Double = 0.0
```

### `backgroundStyle`

``` swift
public   var backgroundStyle: JellyConstants.BackgroundStyle 
```

### `jellyness`

``` swift
public   var jellyness: JellyConstants.Jellyness
```

### `duration`

``` swift
public   var duration : JellyConstants.Duration = .normal 
```

### `widthForViewController`

``` swift
public   var widthForViewController: JellyConstants.Size = .halfscreen
```

### `heightForViewController`

``` swift
public   var heightForViewController: JellyConstants.Size = .halfscreen
```

### `isTapBackgroundToDismissEnabled`

``` swift
public   var isTapBackgroundToDismissEnabled: Bool = true
```

### `marginGuards`

``` swift
public   var marginGuards: UIEdgeInsets = .zero
```

### `corners`

``` swift
public   var corners: UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]
```

### `directionShow`

``` swift
public   var directionShow: JellyConstants.Direction = .left 
```

### `directionDismiss`

``` swift
public   var directionDismiss: JellyConstants.Direction = .left 
```

### `horizontalAlignment`

``` swift
public   var horizontalAlignment: JellyConstants.HorizontalAlignment = .center
```

### `verticalAlignemt`

``` swift
public   var verticalAlignemt: JellyConstants.VerticalAlignment = .center
```
