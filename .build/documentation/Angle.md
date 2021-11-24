# Angle

How much the angle of an animation should change. This value changes based off of which type of `StockAnimation` is used.

``` swift
public enum Angle 
```

  - slightly: slightly animate the object

  - moderately: the object should move a moderate amount

  - severely: the object should move very noticeably

  - toAngle: provide your own angle value that you feel the object should rotate

## Enumeration Cases

### `slightly`

slightly animate the object

``` swift
case slightly
```

### `moderately`

the object should move a moderate amount

``` swift
case moderately
```

### `severely`

the object should move very noticeably

``` swift
case severely
```

### `toAngle`

provide your own value that you feel the object should move. The value you should provide should be a `Double`

``` swift
case toAngle(CGFloat)
```
