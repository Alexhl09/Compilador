# Weight

Represents the weighted values for computation

``` swift
public enum Weight 
```

  - light: a small value, 0.5

  - medium: a default value, 1.0

  - heavy: a large value, 2.0

  - custom: you can specify your own value for weight

## Enumeration Cases

### `light`

a small value, 0.5

``` swift
case light
```

### `medium`

a default value, 1.0

``` swift
case medium
```

### `heavy`

a large value, 2.0

``` swift
case heavy
```

### `custom`

you can specify your own value for weight

``` swift
case custom(Double)
```
