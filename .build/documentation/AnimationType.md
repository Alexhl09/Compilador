# AnimationType

AnimationType available to perform/

``` swift
public enum AnimationType: Animation 
```

  - from: Animation with direction and distance.

  - zoom: Zoom animation.

  - rotate: Rotation animation.

## Inheritance

[`Animation`](/Animation), [`Animation`](/Animation), [`Animation`](/Animation), [`Animation`](/Animation), [`Animation`](/Animation), [`Animation`](/Animation)

## Enumeration Cases

### `from`

``` swift
case from(direction: Direction, offset: CGFloat)
```

### `zoom`

``` swift
case zoom(scale: CGFloat)
```

### `rotate`

``` swift
case rotate(angle: CGFloat)
```

### `from`

``` swift
case from(direction: Direction, offset: CGFloat)
```

### `zoom`

``` swift
case zoom(scale: CGFloat)
```

### `rotate`

``` swift
case rotate(angle: CGFloat)
```

## Properties

### `initialTransform`

Creates the corresponding CGAffineTransform for AnimationType.from.

``` swift
public var initialTransform: CGAffineTransform 
```

### `initialTransform`

Creates the corresponding CGAffineTransform for AnimationType.from.

``` swift
public var initialTransform: CGAffineTransform 
```

## Methods

### `random()`

Generates a random Animation.

``` swift
public static func random() -> Animation 
```

#### Returns

Newly generated random Animation.

### `random()`

Generates a random Animation.

``` swift
public static func random() -> Animation 
```

#### Returns

Newly generated random Animation.
