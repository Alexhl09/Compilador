# AnimationChain

``` swift
public class AnimationChain 
```

  - A sequence of animations where animations are executed the one after the other.
  - 
  - Animations are represented by `AnimationPhase` objects, that contain the code of the animation,
  - its duration relative to the chain duration, their curve and their individual completion handlers.

## Initializers

### `init(duration:)`

``` swift
public init(duration: TimeInterval) 
```

  - Creates an animation chain with the specified duration.

### `init(duration:)`

``` swift
public init(duration: TimeInterval) 
```

  - Creates an animation chain with the specified duration.

### `init(duration:)`

``` swift
public init(duration: TimeInterval) 
```

  - Creates an animation chain with the specified duration.

## Properties

### `duration`

The total duration of the animation chain.

``` swift
public let duration: TimeInterval
```

### `initialDelay`

The initial delay before the animation chain starts.

``` swift
public var initialDelay: TimeInterval = 0
```

### `completionHandler`

The code to execute after animation chain is executed.

``` swift
public var completionHandler: () -> Void
```

### `isRunning`

Whether the chain is being run.

``` swift
public private(set) var isRunning: Bool = false
```

### `duration`

The total duration of the animation chain.

``` swift
public let duration: TimeInterval
```

### `initialDelay`

The initial delay before the animation chain starts.

``` swift
public var initialDelay: TimeInterval = 0
```

### `completionHandler`

The code to execute after animation chain is executed.

``` swift
public var completionHandler: () -> Void
```

### `isRunning`

Whether the chain is being run.

``` swift
public private(set) var isRunning: Bool = false
```

### `duration`

The total duration of the animation chain.

``` swift
public let duration: TimeInterval
```

### `initialDelay`

The initial delay before the animation chain starts.

``` swift
public var initialDelay: TimeInterval = 0
```

### `completionHandler`

The code to execute after animation chain is executed.

``` swift
public var completionHandler: () -> Void
```

### `isRunning`

Whether the chain is being run.

``` swift
public private(set) var isRunning: Bool = false
```

## Methods

### `add(_:)`

``` swift
public func add(_ animation: AnimationPhase) 
```

  - Add an animation at the end of the chain.
  - 
  - You cannot add animations if the chain is running.
  - 
  -   - parameter animation: The animation phase to add.

### `start()`

``` swift
public func start() 
```

  - Starts the animation chain.

### `add(_:)`

``` swift
public func add(_ animation: AnimationPhase) 
```

  - Add an animation at the end of the chain.
  - 
  - You cannot add animations if the chain is running.
  - 
  -   - parameter animation: The animation phase to add.

### `start()`

``` swift
public func start() 
```

  - Starts the animation chain.

### `add(_:)`

``` swift
public func add(_ animation: AnimationPhase) 
```

  - Add an animation at the end of the chain.
  - 
  - You cannot add animations if the chain is running.
  - 
  -   - parameter animation: The animation phase to add.

### `start()`

``` swift
public func start() 
```

  - Starts the animation chain.
