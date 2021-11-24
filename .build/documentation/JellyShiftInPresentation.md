# JellyShiftInPresentation

``` swift
public struct JellyShiftInPresentation: JellyPresentation 
```

## Inheritance

[`JellyPresentation`](/JellyPresentation)

## Initializers

### `init(dismissCurve:presentationCurve:cornerRadius:backgroundStyle:jellyness:duration:direction:size:corners:)`

``` swift
public init(dismissCurve: JellyConstants.JellyCurve = .linear,
                presentationCurve: JellyConstants.JellyCurve = .linear,
                cornerRadius: Double = 0.0,
                backgroundStyle: JellyConstants.BackgroundStyle = .dimmed(alpha: 0.5),
                jellyness: JellyConstants.Jellyness = .none,
                duration: JellyConstants.Duration = .normal,
                direction: JellyConstants.Direction = .bottom,
                size: JellyConstants.Size = .halfscreen,
                corners: UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]) 
```

## Properties

### `dismissCurve`

``` swift
public  var dismissCurve: JellyConstants.JellyCurve = .linear
```

### `presentationCurve`

``` swift
public  var presentationCurve: JellyConstants.JellyCurve = .linear
```

### `cornerRadius`

``` swift
public  var cornerRadius: Double = 0.0
```

### `backgroundStyle`

``` swift
public  var backgroundStyle: JellyConstants.BackgroundStyle 
```

### `jellyness`

``` swift
public  var jellyness: JellyConstants.Jellyness = .none
```

### `duration`

``` swift
public  var duration : JellyConstants.Duration = .medium 
```

### `isTapBackgroundToDismissEnabled`

``` swift
public  var isTapBackgroundToDismissEnabled: Bool = true
```

### `direction`

``` swift
public  var direction : JellyConstants.Direction = .bottom
```

### `size`

``` swift
public  var size: JellyConstants.Size = .halfscreen
```

### `corners`

``` swift
public  var corners: UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]
```
