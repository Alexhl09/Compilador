# Spruce

Access to all of the Spruce library animations. Use this to call functions such as `.animate` or `.prepare`

``` swift
public struct Spruce 
```

## Methods

### `animate(_:duration:completion:)`

Run a spruce style animation on this view. This method is the most basic form of a spruce animation and allows you to setup your view with stock spruce animations. Feel free to chain together animations that would work nicely together.

``` swift
func animate(_ animations: [StockAnimation], duration: TimeInterval = 0.3, completion: CompletionHandler? = nil ) 
```

> 

> 

#### Parameters

  - animations: an array of stock animations
  - duration: duration of each individual animation
  - completion: a closure that is called upon the final animation completing. A `Bool` is passed into the closure letting you know if the animation has completed. **Note:** If you stop animations on the whole animating view, then `false` will be passed into the completion closure. However, if the final animation is allowed to proceed then `true` will be the value passed into the completion closure.

### `animate(_:sortFunction:duration:completion:)`

Run a spruce style animation on this view. This allows you to setup your view with stock spruce animations. Feel free to chain together animations that would work nicely together.

``` swift
func animate(_ animations: [StockAnimation], sortFunction: SortFunction, duration: TimeInterval = 0.3, completion: CompletionHandler? = nil ) 
```

> 

> 

#### Parameters

  - animations: an array of stock animations
  - duration: duration of each individual animation
  - sortFunction: the `sortFunction` to be used when setting the offsets for each subviews animation
  - completion: a closure that is called upon the final animation completing. A `Bool` is passed into the closure letting you know if the animation has completed. **Note:** If you stop animations on the whole animating view, then `false` will be passed into the completion closure. However, if the final animation is allowed to proceed then `true` will be the value passed into the completion closure.

### `animate(_:duration:animationType:completion:)`

Run a spruce style animation on this view. This method allows you to setup your view with stock spruce animations. Feel free to chain together animations that would work nicely together.

``` swift
func animate(_ animations: [StockAnimation], duration: TimeInterval = 0.3, animationType: Animation, completion: CompletionHandler? = nil) 
```

> 

#### Parameters

  - animations: an array of stock animations
  - duration: duration of each individual animation
  - animationType: style of animation that each view should follow. Don't worry about setting the `changeFunction`. We will set that using the stock animations that you provide. If you have a value there it will be overwritten. (ex: SpringAnimation)
  - completion: a closure that is called upon the final animation completing. A `Bool` is passed into the closure letting you know if the animation has completed. **Note:** If you stop animations on the whole animating view, then `false` will be passed into the completion closure. However, if the final animation is allowed to proceed then `true` will be the value passed into the completion closure.

### `animate(_:duration:animationType:sortFunction:prepare:completion:)`

Run a spruce style animation on this view. This method allows you to setup your view with stock spruce animations. Feel free to chain together animations that would work nicely together.

``` swift
func animate(_ animations: [StockAnimation], duration: TimeInterval = 0.3, animationType: Animation, sortFunction: SortFunction, prepare: Bool = true, completion: CompletionHandler? = nil) 
```

#### Parameters

  - animations: an array of stock animations
  - duration: duration of each individual animation
  - animationType: style of animation that each view should follow. Don't worry about setting the `changeFunction`. We will set that using the stock animations that you provide. If you have a value there it will be overwritten. (ex: SpringAnimation)
  - sortFunction: the `sortFunction` to be used when setting the offsets for each subviews animation
  - prepare: a `bool` as to whether we should run `prepare` on your view for you. If set to `true`, then we will run `prepare` right before the animation using the stock animations that you provided. If `false`, then `prepare` will not run. (default is `true`)
  - completion: a closure that is called upon the final animation completing. A `Bool` is passed into the closure letting you know if the animation has completed. **Note:** If you stop animations on the whole animating view, then `false` will be passed into the completion closure. However, if the final animation is allowed to proceed then `true` will be the value passed into the completion closure.

### `prepare(with:recursiveDepth:)`

Use this method to setup all of your views before the animation occurs. This could include hiding, fading, translating them, etc...
Given the array of stock animations, the change functions required to prepare those animations will automatically be run for you. No need to specify your own custom change function here.

``` swift
func prepare(with animations: [StockAnimation], recursiveDepth: Int = 0) 
```

> 

#### Parameters

  - animations: an array of stock animations
  - recursiveDepth: an int describing how deep into the view hiearchy the subview search should go

### `hideAllSubviews(recursiveDepth:)`

Quick method to hide all of the subviews of a view. Use this if you want to make sure that none of the views that will be animated will be shown on screen before you transition them.

``` swift
func hideAllSubviews(recursiveDepth: Int = 0) 
```

#### Parameters

  - recursiveDepth: an int describing how deep into the view hiearchy the subview search should go

### `prepare(withRecursiveDepth:changeFunction:)`

Use this method to setup all of your views before the animation occurs. This could include hiding, fading, translating them, etc...

``` swift
func prepare(withRecursiveDepth recursiveDepth: Int = 0, changeFunction: ChangeFunction) 
```

#### Parameters

  - recursiveDepth: an int describing how deep into the view hiearchy the subview search should go
  - changeFunction: a function that should be applied to each of the subviews of `this`

### `animate(withSortFunction:prepare:animation:exclude:recursiveDepth:completion:)`

Run a spruce style animation on this view. This is a customized method that allows you to take more control over how the animation progresses.

``` swift
func animate(withSortFunction sortFunction: SortFunction, prepare: PrepareHandler? = nil, animation: Animation, exclude: [UIView]? = nil, recursiveDepth: Int = 0, completion: CompletionHandler? = nil) 
```

#### Parameters

  - sortFunction: the `SortFunction` used to determine the animation offsets for each subview
  - prepare: a closure that will be called with each subview of `this` parent view
  - animation: a `Animation` that will be used to animate each subview
  - exclude: an array of views that the animation should skip over
  - recursiveDepth: an int describing how deep into the view hiearchy the subview search should go, defaults to 0
  - completion: a closure that is called upon the final animation completing. A `Bool` is passed into the closure letting you know if the animation has completed. **Note:** If you stop animations on the whole animating view, then `false` will be passed into the completion closure. However, if the final animation is allowed to proceed then `true` will be the value passed into the completion closure.

### `subviews(withRecursiveDepth:)`

The receiver's immediate subviews given the recursive depth. If a subview contains other subviews, they will be listed in the array following their parent view. Consider the following example:​

``` swift
func subviews(withRecursiveDepth recursiveDepth: Int) -> [View] 
```

``` 
// A: [B, C]
// B: [D, E]
// C: []
// D: []
// E: []
let result = A.spruce.subviews(withRecursiveDepth: 1)
// result: [A, B, D, E, C]
```

> 

> 

#### Parameters

  - recursiveDepth: an int for how deep into the view hierarchy the subview search should go

#### Returns

an array of all the subviews in the receiver view. Depending on the `recursiveDepth` this could contain the subviews of subviews also.
