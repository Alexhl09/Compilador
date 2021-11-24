# BLTNItemManager

``` swift
@objc public final class BLTNItemManager: NSObject 
```

  - An object that manages the presentation of a bulletin.
  - 
  - You create a bulletin manager using the `init(rootItem:)` initializer, where `rootItem` is the
  - first bulletin item to display. An item represents the contents displayed on a single card.
  - 
  - The manager works like a navigation controller. You can push new items to the stack to display them,
  - and pop existing ones to go back.
  - 
  - You must call the `prepare` method before displaying the view controller.
  - 
  - `BLTNItemManager` must only be used from the main thread.

## Inheritance

`NSObject`, `NSObject`, `NSObject`

## Initializers

### `init(rootItem:)`

``` swift
@objc public init(rootItem: BLTNItem) 
```

  - Creates a bulletin manager and sets the first item to display.s
  - 
  -   - parameter rootItem: The first item to display.

### `init(rootItem:)`

``` swift
@objc public init(rootItem: BLTNItem) 
```

  - Creates a bulletin manager and sets the first item to display.s
  - 
  -   - parameter rootItem: The first item to display.

### `init(rootItem:)`

``` swift
@objc public init(rootItem: BLTNItem) 
```

  - Creates a bulletin manager and sets the first item to display.s
  - 
  -   - parameter rootItem: The first item to display.

## Properties

### `backgroundColor`

``` swift
@objc public var backgroundColor: UIColor 
```

  - The background color of the bulletin card. Defaults to `systemBackground` on iOS 13
  - and white on older versions of the OS.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `backgroundViewStyle`

``` swift
@objc public var backgroundViewStyle: BLTNBackgroundViewStyle = .dimmed
```

  - The style of the view covering the content. Defaults to `.dimmed`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `statusBarAppearance`

``` swift
@objc public var statusBarAppearance: BLTNStatusBarAppearance = .automatic
```

  - The style of status bar to use with the bulltin. Defaults to `.automatic`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `statusBarAnimation`

``` swift
@objc public var statusBarAnimation: UIStatusBarAnimation = .fade
```

  - The style of status bar animation. Defaults to `.fade`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `hidesHomeIndicator`

``` swift
@objc public var hidesHomeIndicator: Bool = false
```

  - The home indicator for iPhone X should be hidden or not. Defaults to false.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `edgeSpacing`

``` swift
@objc public var edgeSpacing: BLTNSpacing = .regular
```

  - The spacing between the edge of the screen and the edge of the card. Defaults to regular.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `cardCornerRadius`

``` swift
@objc public var cardCornerRadius: NSNumber?
```

  - The rounded corner radius of the bulletin card. Defaults to 12, and 36 on iPhone X.
  - 
  - Set this value before calling `prepare`. Changing it after will have no effect.

### `allowsSwipeInteraction`

``` swift
@objc public var allowsSwipeInteraction: Bool = true
```

  - Whether swipe to dismiss should be allowed. Defaults to true.
  - 
  - If you set this value to true, the user will be able to drag the card, and swipe down to
  - dismiss it (if allowed by the current item).
  - 
  - If you set this value to false, no pan gesture will be recognized, and swipe to dismiss
  - won't be available.

### `isShowingBulletin`

``` swift
@objc public var isShowingBulletin: Bool 
```

  - Tells us if a bulletin is currently being shown. Defaults to false

### `backgroundColor`

``` swift
@objc public var backgroundColor: UIColor 
```

  - The background color of the bulletin card. Defaults to `systemBackground` on iOS 13
  - and white on older versions of the OS.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `backgroundViewStyle`

``` swift
@objc public var backgroundViewStyle: BLTNBackgroundViewStyle = .dimmed
```

  - The style of the view covering the content. Defaults to `.dimmed`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `statusBarAppearance`

``` swift
@objc public var statusBarAppearance: BLTNStatusBarAppearance = .automatic
```

  - The style of status bar to use with the bulltin. Defaults to `.automatic`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `statusBarAnimation`

``` swift
@objc public var statusBarAnimation: UIStatusBarAnimation = .fade
```

  - The style of status bar animation. Defaults to `.fade`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `hidesHomeIndicator`

``` swift
@objc public var hidesHomeIndicator: Bool = false
```

  - The home indicator for iPhone X should be hidden or not. Defaults to false.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `edgeSpacing`

``` swift
@objc public var edgeSpacing: BLTNSpacing = .regular
```

  - The spacing between the edge of the screen and the edge of the card. Defaults to regular.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `cardCornerRadius`

