# BLTNInterfaceBuilder

``` swift
@objc open class BLTNInterfaceBuilder: NSObject 
```

  - Generates interface elements for bulletins. Use this class to create custom bulletin items with
  - standard components.

## Inheritance

`NSObject`, `NSObject`, `NSObject`

## Initializers

### `init(appearance:item:)`

Creates a new interface builder.

``` swift
@objc public required init(appearance: BLTNItemAppearance, item: BLTNItem) 
```

### `init(appearance:item:)`

Creates a new interface builder.

``` swift
@objc public required init(appearance: BLTNItemAppearance, item: BLTNItem) 
```

### `init(appearance:)`

Creates a new interface builder.

``` swift
@objc public required init(appearance: BLTNItemAppearance) 
```

## Properties

### `item`

The item for which the interface builder was created.

``` swift
@objc public weak var item: BLTNItem?
```

### `appearance`

The appearance to use to generate the items.

``` swift
@objc public let appearance: BLTNItemAppearance
```

### `item`

The item for which the interface builder was created.

``` swift
@objc public weak var item: BLTNItem?
```

### `appearance`

The appearance to use to generate the items.

``` swift
@objc public let appearance: BLTNItemAppearance
```

### `appearance`

The appearance to use to generate the items.

``` swift
@objc public let appearance: BLTNItemAppearance
```

## Methods

### `makeTitleLabel()`

``` swift
@objc open func makeTitleLabel() -> BLTNTitleLabelContainer 
```

  - Creates a standard title label.

### `makeDescriptionLabel()`

``` swift
@objc open func makeDescriptionLabel() -> UILabel 
```

  - Creates a standard description label.

### `makeTextField(placeholder:returnKey:delegate:)`

``` swift
@objc open func makeTextField(placeholder: String? = nil,
                                  returnKey: UIReturnKeyType = .default,
                                  delegate: UITextFieldDelegate? = nil) -> UITextField 
```

  - Creates a standard text field with an optional delegate.
  - 
  -   - parameter placeholder: The placeholder text.
  -   - parameter returnKey: The type of return key to apply to the text field.
  -   - parameter delegate: The delegate for the text field.

### `makeActionButton(title:)`

``` swift
@objc open func makeActionButton(title: String) -> BLTNHighlightButtonWrapper 
```

  - Creates a standard action (main) button.
  - 
  - The created button will have rounded corners, a background color set to the `tintColor` and
  - a title color set to `actionButtonTitleColor`.
  - 
  -   - parameter title: The title of the button.

### `makeAlternativeButton(title:)`

``` swift
@objc open func makeAlternativeButton(title: String) -> UIButton 
```

  - Creates a standard alternative button.
  - 
  - The created button will have no background color and a title color set to `tintColor`.
  - 
  -   - parameter title: The title of the button.

### `makeGroupStack(spacing:)`

``` swift
@objc open func makeGroupStack(spacing: CGFloat = 10) -> UIStackView 
```

  - Creates a stack view to contain a group of objects.
  - 
  -   - parameter spacing: The spacing between elements. Defaults to `10`.

### `wrapView(_:width:height:position:)`

``` swift
@objc open func wrapView(_ view: UIView, width: NSNumber?, height: NSNumber?, position: BLTNViewPosition) -> BLTNContainerView 
```

  - Wraps a view without intrinsic content size inside a view with an intrinsic content size.
  - 
  - This method allows you to display view without an intrinsic content size, such as collection views,
  - inside stack views; by using the returned `BLTNContentView` view.
  - 
  -   - parameter view: The view to wrap in the container.
  -   - parameter width: The width of the content. Pass `nil` if the content has a flexible width.
  -   - parameter height: The height of the content. Pass `nil` if the content has a flexible height.
  -   - parameter position: The position of `view` inside its parent.
  - 
  -   - returns: The view that contains the `view` and an intrinsic content size. You can add the returned
  - view to a stack view.

### `makeTitleLabel()`

``` swift
@objc open func makeTitleLabel() -> BLTNTitleLabelContainer 
```

  - Creates a standard title label.

### `makeDescriptionLabel()`

``` swift
@objc open func makeDescriptionLabel() -> UILabel 
```

  - Creates a standard description label.

### `makeTextField(placeholder:returnKey:delegate:)`

``` swift
@objc open func makeTextField(placeholder: String? = nil,
                                  returnKey: UIReturnKeyType = .default,
                                  delegate: UITextFieldDelegate? = nil) -> UITextField 
```

  - Creates a standard text field with an optional delegate.
  - 
  -   - parameter placeholder: The placeholder text.
  -   - parameter returnKey: The type of return key to apply to the text field.
  -   - parameter delegate: The delegate for the text field.

