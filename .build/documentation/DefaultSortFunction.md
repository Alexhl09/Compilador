# DefaultSortFunction

The basic `SortFunction`. Use this sort function if you want to animate in all views at the same time and give an `interObjectDelay` of `0.0`. Note that this `SortFunction` will animate the views based on the order they were added to the animation view. This means that the way the views are sorted in the `subviews` array is the way that they will be sorted by this `SortFunction`.

``` swift
public struct DefaultSortFunction: SortFunction 
```

## Inheritance

[`SortFunction`](/SortFunction)

## Initializers

### `init()`

``` swift
public init() 
```

### `init(interObjectDelay:)`

``` swift
public init(interObjectDelay: TimeInterval) 
```

## Properties

### `interObjectDelay`

``` swift
public var interObjectDelay: TimeInterval = 0.0
```

## Methods

### `timeOffsets(view:recursiveDepth:)`

``` swift
public func timeOffsets(view: UIView, recursiveDepth: Int) -> [TimedView] 
```
