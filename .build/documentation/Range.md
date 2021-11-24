# Range

``` swift
@objc(ChartRange)
open class Range: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init(from:to:)`

``` swift
@objc public init(from: Double, to: Double)
```

## Properties

### `from`

``` swift
@objc open var from: Double
```

### `to`

``` swift
@objc open var to: Double
```

## Methods

### `contains(_:)`

``` swift
@objc open func contains(_ value: Double) -> Bool
```

  - Parameters:
      - value:
  - Returns: `true` if this range contains (if the value is in between) the given value, `false` ifnot.

### `isLarger(_:)`

``` swift
@objc open func isLarger(_ value: Double) -> Bool
```

### `isSmaller(_:)`

``` swift
@objc open func isSmaller(_ value: Double) -> Bool
```
