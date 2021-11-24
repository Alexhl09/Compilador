# JellyAnimator

A JellyAnimator is an UIViewControllerTransitionsDelegate with some extra candy.
Basically the JellyAnimator is the main class to use when working with Jelly.
You need to create a JellyAnimator and assign it as a transitionDelegate to your ViewController.
After you did this you need to set the presentation style to custom so the VC asks its custom delegate.
You can use the prepare function for that

``` swift
public class JellyAnimator : NSObject 
```

# JellyAnimator

## Inheritance

`NSObject`, `UIViewControllerTransitioningDelegate`

## Initializers

### `init(presentation:)`

``` swift
public init(presentation: JellyPresentation) 
```

#### designated initializer

  - Parameter presentation: a custom Presentation Object

## Methods

### `prepare(viewController:)`

Call this function to prepare the viewController you want to present

``` swift
public func prepare(viewController: UIViewController) 
```

#### prepare

#### Parameters

  - viewController: viewController that should be presented in a custom way

### `presentationController(forPresented:presenting:source:)`

Gets called from UIKit if presentatioStyle is custom and transitionDelegate is set

``` swift
public func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? 
```

### `animationController(forPresented:presenting:source:)`

Each Presentation has two directions
Inside a Presention Object you can specify some extra parameters
This Parameters will be passed to a custom animator that handles the presentation animation (duration, direction etc.)

``` swift
public func animationController(forPresented presented: UIViewController,
                             presenting: UIViewController,
                             source: UIViewController) -> UIViewControllerAnimatedTransitioning? 
```

### `animationController(forDismissed:)`

``` swift
public func animationController(forDismissed dismissed: UIViewController)
        -> UIViewControllerAnimatedTransitioning? 
```
