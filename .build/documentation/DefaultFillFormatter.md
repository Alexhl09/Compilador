# DefaultFillFormatter

Default formatter that calculates the position of the filled line.

``` swift
@objc(ChartDefaultFillFormatter)
open class DefaultFillFormatter: NSObject, IFillFormatter
```

## Inheritance

[`IFillFormatter`](/IFillFormatter), `NSObject`

## Nested Type Aliases

### `Block`

``` swift
public typealias Block = (
        _ dataSet: ILineChartDataSet,
        _ dataProvider: LineChartDataProvider) -> CGFloat
```

## Initializers

### `init()`

``` swift
public override init() 
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

## Methods

### `with(block:)`

``` swift
@objc public static func with(block: @escaping Block) -> DefaultFillFormatter?
```

### `getFillLinePosition(dataSet:dataProvider:)`

``` swift
open func getFillLinePosition(
        dataSet: ILineChartDataSet,
        dataProvider: LineChartDataProvider) -> CGFloat
```
