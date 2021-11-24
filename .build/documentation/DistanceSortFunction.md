# DistanceSortFunction

A `SortFunction` implementation that contain basic methods needed for doing distance comparisons. If you are implementing a `SortFunction` that considers distance to be one of it's weighting mechanisms for sorting the views on the screen, then implementing this protocol would provide improvements over the standard `SortFunction`.

``` swift
public protocol DistanceSortFunction: SortFunction 
```

## Inheritance

[`SortFunction`](/SortFunction)

## Default Implementations

### `timeOffsets(view:recursiveDepth:)`

Given a view, view sort the subviews in a way that matches the desired specification of the `SortFunction`. In an example case, if you wanted a radial sort function then this method would return an array of the subviews such that their time offets would be smaller near the center of the view and grow as they get further from the center point.

``` swift
func timeOffsets(view: UIView, recursiveDepth: Int) -> [TimedView] 
```

> 

> 

#### Parameters

  - view: the view whose subviews should be animated. This view should not be included in the returned array
  - recursiveDepth: an int describing how deep into the view hiearchy the subview search should go, defaults to 0. A value of 0 is the same as calling the `subviews` on the actual view itself. Therefore a depth of 1 will be getting the subviews of each of the subviews, etc...

#### Returns

an array of `TimedView`'s which contain references to the view needed to be animated and the time offset for when the animation of that individual view should start relative to the start of the overall animation

### `distanceBetween(_:and:)`

``` swift
func distanceBetween(_ left: CGPoint, and right: CGPoint) -> Double 
```

### `translate(distancePoint:intoSubviews:)`

``` swift
func translate(distancePoint: CGPoint, intoSubviews subviews: [View]) -> CGPoint 
```

## Requirements

### interObjectDelay

the time interval of delay between each of the objects on the screen when animating

``` swift
var interObjectDelay: TimeInterval 
```

### reversed

a bool value as to whether the animation should proceeed forwards or backwards

``` swift
var reversed: Bool 
```

### distanceBetween(\_:​and:​)

Compute the distance between two points. This can be any distance metric as long as you keep it consistent. For the default implementation, `euclideanDistance` is used.

``` swift
func distanceBetween(_ left: CGPoint, and right: CGPoint) -> Double
```

#### Parameters

  - left: the left point
  - right: the right point

#### Returns

the distance between the two points.

### distancePoint(view:​subviews:​)

With a `DistanceSortFunction` there has to be some main point that all the views are compared to. Since we understand that this point changes based on some value, you need to implement this method that will return a point for the given `SortFunction` configuration. The `timeOffsets` method will use this to grab a comparison point. From there the further the distance from the point the longer the delay for that view to start animating.

``` swift
func distancePoint(view: UIView, subviews: [View]) -> CGPoint
```

#### Parameters

  - view: the view for which the point coordinates will base their values off of
  - subviews: the subviews that are allocated for the `SortFunction`. The reason these are passed into the function is so that you can actually grab a reference point of a subview that is closest to the comparison point. This is done so that at least one view will start at the 0s marker.

#### Returns

a `CGPoint` object that will allow all views to compare their reference point to this returned value. If `translate` was used, this returned value should be equal to one of the `subviews` reference points.

### translate(distancePoint:​intoSubviews:​)

Given a point, find the closest subview to that point and then return the reference point of that subview. This way there will be at least one distance calculation that will have a zero value. We want to make sure that the animation will start right when called, thus there needs to be one view with a zero distance.

``` swift
func translate(distancePoint: CGPoint, intoSubviews subviews: [View]) -> CGPoint
```

#### Parameters

  - distancePoint: the point on the main view
  - subviews: the subviews of the main view

#### Returns

the reference point of the subview that is closest to the `distancePoint`
