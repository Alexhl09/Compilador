# BarChartDataEntry

``` swift
open class BarChartDataEntry: ChartDataEntry
```

## Inheritance

[`ChartDataEntry`](/ChartDataEntry)

## Initializers

### `init()`

``` swift
public required init()
```

### `init(x:y:)`

Constructor for normal bars (not stacked).

``` swift
public override init(x: Double, y: Double)
```

### `init(x:y:data:)`

Constructor for normal bars (not stacked).

``` swift
public convenience init(x: Double, y: Double, data: Any?)
```

### `init(x:y:icon:)`

Constructor for normal bars (not stacked).

``` swift
public convenience init(x: Double, y: Double, icon: NSUIImage?)
```

### `init(x:y:icon:data:)`

Constructor for normal bars (not stacked).

``` swift
public convenience init(x: Double, y: Double, icon: NSUIImage?, data: Any?)
```

### `init(x:yValues:)`

Constructor for stacked bar entries.

``` swift
@objc public init(x: Double, yValues: [Double])
```

### `init(x:yValues:icon:)`

Constructor for stacked bar entries. One data object for whole stack

``` swift
@objc public convenience init(x: Double, yValues: [Double], icon: NSUIImage?)
```

### `init(x:yValues:data:)`

Constructor for stacked bar entries. One data object for whole stack

``` swift
@objc public convenience init(x: Double, yValues: [Double], data: Any?)
```

### `init(x:yValues:icon:data:)`

Constructor for stacked bar entries. One data object for whole stack

``` swift
@objc public convenience init(x: Double, yValues: [Double], icon: NSUIImage?, data: Any?)
```

## Properties

### `negativeSum`

The sum of all negative values this entry (if stacked) contains. (this is a positive number)

``` swift
@objc open var negativeSum: Double
```

### `positiveSum`

The sum of all positive values this entry (if stacked) contains.

``` swift
@objc open var positiveSum: Double
```

### `isStacked`

the values the stacked barchart holds

``` swift
@objc open var isStacked: Bool 
```

### `yValues`

the values the stacked barchart holds

``` swift
@objc open var yValues: [Double]?
```

### `ranges`

The ranges of the individual stack-entries. Will return null if this entry is not stacked.

``` swift
@objc open var ranges: [Range]?
```

## Methods

### `sumBelow(stackIndex:)`

``` swift
@objc open func sumBelow(stackIndex :Int) -> Double
```

### `calcPosNegSum()`

``` swift
@objc open func calcPosNegSum()
```

### `calcRanges()`

Splits up the stack-values of the given bar-entry into Range objects.

``` swift
@objc open func calcRanges()
```

#### Parameters

  - entry:

#### Returns

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
