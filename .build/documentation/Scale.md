# Scale

How much the scale of an animation should change. This value changes based off of which type of `StockAnimation` is used.

``` swift
public enum Scale 
```

  - slightly: slightly animate the object

  - moderately: the object should scale a moderate amount

  - severely: the object should scale very noticeably

  - toScale: provide your own scale value that you feel the object should grow/shrink

## Enumeration Cases

### `slightly`

slightly animate the object

``` swift
case slightly
```

### `moderately`

the object should scale a moderate amount

``` swift
case moderately
```

### `severely`

the object should scale very noticeably

``` swift
case severely
```

### `toScale`

provide your own scale value that you feel the object should grow/shrink

``` swift
case toScale(CGFloat)
```
