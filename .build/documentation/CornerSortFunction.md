# CornerSortFunction

A `DistanceSortFunction` that uses a corner attribute to define an animation's starting point.

``` swift
public protocol CornerSortFunction: DistanceSortFunction 
```

## Inheritance

[`DistanceSortFunction`](/DistanceSortFunction)

## Default Implementations

### `distancePoint(view:subviews:)`

``` swift
func distancePoint(view: UIView, subviews: [View] = []) -> CGPoint 
```

## Requirements

### corner

The starting corner for the animation. Views will animate vertically and horizontally from this corner.

``` swift
var corner: Corner 
```
