# DynamicPresentation

``` swift
public protocol DynamicPresentation 
```

## Requirements

### widthForViewController

``` swift
var widthForViewController: JellyConstants.Size 
```

### heightForViewController

``` swift
var heightForViewController: JellyConstants.Size 
```

### marginGuards

If the width or height is bigger than the container we are working in, marginGuards will kick in and limit the size the specified margins

``` swift
var marginGuards: UIEdgeInsets 
```
