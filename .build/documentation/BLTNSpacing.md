# BLTNSpacing

``` swift
@objc public class BLTNSpacing: NSObject 
```

  - Represents a spacing value.

## Inheritance

`NSObject`, `NSObject`, `NSObject`

## Properties

### `none`

``` swift
@objc public class var none: BLTNSpacing 
```

  - No spacing is applied. (value: 0)
  - 
  - If you use this padding, corner radii will be ignored.

### `compact`

``` swift
@objc public class var compact: BLTNSpacing 
```

  - A compact spacing. (value: 6)

### `regular`

``` swift
@objc public class var regular: BLTNSpacing 
```

  - The standard spacing. (value: 12)

### `none`

``` swift
@objc public class var none: BLTNSpacing 
```

  - No spacing is applied. (value: 0)
  - 
  - If you use this padding, corner radii will be ignored.

### `compact`

``` swift
@objc public class var compact: BLTNSpacing 
```

  - A compact spacing. (value: 6)

### `regular`

``` swift
@objc public class var regular: BLTNSpacing 
```

  - The standard spacing. (value: 12)

### `rawValue`

``` swift
public let rawValue: CGFloat
```

### `none`

No spacing is applied. (value:​ 0)

``` swift
@objc public class var none: BLTNSpacing 
```

> 

### `compact`

A compact spacing. (value:​ 6)

``` swift
@objc public class var compact: BLTNSpacing 
```

### `regular`

The standard spacing. (value:​ 12)

``` swift
@objc public class var regular: BLTNSpacing 
```

## Methods

### `custom(_:)`

``` swift
@objc public class func custom(_ value: CGFloat) -> BLTNSpacing 
```

  - A custom spacing.
  - 
  -   - parameter value: The spacing to apply.

### `custom(_:)`

``` swift
@objc public class func custom(_ value: CGFloat) -> BLTNSpacing 
```

  - A custom spacing.
  - 
  -   - parameter value: The spacing to apply.

### `custom(_:)`

A custom spacing.

``` swift
@objc public class func custom(_ value: CGFloat) -> BLTNSpacing 
```

#### Parameters

  - value: The spacing to apply.
