# ContinuousWeightedSortFunction

A `SortFunction` that has variable `interObjectDelay` values using weights to structure when views should animate. Unlike other `SortFunction` implementations, for the `ContinuousWeightedSortFunction` you specify a `duration` and the `SortFunction` will compute the necessary `interObjectDelay` values for each of the subviews. This means that the offset times will not be multiples of the delay like usual. The lighter the weight the faster the views will animate.

``` swift
public struct ContinuousWeightedSortFunction: PositionSortFunction, WeightSortFunction 
```

> 

> 

> 

## Inheritance

[`PositionSortFunction`](/PositionSortFunction), [`WeightSortFunction`](/WeightSortFunction)

## Initializers

### `init(position:duration:horizontalWeight:verticalWeight:)`

``` swift
public init(position: Position, duration: TimeInterval, horizontalWeight: Weight = .medium, verticalWeight: Weight = .medium) 
```

## Properties

### `interObjectDelay`

``` swift
public var interObjectDelay: TimeInterval = 0.0
```

### `position`

``` swift
public var position: Position
```

### `reversed`

``` swift
public var reversed: Bool = false
```

### `duration`

``` swift
public var duration: TimeInterval
```

### `horizontalWeight`

``` swift
public var horizontalWeight: Weight
```

### `verticalWeight`

``` swift
public var verticalWeight: Weight
```

## Methods

### `timeOffsets(view:recursiveDepth:)`

``` swift
public func timeOffsets(view: UIView, recursiveDepth: Int) -> [TimedView] 
```
