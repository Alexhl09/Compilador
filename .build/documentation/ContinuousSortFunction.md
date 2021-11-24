# ContinuousSortFunction

A `SortFunction` that has variable `interObjectDelay` values. Unlike other `SortFunction` implementations, for the `ContinuousSortFunction` you specify a `duration` and the `SortFunction` will compute the necessary `interObjectDelay` values for each of the subviews. This means that the offset times will not be multiples of the delay like usual.

``` swift
public struct ContinuousSortFunction: PositionSortFunction 
```

> 

> 

## Inheritance

[`PositionSortFunction`](/PositionSortFunction)

## Initializers

### `init(position:duration:)`

``` swift
public init(position: Position, duration: TimeInterval) 
```

## Properties

### `interObjectDelay`

``` swift
public var interObjectDelay: TimeInterval = 0.0
```

### `duration`

``` swift
public var duration: TimeInterval
```

### `position`

``` swift
public var position: Position
```

### `reversed`

``` swift
public var reversed: Bool = false
```

## Methods

### `timeOffsets(view:recursiveDepth:)`

``` swift
public func timeOffsets(view: UIView, recursiveDepth: Int) -> [TimedView] 
```
