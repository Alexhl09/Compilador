# SpringAnimation

A wrapper around the spring `UIViewAnimation` block with options publicly accessible. See, [UIViewAnimation](apple-reference-documentation:​//hsEaMPVO1d) for more

``` swift
public struct SpringAnimation: Animation 
```

> 

> 

## Inheritance

[`Animation`](/Animation), [`Animation`](/Animation), [`Animation`](/Animation)

## Initializers

### `init(duration:)`

``` swift
public init(duration: TimeInterval) 
```

### `init(duration:changes:)`

``` swift
public init(duration: TimeInterval, changes: @escaping ChangeFunction) 
```

## Properties

### `changeFunction`

``` swift
public var changeFunction: ChangeFunction?
```

### `duration`

``` swift
public var duration: TimeInterval
```

### `animationOptions`

A mask of options indicating how you want to perform the animations

``` swift
public var animationOptions: UIView.AnimationOptions = []
```

### `damping`

``` swift
public var damping: CGFloat = 0.5
```

### `initialVelocity`

``` swift
public var initialVelocity: CGFloat = 0.7
```

## Methods

### `animate(delay:view:completion:)`

``` swift
public func animate(delay: TimeInterval, view: UIView, completion: CompletionHandler?) 
```
