# BLTNActionItem

``` swift
@objc open class BLTNActionItem: BLTNItem 
```

  - A standard bulletin item with that displays a large action button and a smaller button for alternative options.
  - 
  - You do not use this class directly:
  - 
  -   - If your custom item has a title and optional stock elements (description, image), use `BLTNPageItem`
  - which provides these stock elements. You can also override this class to insert custom views between the stock
  - views.
  - 
  -   - If you need to display custom elements with the standard buttons on a page without a title, subclass `BLTNActionItem`
  - and implement the `makeContentViews` method to return the elements to display above the buttons.
  - 
  - Subclasses can override several methods to customize the UI:
  - 
  -   - In `footerViews`, return the views to display below the buttons.
  -   - In `actionButtonTapped(sender:)` and `alternativeButtonTapped(sender:)`, perform custom additional button handling
  - (ex: haptic feedback).
  - 
  - Use the `appearance` property to customize the appearance of the buttons. If you want to use a different interface
  - builder type, change the `interfaceBuilderType` property.

## Inheritance

[`BLTNItem`](/BLTNItem)

## Properties

### `actionButtonTitle`

``` swift
@objc open var actionButtonTitle: String? 
```

  - The title of the action button. The action button represents the main action for the item.
  - 
  - If you set this property to `nil`, no action button will be added (this is the default).

### `alternativeButtonTitle`

``` swift
@objc open var alternativeButtonTitle: String? 
```

  - The title of the alternative button. The alternative button represents a second option for
  - the user.
  - 
  - If you set this property to `nil`, no alternative button will be added (this is the default).

### `appearance`

``` swift
@objc open var appearance: BLTNItemAppearance 
```

  - The appearance manager used to generate the interface of the page.
  - 
  - Use this property to customize the appearance of the generated elements.
  - 
  - Make sure to customize the appearance before presenting the page. Changing the appearance properties
  - after the bulletin page was presented has no effect.

### `interfaceBuilderType`

``` swift
@objc open var interfaceBuilderType: BLTNInterfaceBuilder.Type = BLTNInterfaceBuilder.self
```

  - The type of interface builder to use to generate the components.
  - 
  - Make sure to customize this property before presenting the page. Changing the interface builder type
  - after the bulletin page was presented has no effect.

### `actionButton`

``` swift
@objc open private(set) var actionButton: UIButton?
```

  - The action button managed by the item.

### `alternativeButton`

``` swift
@objc open private(set) var alternativeButton: UIButton?
```

  - The alternative button managed by the item.

### `actionHandler`

``` swift
@objc public var actionHandler: ((BLTNActionItem) -> Void)?
```

  - The code to execute when the action button is tapped.

### `alternativeHandler`

``` swift
@objc public var alternativeHandler: ((BLTNActionItem) -> Void)?
```

  - The code to execute when the alternative button is tapped.

## Methods

### `actionButtonTapped(sender:)`

``` swift
@objc(actionButtonTappedWithSender:)
    open func actionButtonTapped(sender: UIButton) 
```

  - Handles a tap on the action button.
  - 
  - You can override this method to add custom tap handling. You have to call `super.actionButtonTapped(sender:)`
  - in your implementation.

### `alternativeButtonTapped(sender:)`

``` swift
@objc(alternativeButtonTappedWithSender:)
    open func alternativeButtonTapped(sender: UIButton) 
```

  - Handles a tap on the alternative button.
  - 
  - You can override this method to add custom tap handling. You have to call `super.alternativeButtonTapped(sender:)`
  - in your implementation.

### `makeFooterViews(with:)`

``` swift
@objc(makeFooterViewsWithInterfaceBuilder:)
    open func makeFooterViews(with interfaceBuilder: BLTNInterfaceBuilder) -> [UIView]? 
```

  - The views to display below the buttons.
  - 
  - You can override this method to insert custom views after the buttons. The default implementation returns `nil` and
  - does not append footer elements.
  - 
  - This method is called inside `makeArrangedSubviews` after the buttons are created.
  - 
  -   - parameter interfaceBuilder: The interface builder used to create the buttons.
  -   - returns: The footer views for the item, or `nil` if no footer views should be added.

### `makeContentViews(with:)`

``` swift
@objc(makeContentViewsWithInterfaceBuilder:)
    open func makeContentViews(with interfaceBuilder: BLTNInterfaceBuilder) -> [UIView] 
```

  - Creates the content views of the page. Content views are displayed above the buttons.
  - 
  - You must override this method to return the elements displayed above the buttons. Your implementation
  - must not call `super`.
  - 
  - If you do not implement this method, an exception will be raised.
  - 
  -   - parameter interfaceBuilder: The interface builder used to create the buttons.
  -   - returns: The views to display above the buttons.

### `makeArrangedSubviews()`

``` swift
@objc open override func makeArrangedSubviews() -> [UIView] 
```

  - Creates the list of views to display on the bulletin.
  - 
  - This is an implementation detail of `BLTNItem` and you should not call it directly. Subclasses should not override this method, and should
  - implement `makeContentViewsWithInterfaceBuilder:` instead.

### `setUp()`

``` swift
@objc open override func setUp() 
```

  - Called by the manager when the item was added to the bulletin.
  - 
  - Override this function to configure your managed views, and allocate any resources required
  - for this item. Make sure to call `super` if you override this method.

### `tearDown()`

``` swift
@objc open override func tearDown() 
```

  - Called by the manager when the item was removed from the bulletin view.
  - 
  - Override this method if elements you returned in `makeContentViews` need cleanup. Make sure
  - to call `super` if you override this method.
  - 
  - This is an implementation detail of `BLTNItem` and you should not call it directly.
