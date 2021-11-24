# Animation

Animation protocol defines the initial transform for a view for it to
animate to its identity position.

``` swift
public protocol Animation 
```

## Requirements

### animate(delay:​view:​completion:​)

Animate the given view using the `changeFunction`.

``` swift
func animate(delay: TimeInterval, view: UIView, completion: CompletionHandler?)
```

#### Parameters

  - delay: the time interval that this animation should wait to start from the moment this method is called
  - view: the view to animate
  - completion: a closure that is called upon the animation completing. A `Bool` is passed into the closure letting you know if the animation has completed.

### changeFunction

Given a view, this closure will define the manipulations that will happen to that view

``` swift
var changeFunction: ChangeFunction? 
```

### initialTransform

Defines the starting point for the animations.

``` swift
var initialTransform: CGAffineTransform 
```

### initialTransform

Defines the starting point for the animations.

``` swift
var initialTransform: CGAffineTransform 
```
