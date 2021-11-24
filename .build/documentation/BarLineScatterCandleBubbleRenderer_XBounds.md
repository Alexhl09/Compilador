# BarLineScatterCandleBubbleRenderer.XBounds

Class representing the bounds of the current viewport in terms of indices in the values array of a DataSet.

``` swift
open class XBounds
```

## Inheritance

`CustomDebugStringConvertible`, `RangeExpression`, `Sequence`

## Initializers

### `init()`

``` swift
public init()
```

### `init(chart:dataSet:animator:)`

``` swift
public init(chart: BarLineScatterCandleBubbleChartDataProvider,
                    dataSet: IBarLineScatterCandleBubbleChartDataSet,
                    animator: Animator?)
```

## Properties

### `min`

minimum visible entry index

``` swift
open var min: Int = 0
```

### `max`

maximum visible entry index

``` swift
open var max: Int = 0
```

### `range`

range of visible entry indices

``` swift
open var range: Int = 0
```

### `debugDescription`

``` swift
public var debugDescription: String
```

## Methods

### `set(chart:dataSet:animator:)`

Calculates the minimum and maximum x values as well as the range between them.

``` swift
open func set(chart: BarLineScatterCandleBubbleChartDataProvider,
                      dataSet: IBarLineScatterCandleBubbleChartDataSet,
                      animator: Animator?)
```

### `relative(to:)`

``` swift
public func relative<C>(to collection: C) -> Swift.Range<Int>
        where C : Collection, Bound == C.Index
```

### `contains(_:)`

``` swift
public func contains(_ element: Int) -> Bool 
```

### `makeIterator()`

``` swift
public func makeIterator() -> Iterator 
```
