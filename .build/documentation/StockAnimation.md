# StockAnimation

A few stock animations that you can use with Spruce. We want to make it really easy for you to include animations so we tried to include the basics. Use these stock animations to `slide`, `fade`, `spin`, `expand`, or `contract` your views.

``` swift
public enum StockAnimation 
```

## Enumeration Cases

### `slide`

Have your view slide to where it currently is. Provide a `SlideDirection` and `Size` to determine what the animation should look like.

``` swift
case slide(SlideDirection, Distance)
```

### `fadeIn`

Fade the view in

``` swift
case fadeIn
```

### `spin`

Spin the view in the direction of the size. Provide a `Size` to define how much the view should spin

``` swift
case spin(Angle)
```

### `expand`

Have the view grow in size. Provide a `Size` to define by which scale the view should grow

``` swift
case expand(Scale)
```

### `contract`

Have the view shrink in size. Provide a `Size` to define by which scale the view should shrink

``` swift
case contract(Scale)
```

### `custom`

Provide custom prepare and change functions for the view to animate

``` swift
case custom(prepareFunction: PrepareHandler, animateFunction: ChangeFunction)
```