``` swift
@objc public var cardCornerRadius: NSNumber?
```

  - The rounded corner radius of the bulletin card. Defaults to 12, and 36 on iPhone X.
  - 
  - Set this value before calling `prepare`. Changing it after will have no effect.

### `allowsSwipeInteraction`

``` swift
@objc public var allowsSwipeInteraction: Bool = true
```

  - Whether swipe to dismiss should be allowed. Defaults to true.
  - 
  - If you set this value to true, the user will be able to drag the card, and swipe down to
  - dismiss it (if allowed by the current item).
  - 
  - If you set this value to false, no pan gesture will be recognized, and swipe to dismiss
  - won't be available.

### `isShowingBulletin`

``` swift
@objc public var isShowingBulletin: Bool 
```

  - Tells us if a bulletin is currently being shown. Defaults to false

### `backgroundColor`

``` swift
@objc public var backgroundColor: UIColor 
```

  - The background color of the bulletin card. Defaults to `systemBackground` on iOS 13
  - and white on older versions of the OS.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `backgroundViewStyle`

``` swift
@objc public var backgroundViewStyle: BLTNBackgroundViewStyle = .dimmed
```

  - The style of the view covering the content. Defaults to `.dimmed`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `statusBarAppearance`

``` swift
@objc public var statusBarAppearance: BLTNStatusBarAppearance = .automatic
```

  - The style of status bar to use with the bulltin. Defaults to `.automatic`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `statusBarAnimation`

``` swift
@objc public var statusBarAnimation: UIStatusBarAnimation = .fade
```

  - The style of status bar animation. Defaults to `.fade`.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `hidesHomeIndicator`

``` swift
@objc public var hidesHomeIndicator: Bool = false
```

  - The home indicator for iPhone X should be hidden or not. Defaults to false.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `edgeSpacing`

``` swift
@objc public var edgeSpacing: BLTNSpacing = .regular
```

  - The spacing between the edge of the screen and the edge of the card. Defaults to regular.
  - 
  - Set this value before presenting the bulletin. Changing it after will have no effect.

### `cardCornerRadius`

``` swift
@objc public var cardCornerRadius: NSNumber?
```

  - The rounded corner radius of the bulletin card. Defaults to 12, and 36 on iPhone X.
  - 
  - Set this value before calling `prepare`. Changing it after will have no effect.

### `allowsSwipeInteraction`

``` swift
@objc public var allowsSwipeInteraction: Bool = true
```

  - Whether swipe to dismiss should be allowed. Defaults to true.
  - 
  - If you set this value to true, the user will be able to drag the card, and swipe down to
  - dismiss it (if allowed by the current item).
  - 
  - If you set this value to false, no pan gesture will be recognized, and swipe to dismiss
  - won't be available.

### `isShowingBulletin`

``` swift
@objc public var isShowingBulletin: Bool 
```

  - Tells us if a bulletin is currently being shown. Defaults to false

## Methods

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `push(item:)`

``` swift
@objc public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `push(item:)`

``` swift
@objc public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `push(item:)`

``` swift
@objc public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popTo(item:orDismiss:)`

``` swift
@objc public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popTo(item:orDismiss:)`

``` swift
@objc public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popTo(item:orDismiss:)`

``` swift
@objc public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `push(item:)`

``` swift
@objc public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `push(item:)`

``` swift
@objc public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `push(item:)`

``` swift
@objc public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popTo(item:orDismiss:)`

``` swift
@objc public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popTo(item:orDismiss:)`

``` swift
@objc public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popTo(item:orDismiss:)`

``` swift
@objc public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `present(_:animated:completion:)`

``` swift
@objc(presentViewControllerAboveBulletin:animated:completion:)
    public func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) 
```

  - Presents a view controller above the bulletin card.
  - 
  - This is useful if you want to present an alert or a Safari view contoller in response to user
  - action.
  - 
  -   - parameter viewController: The view controller to present.
  -   - parameter animated: Whether presentation should be animated.
  -   - parameter completion: An optional completion block to run after presentation
  - has completed. Defaults to `nil`.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `withContentView(_:)`

