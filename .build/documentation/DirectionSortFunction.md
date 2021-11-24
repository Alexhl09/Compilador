# DirectionSortFunction

A `DistanceSortFunction` that defines it's `distancePoint` based on a `Direction`. Any distance based sort functions that use a direction variable in order to determine the setup of the animation should implement this protocol.

``` swift
public protocol DirectionSortFunction: DistanceSortFunction 
```

## Inheritance

[`DistanceSortFunction`](/DistanceSortFunction)

## Default Implementations

### `distancePoint(view:subviews:)`

``` swift
func distancePoint(view: UIView, subviews: [View] = []) -> CGPoint 
```

## Requirements

### direction

the direction that the animation should follow

``` swift
var direction: Direction 
```
