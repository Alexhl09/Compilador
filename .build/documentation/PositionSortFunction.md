# PositionSortFunction

A `DistanceSortFunction` that uses a position attribute to define an animation's starting point.

``` swift
public protocol PositionSortFunction: DistanceSortFunction 
```

## Inheritance

[`DistanceSortFunction`](/DistanceSortFunction)

## Default Implementations

### `distancePoint(view:subviews:)`

``` swift
func distancePoint(view: UIView, subviews: [View]) -> CGPoint 
```

## Requirements

### position

the starting position of the animation

``` swift
var position: Position 
```
