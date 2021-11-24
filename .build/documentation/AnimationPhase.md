# AnimationPhase

``` swift
public class AnimationPhase 
```

  - A member of an `AnimationChain`, representing a single animation.
  - 
  - Set the `block` property to a block containing the animations. Set the `completionHandler` with
  - a block to execute at the end of the animation. The default values do nothing.

## Initializers

### `init(relativeDuration:curve:)`

``` swift
public init(relativeDuration: TimeInterval, curve: UIView.AnimationCurve) 
```

  - Creates an animtion phase object.
  - 
  -   - parameter relativeDuration: The duration of the animation, as a fraction of the total chain
  - duration. Must be between 0 and 1.
  -   - parameter curve: The animation curve

### `init(relativeDuration:curve:)`

``` swift
public init(relativeDuration: TimeInterval, curve: UIView.AnimationCurve) 
```

  - Creates an animtion phase object.
  - 
  -   - parameter relativeDuration: The duration of the animation, as a fraction of the total chain
  - duration. Must be between 0 and 1.
  -   - parameter curve: The animation curve

### `init(relativeDuration:curve:)`

``` swift
public init(relativeDuration: TimeInterval, curve: UIView.AnimationCurve) 
```

  - Creates an animtion phase object.
  - 
  -   - parameter relativeDuration: The duration of the animation, as a fraction of the total chain
  - duration. Must be between 0 and 1.
  -   - parameter curve: The animation curve

## Properties

### `relativeDuration`

``` swift
public let relativeDuration: TimeInterval
```

  - The duration of the animation, relative to the total duration of the chain.
  - 
  - Must be between 0 and 1.

### `curve`

``` swift
public let curve: UIView.AnimationCurve
```

  - The animation curve.

### `block`

``` swift
public var block: () -> Void
```

  - The animation code.

### `completionHandler`

``` swift
public var completionHandler: () -> Void
```

  - A block to execute at the end of the animation.

### `relativeDuration`

``` swift
public let relativeDuration: TimeInterval
```

  - The duration of the animation, relative to the total duration of the chain.
  - 
  - Must be between 0 and 1.

### `curve`

``` swift
public let curve: UIView.AnimationCurve
```

  - The animation curve.

### `block`

``` swift
public var block: () -> Void
```

  - The animation code.

### `completionHandler`

``` swift
public var completionHandler: () -> Void
```

  - A block to execute at the end of the animation.

### `relativeDuration`

``` swift
public let relativeDuration: TimeInterval
```

  - The duration of the animation, relative to the total duration of the chain.
  - 
  - Must be between 0 and 1.

### `curve`

``` swift
public let curve: UIView.AnimationCurve
```

  - The animation curve.

### `block`

``` swift
public var block: () -> Void
```

  - The animation code.

### `completionHandler`

``` swift
public var completionHandler: () -> Void
```

  - A block to execute at the end of the animation.
