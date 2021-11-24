# RadialSortFunction

A `SortFunction` that will offset the views in a circular fashion. This means that rather than looking flat like the `CorneredSortFunction`, there will be a curve going out of the position as if the views were in an expanding circle.

``` swift
public struct RadialSortFunction: PositionSortFunction 
```

## Inheritance

[`PositionSortFunction`](/PositionSortFunction)

## Initializers

### `init(position:interObjectDelay:)`

``` swift
public init(position: Position, interObjectDelay: TimeInterval) 
```

## Properties

### `position`

``` swift
public var position: Position
```

### `interObjectDelay`

``` swift
public var interObjectDelay: TimeInterval
```

### `reversed`

``` swift
public var reversed: Bool = false
```