### `makeActionButton(title:)`

``` swift
@objc open func makeActionButton(title: String) -> BLTNHighlightButtonWrapper 
```

  - Creates a standard action (main) button.
  - 
  - The created button will have rounded corners, a background color set to the `tintColor` and
  - a title color set to `actionButtonTitleColor`.
  - 
  -   - parameter title: The title of the button.

### `makeAlternativeButton(title:)`

``` swift
@objc open func makeAlternativeButton(title: String) -> UIButton 
```

  - Creates a standard alternative button.
  - 
  - The created button will have no background color and a title color set to `tintColor`.
  - 
  -   - parameter title: The title of the button.

### `makeGroupStack(spacing:)`

``` swift
@objc open func makeGroupStack(spacing: CGFloat = 10) -> UIStackView 
```

  - Creates a stack view to contain a group of objects.
  - 
  -   - parameter spacing: The spacing between elements. Defaults to `10`.

### `wrapView(_:width:height:position:)`

``` swift
@objc open func wrapView(_ view: UIView, width: NSNumber?, height: NSNumber?, position: BLTNViewPosition) -> BLTNContainerView 
```

  - Wraps a view without intrinsic content size inside a view with an intrinsic content size.
  - 
  - This method allows you to display view without an intrinsic content size, such as collection views,
  - inside stack views; by using the returned `BLTNContentView` view.
  - 
  -   - parameter view: The view to wrap in the container.
  -   - parameter width: The width of the content. Pass `nil` if the content has a flexible width.
  -   - parameter height: The height of the content. Pass `nil` if the content has a flexible height.
  -   - parameter position: The position of `view` inside its parent.
  - 
  -   - returns: The view that contains the `view` and an intrinsic content size. You can add the returned
  - view to a stack view.

### `makeTitleLabel(isNextToCloseButton:)`

``` swift
@objc(makeTitleLabelNextToCloseButton:)
    open func makeTitleLabel(isNextToCloseButton: Bool) -> BLTNTitleLabelContainer 
```

  - Creates a standard title label.

### `makeDescriptionLabel()`

``` swift
@objc open func makeDescriptionLabel() -> UILabel 
```

  - Creates a standard description label.

### `makeTextField(placeholder:returnKey:delegate:)`

``` swift
@objc open func makeTextField(placeholder: String? = nil,
                                  returnKey: UIReturnKeyType = .default,
                                  delegate: UITextFieldDelegate? = nil) -> UITextField 
```

  - Creates a standard text field with an optional delegate.
  - 
  -   - parameter placeholder: The placeholder text.
  -   - parameter returnKey: The type of return key to apply to the text field.
  -   - parameter delegate: The delegate for the text field.

### `makeActionButton(title:)`

``` swift
@objc open func makeActionButton(title: String) -> BLTNHighlightButtonWrapper 
```

  - Creates a standard action (main) button.
  - 
  - The created button will have rounded corners, a background color set to the `tintColor` and
  - a title color set to `actionButtonTitleColor`.
  - 
  -   - parameter title: The title of the button.

### `makeAlternativeButton(title:)`

``` swift
@objc open func makeAlternativeButton(title: String) -> UIButton 
```

  - Creates a standard alternative button.
  - 
  - The created button will have no background color and a title color set to `tintColor`.
  - 
  -   - parameter title: The title of the button.

### `makeGroupStack(spacing:)`

``` swift
@objc open func makeGroupStack(spacing: CGFloat = 10) -> UIStackView 
```

  - Creates a stack view to contain a group of objects.
  - 
  -   - parameter spacing: The spacing between elements. Defaults to `10`.

### `wrapView(_:width:height:position:)`

``` swift
@objc open func wrapView(_ view: UIView, width: NSNumber?, height: NSNumber?, position: BLTNViewPosition) -> BLTNContainerView 
```

  - Wraps a view without intrinsic content size inside a view with an intrinsic content size.
  - 
  - This method allows you to display view without an intrinsic content size, such as collection views,
  - inside stack views; by using the returned `BLTNContentView` view.
  - 
  -   - parameter view: The view to wrap in the container.
  -   - parameter width: The width of the content. Pass `nil` if the content has a flexible width.
  -   - parameter height: The height of the content. Pass `nil` if the content has a flexible height.
  -   - parameter position: The position of `view` inside its parent.
  - 
  -   - returns: The view that contains the `view` and an intrinsic content size. You can add the returned
  - view to a stack view.
