# LinearSortFunction

A `Linear` wiping `SortFunction`. This will consider the rows or columns of the views rather than looking at their exact coordinates. Views that have the same vertical or horizontal components, based on the `direction`, will animate in at the same time.

``` swift
public struct LinearSortFunction: DirectionSortFunction 
```

## Inheritance

[`DirectionSortFunction`](/DirectionSortFunction)

## Initializers

### `init(direction:interObjectDelay:)`

``` swift
public init(direction: Direction, interObjectDelay: TimeInterval) 
```

## Properties

### `direction`

``` swift
public var direction: Direction
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

### `distanceBetween(_:and:)`

``` swift
public func distanceBetween(_ left: CGPoint, and right: CGPoint) -> Double 
```
