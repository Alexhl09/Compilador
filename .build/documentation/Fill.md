# Fill

``` swift
@objc(ChartFill)
open class Fill: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init()`

``` swift
public override init()
```

### `init(CGColor:)`

``` swift
@objc public init(CGColor: CGColor)
```

### `init(color:)`

``` swift
@objc public convenience init(color: NSUIColor)
```

### `init(linearGradient:angle:)`

``` swift
@objc public init(linearGradient: CGGradient, angle: CGFloat)
```

### `init(radialGradient:startOffsetPercent:startRadiusPercent:endOffsetPercent:endRadiusPercent:)`

``` swift
@objc public init(
        radialGradient: CGGradient,
        startOffsetPercent: CGPoint,
        startRadiusPercent: CGFloat,
        endOffsetPercent: CGPoint,
        endRadiusPercent: CGFloat
        )
```

### `init(radialGradient:)`

``` swift
@objc public convenience init(radialGradient: CGGradient)
```

### `init(CGImage:tiled:)`

``` swift
@objc public init(CGImage: CGImage, tiled: Bool)
```

### `init(image:tiled:)`

``` swift
@objc public convenience init(image: NSUIImage, tiled: Bool)
```

### `init(CGImage:)`

``` swift
@objc public convenience init(CGImage: CGImage)
```

### `init(image:)`

``` swift
@objc public convenience init(image: NSUIImage)
```

### `init(CGLayer:)`

``` swift
@objc public init(CGLayer: CGLayer)
```

## Properties

### `type`

``` swift
@objc open var type: FillType
```

### `color`

``` swift
@objc open var color: CGColor?
```

### `gradient`

``` swift
@objc open var gradient: CGGradient?
```

### `gradientAngle`

``` swift
@objc open var gradientAngle: CGFloat
```

### `gradientStartOffsetPercent`

``` swift
@objc open var gradientStartOffsetPercent: CGPoint
```

### `gradientStartRadiusPercent`

``` swift
@objc open var gradientStartRadiusPercent: CGFloat
```

### `gradientEndOffsetPercent`

``` swift
@objc open var gradientEndOffsetPercent: CGPoint
```

### `gradientEndRadiusPercent`

``` swift
@objc open var gradientEndRadiusPercent: CGFloat
```

### `image`

``` swift
@objc open var image: CGImage?
```

### `layer`

``` swift
@objc open var layer: CGLayer?
```

## Methods

### `fillWithCGColor(_:)`

``` swift
@objc open class func fillWithCGColor(_ CGColor: CGColor) -> Fill
```

### `fillWithColor(_:)`

``` swift
@objc open class func fillWithColor(_ color: NSUIColor) -> Fill
```

### `fillWithLinearGradient(_:angle:)`

``` swift
@objc open class func fillWithLinearGradient(
        _ linearGradient: CGGradient,
        angle: CGFloat) -> Fill
```

### `fillWithRadialGradient(_:startOffsetPercent:startRadiusPercent:endOffsetPercent:endRadiusPercent:)`

``` swift
@objc open class func fillWithRadialGradient(
        _ radialGradient: CGGradient,
        startOffsetPercent: CGPoint,
        startRadiusPercent: CGFloat,
        endOffsetPercent: CGPoint,
        endRadiusPercent: CGFloat
        ) -> Fill
```

### `fillWithRadialGradient(_:)`

``` swift
@objc open class func fillWithRadialGradient(_ radialGradient: CGGradient) -> Fill
```

### `fillWithCGImage(_:tiled:)`

``` swift
@objc open class func fillWithCGImage(_ CGImage: CGImage, tiled: Bool) -> Fill
```

### `fillWithImage(_:tiled:)`

``` swift
@objc open class func fillWithImage(_ image: NSUIImage, tiled: Bool) -> Fill
```

### `fillWithCGImage(_:)`

``` swift
@objc open class func fillWithCGImage(_ CGImage: CGImage) -> Fill
```

### `fillWithImage(_:)`

``` swift
@objc open class func fillWithImage(_ image: NSUIImage) -> Fill
```

### `fillWithCGLayer(_:)`

``` swift
@objc open class func fillWithCGLayer(_ CGLayer: CGLayer) -> Fill
```

### `fillPath(context:rect:)`

Draws the provided path in filled mode with the provided area

``` swift
@objc open func fillPath(
        context: CGContext,
        rect: CGRect)
```
