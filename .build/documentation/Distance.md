# Distance

How much the distance of a view animation should change. This value changes based off of which type of `StockAnimation` is used.

``` swift
public enum Distance 
```

  - slightly: slightly move the object

  - moderately: the object should move a moderate amount

  - severely: the object should move very noticeably

  - byPoints: provide your own distance value that you feel the object should slide over

## Enumeration Cases

### `slightly`

slightly move the object

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

### `byPoints`

provide your own distance value that you feel the object should slide over

``` swift
case byPoints(CGFloat)
```
