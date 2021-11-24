# IndexAxisValueFormatter

This formatter is used for passing an array of x-axis labels, on whole x steps.

``` swift
@objc(ChartIndexAxisValueFormatter)
open class IndexAxisValueFormatter: NSObject, IAxisValueFormatter
```

## Inheritance

[`IAxisValueFormatter`](/IAxisValueFormatter), `NSObject`

## Initializers

### `init()`

``` swift
public override init()
```

### `init(values:)`

``` swift
@objc public init(values: [String])
```

## Properties

### `values`

``` swift
@objc public var values: [String]
```

## Methods

### `with(values:)`

``` swift
@objc public static func with(values: [String]) -> IndexAxisValueFormatter?
```

### `stringForValue(_:axis:)`

``` swift
open func stringForValue(_ value: Double,
                             axis: AxisBase?) -> String
```
