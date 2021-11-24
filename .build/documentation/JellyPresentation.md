# JellyPresentation

The JellyPresentation protocol defines which properties a basic presentation should provide
Maybe we could use a class hierarchy to abstract all the different types better than using protocols for that

``` swift
public protocol JellyPresentation 
```

## Requirements

### duration

``` swift
var duration: JellyConstants.Duration 
```

### cornerRadius

``` swift
var cornerRadius: Double 
```

### presentationCurve

``` swift
var presentationCurve : JellyConstants.JellyCurve 
```

### dismissCurve

``` swift
var dismissCurve : JellyConstants.JellyCurve 
```

### backgroundStyle

``` swift
var backgroundStyle : JellyConstants.BackgroundStyle 
```

### isTapBackgroundToDismissEnabled

``` swift
var isTapBackgroundToDismissEnabled : Bool 
```

### corners

``` swift
var corners: UIRectCorner 
```
