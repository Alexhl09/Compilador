# BLTNItem

``` swift
@objc open class BLTNItem: NSObject 
```

  - An item that can be displayed inside a bulletin card.

## Inheritance

`NSObject`

## Properties

### `manager`

``` swift
@objc public internal(set) weak var manager: BLTNItemManager?
```

  - The current object managing the item.
  - 
  - This property is set when the item is currently being displayed. It will be set to `nil` when
  - the item is removed from view.
  - 
  - When implementing `BLTNItem`, you should mark this property `weak` to avoid retain cycles.

### `isDismissable`

``` swift
@objc open var isDismissable: Bool = true
```

  - Whether the page can be dismissed.
  - 
  - The default value is `true`, which means the user will be able to dismiss the bulletin by tapping outside
  - of the card or by swiping down.
  - 
  - You should set it to `true` for the last item you want to display, or for items that start an optional flow
  - (ex: a purchase).

### `requiresCloseButton`

``` swift
@objc open var requiresCloseButton: Bool = true
```

  - Whether the page can be dismissed with a close button.
  - 
  - The default value is `true`. The user will be able to dismiss the bulletin by tapping on a button
  - in the corner of the screen.
  - 
  - You should set it to `false` if the interface of the bulletin already has buttons to dismiss the item,
  - such as an action button.

### `shouldStartWithActivityIndicator`

``` swift
@objc open var shouldStartWithActivityIndicator: Bool = false
```

  - Whether the card should start with an activity indicator.
  - 
  - Set this value to `false` to display the elements right away. If you set it to `true`,
  - you'll need to call `manager?.hideActivityIndicator()` to show the UI.

### `shouldRespondToKeyboardChanges`

``` swift
@objc open var shouldRespondToKeyboardChanges: Bool = true
```

  - Whether the item should move with the keyboard.
  - 
  - You must set it to `true` if the item displays a text field. You can set it to `false` if you
  - don't want the bulletin to move when system alerts containing a text field (ex: iTunes login)
  - are displayed.

### `next`

``` swift
@objc(nextItem) open var next: BLTNItem?
```

  - The item to display after this one.
  - 
  - If you set this value, you'll be able to call `manager?.displayNextItem()` to push the next item to
  - the stack.

### `presentationHandler`

``` swift
@objc open var presentationHandler: ((BLTNItem) -> Void)?
```

  - The block of code to execute when the bulletin item is presented. This is called after the
  - bulletin is moved onto the view.
  - 
  -   - parameter item: The item that is being presented.

### `dismissalHandler`

``` swift
@objc open var dismissalHandler: ((BLTNItem) -> Void)?
```

  - The block of code to execute when the bulletin item is dismissed. This is called when the bulletin
  - is moved out of view.
  - 
  - You can leave it `nil` if `isDismissable` is set to false.

## Methods

### `makeArrangedSubviews()`

``` swift
open func makeArrangedSubviews() -> [UIView] 
```

  - Creates the list of views to display inside the bulletin card.
  - 
  - The views will be arranged vertically, in the order they are stored in the return array.

### `setUp()`

``` swift
open func setUp() 
```

  - Called by the manager when the item was added to the bulletin.
  - 
  - Use this function to configure your managed views, and allocate any resources required
  - for this item.

### `tearDown()`

``` swift
open func tearDown() 
```

  - Called by the manager when the item was removed from the bulletin.
  - 
  - Use this function to remove any button target or gesture recognizers from your managed views, and
  - deallocate any resources created for this item that are no longer needed.

### `willDisplay()`

``` swift
open func willDisplay() 
```

  - Called by the manager when bulletin item is about to be pushed onto the view.

### `onDisplay()`

``` swift
open func onDisplay() 
```

  - Called by the manager when bulletin item is pushed onto the view.

### `onDismiss()`

``` swift
open func onDismiss() 
```

  - Called by the manager when bulletin item is dismissed. This is called after the bulletin
  - is moved out of view.
