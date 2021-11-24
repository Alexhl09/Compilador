# StandardAnimation

A wrapper around the standard `UIViewAnimation` block with options publicly accessible. See, [UIViewAnimation](apple-reference-documentation:​//hsLqXZ_dD1) for more

``` swift
public struct StandardAnimation: Animation 
```

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

``` swift
public var animationOptions: UIView.AnimationOptions = .curveEaseOut
```

## Methods

### `animate(delay:view:completion:)`

``` swift
public func animate(delay: TimeInterval, view: UIView, completion: CompletionHandler?) 
```
