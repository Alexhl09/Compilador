# KeyboardChangeContext

The context of an upcoming change in the frame of the system keyboard.

``` swift
public struct KeyboardChangeContext 
```

## Properties

### `beginFrame`

The current frame of the system keyboard.

``` swift
public var beginFrame: CGRect 
```

### `endFrame`

The final frame of the system keyboard.

``` swift
public var endFrame: CGRect 
```

### `animationCurve`

The animation curve which the system keyboard will use to animate the
change in its frame.

``` swift
public var animationCurve: UIViewAnimationCurve 
```

### `animationDuration`

The duration in which the system keyboard expects to animate the change in
its frame.

``` swift
public var animationDuration: Double 
```

### `isLocal`

Indicates whether the change is triggered locally. Used in iPad
multitasking, where all foreground apps would be notified of any changes
in the system keyboard's frame.

``` swift
@available(iOS 9.0, *)
	public var isLocal: Bool 
```