``` swift
@discardableResult
    public func withContentView<Result>(_ transform: (UIView) throws -> Result) rethrows -> Result 
```

  - Performs an operation with the bulletin content view and returns the result.
  - 
  - Use this as an opportunity to customize the behavior of the content view (e.g. add motion effects).
  - 
  - You must not store a reference to the view, or modify its layout (add subviews, add contraints, ...) as this
  - could break the bulletin.
  - 
  - Use this feature sparingly.
  - 
  -   - parameter transform: The code to execute with the content view.
  -   - warning: If you save the content view outside of the `transform` closure, an exception will be raised.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `displayActivityIndicator(color:)`

``` swift
@objc public func displayActivityIndicator(color: UIColor? = nil) 
```

  - Hides the contents of the stack and displays an activity indicator view.
  - 
  - Use this method if you need to perform a long task or fetch some data before changing the item.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item. It will disable
  - dismissal by tapping and swiping to allow the task to complete and avoid resource deallocation.
  - 
  -   - parameter color: The color of the activity indicator to display. Defaults to .label on iOS 13 and .black on older systems.
  - 
  - Displaying the loading indicator does not change the height of the page or the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `hideActivityIndicator()`

``` swift
@objc public func hideActivityIndicator() 
```

  - Hides the activity indicator and displays the current item.
  - 
  - You can also call one of `popItem`, `popToRootItem` and `pushItem` if you need to hide the activity
  - indicator and change the current item.

### `push(item:)`

``` swift
@objc(pushItem:)
    public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `push(item:)`

``` swift
@objc(pushItem:)
    public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `push(item:)`

``` swift
@objc(pushItem:)
    public func push(item: BLTNItem) 
```

  - Displays a new item after the current one.
  -   - parameter item: The item to display.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popItem()`

``` swift
@objc public func popItem() 
```

  - Removes the current item from the stack and displays the previous item.

### `popTo(item:orDismiss:)`

``` swift
@objc(popToItem:orDismiss:)
    public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popTo(item:orDismiss:)`

``` swift
@objc(popToItem:orDismiss:)
    public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popTo(item:orDismiss:)`

``` swift
@objc(popToItem:orDismiss:)
    public func popTo(item: BLTNItem, orDismiss: Bool) 
```

  - Removes items from the stack until a specific item is found.
  -   - parameter item: The item to seek.
  -   - parameter orDismiss: If true, dismiss bullein if not found. Otherwise popToRootItem()

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `popToRootItem()`

``` swift
@objc public func popToRootItem() 
```

  - Removes all the items from the stack and displays the root item.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `displayNextItem()`

``` swift
@objc public func displayNextItem() 
```

  - Displays the next item, if the `next` property of the current item is set.
  - 
  -   - warning: If you call this method but `next` is `nil`, an exception will be raised.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(above:animated:completion:)`

``` swift
@objc(showBulletinAboveViewController:animated:completion:)
    public func showBulletin(above presentingVC: UIViewController,
                                       animated: Bool = true,
                                     completion: (() -> Void)? = nil) 
```

  - Presents the bulletin above the specified view controller.
  - 
  -   - parameter presentingVC: The view controller to use to present the bulletin.
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `showBulletin(in:animated:completion:)`

``` swift
@objc(showBulletinInApplication:animated:completion:)
    public func showBulletin(in application: UIApplication,
                             animated: Bool = true,
                             completion: (() -> Void)? = nil) 
```

  - Presents the bulletin on top of your application window.
  - 
  -   - parameter application: The application in which to display the bulletin. (normally: UIApplication.shared)
  -   - parameter animated: Whether to animate presentation. Defaults to `true`.
  -   - parameter completion: An optional block to execute after presentation. Default to `nil`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `dismissBulletin(animated:)`

``` swift
@objc(dismissBulletinAnimated:)
    public func dismissBulletin(animated: Bool = true) 
```

  - Dismisses the bulletin and clears the current page. You will have to call `prepare` before
  - presenting the bulletin again.
  - 
  - This method will call the `dismissalHandler` block of the current item if it was set.
  - 
  -   - parameter animated: Whether to animate dismissal. Defaults to `true`.

### `displayActivityIndicator()`

``` swift
public func displayActivityIndicator() 
```

### `displayActivityIndicator()`

``` swift
public func displayActivityIndicator() 
```

### `displayActivityIndicator()`

``` swift
public func displayActivityIndicator() 
```

### `present(_:animated:)`

``` swift
public func present(_ viewController: UIViewController, animated: Bool) -> Void 
```

### `present(_:animated:)`

``` swift
public func present(_ viewController: UIViewController, animated: Bool) -> Void 
```

### `present(_:animated:)`

``` swift
public func present(_ viewController: UIViewController, animated: Bool) -> Void 
```
