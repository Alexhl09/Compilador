# CorneredSortFunction

A `SortFunction` designed to animate in a corner like fashion. The views near the starting corner will animate first. In essence it appears to be a wiping function that will continue diagonally based on that corner.

``` swift
public struct CorneredSortFunction: CornerSortFunction 
```

## Inheritance

[`CornerSortFunction`](/CornerSortFunction)

## Initializers

### `init(corner:interObjectDelay:)`

``` swift
public init(corner: Corner, interObjectDelay: TimeInterval) 
```

## Properties

### `corner`

``` swift
public var corner: Corner
```

### `interObjectDelay`

``` swift
public var interObjectDelay: TimeInterval
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

### `distancePoint(view:subviews:)`

``` swift
public func distancePoint(view: UIView, subviews: [View] = []) -> CGPoint 
```
