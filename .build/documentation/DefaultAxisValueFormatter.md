# DefaultAxisValueFormatter

``` swift
@objc(ChartDefaultAxisValueFormatter)
open class DefaultAxisValueFormatter: NSObject, IAxisValueFormatter
```

## Inheritance

[`IAxisValueFormatter`](/IAxisValueFormatter), `NSObject`

## Nested Type Aliases

### `Block`

``` swift
public typealias Block = (
        _ value: Double,
        _ axis: AxisBase?) -> String
```

## Initializers

### `init()`

``` swift
public override init()
```

### `init(formatter:)`

``` swift
@objc public init(formatter: NumberFormatter)
```

### `init(decimals:)`

``` swift
@objc public init(decimals: Int)
```

### `init(block:)`

``` swift
@objc public init(block: @escaping Block)
```

## Properties

### `block`

``` swift
@objc open var block: Block?
```

### `hasAutoDecimals`

``` swift
@objc open var hasAutoDecimals: Bool = false
```

### `formatter`

``` swift
@objc open var formatter: NumberFormatter?
```

### `decimals`

``` swift
open var decimals: Int?
```

## Methods

### `with(block:)`

``` swift
@objc public static func with(block: @escaping Block) -> DefaultAxisValueFormatter?
```

### `stringForValue(_:axis:)`

``` swift
open func stringForValue(_ value: Double,
                               axis: AxisBase?) -> String
```
