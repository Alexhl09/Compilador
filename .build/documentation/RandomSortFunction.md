# RandomSortFunction

A `SortFunction` that will animate all the views in with a random delay. No 2 views will animate in with the same offset. The views will be placed in an array, shuffled, and then each view will be asigned an offset given the `interObjectDelay`.

``` swift
public struct RandomSortFunction: SortFunction 
```

## Inheritance

[`SortFunction`](/SortFunction)

## Initializers

### `init(interObjectDelay:)`

``` swift
public init(interObjectDelay: TimeInterval) 
```

## Properties

### `interObjectDelay`

``` swift
public var interObjectDelay: TimeInterval
```

## Methods

### `timeOffsets(view:recursiveDepth:)`

``` swift
public func timeOffsets(view: UIView, recursiveDepth: Int) -> [TimedView] 
```
