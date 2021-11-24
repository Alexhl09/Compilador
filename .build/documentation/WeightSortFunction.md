# WeightSortFunction

A `SortFunction` that takes into account the vertical and horizontal weight of the position of views. The lighter the weight the the faster those views will start to animate. For example, if you had a light `verticalWeight` and a heavy `horizontalWeight`, the views that are vertically aligned with the starting position will animate before those that are horizontally aligned. This allows you to define the exact rigidness of a `radial` like `SortFunction`.

``` swift
public protocol WeightSortFunction: SortFunction 
```

## Inheritance

[`SortFunction`](/SortFunction)

## Requirements

### horizontalWeight

the horizontal weight that should be applied to each of the distances between views

``` swift
var horizontalWeight: Weight 
```

### verticalWeight

the vertical weight that should be applied to each of the distances between views

``` swift
var verticalWeight: Weight 
```
