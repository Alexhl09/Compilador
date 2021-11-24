# StarsKitUIDelegate

StarsKit UI event delegation

``` swift
public protocol StarsKitUIDelegate: class 
```

## Inheritance

`class`

## Requirements

### presenterController()

Ask which controller is needed to display the rate pop-up

``` swift
func presenterController() -> UIViewController?
```

### didRatingScreenWillAppear()

Rating screen is gonna to be displayed

``` swift
func didRatingScreenWillAppear()
```

### didRatingScreenDidAppear()

Rating screen definitly appear after animation

``` swift
func didRatingScreenDidAppear()
```

### didRatingScreenWillDisappear()

Rating screen is gonna to be dismissed

``` swift
func didRatingScreenWillDisappear()
```

### didRatingScreenDidDisappear()

Rating screen definitly disappear after animation

``` swift
func didRatingScreenDidDisappear()
```
