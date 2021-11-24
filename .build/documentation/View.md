# View

Used to keep track of the `UIView` object and a changing reference point. Since Spruce allows for
recursive subview lookup, we need to handle changing the coordinate space. Once the coordinate space
has been accounted for we can then alter the reference point.

``` swift
public protocol View 
```

## Default Implementations

### `addButtonBorder(_:width:cornerRadius:)`

``` swift
public func addButtonBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat = 5) -> some View where S : ShapeStyle 
```

## Requirements

### view

The view that should be animating

``` swift
var view: UIView? 
```

### referencePoint

The adjusted for reference point.

``` swift
var referencePoint: CGPoint 
```
