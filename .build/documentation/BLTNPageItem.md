# BLTNPageItem

``` swift
@objc open class BLTNPageItem: BLTNActionItem 
```

  - A standard bulletin item with a title and optional additional informations. It can display a large
  - action button and a smaller button for alternative options.
  - 
  -   - If you need to display custom elements with the standard buttons, subclass `BLTNPageItem` and
  - implement the `makeArrangedSubviews` method to return the elements to display above the buttons.
  - 
  - You can also override this class to customize button tap handling. Override the `actionButtonTapped(sender:)`
  - and `alternativeButtonTapped(sender:)` methods to handle tap events. Make sure to call `super` in your
  - implementations if you do.
  - 
  - Use the `appearance` property to customize the appearance of the page. If you want to use a different interface
  - builder type, change the `interfaceBuilderType` property.

## Inheritance

[`BLTNActionItem`](/BLTNActionItem)

## Initializers

### `init(title:)`

``` swift
@objc public init(title: String) 
```

  - Creates a bulletin page with the specified title.
  -   - parameter title: The title of the page.

## Properties

### `title`

The title of the page.

``` swift
@objc public let title: String
```

### `image`

``` swift
@objc open var image: UIImage? 
```

  - An image to display below the title.
  - 
  - If you set this property to `nil`, no image will be displayed (this is the default).
  - 
  - The image should have a size of 128x128 pixels (@1x).

### `imageAccessibilityLabel`

An accessibility label which gets announced to VoiceOver users if the image gets focused.

``` swift
@objc open var imageAccessibilityLabel: String? 
```

### `descriptionText`

``` swift
@objc open var descriptionText: String? 
```

  - An description text to display below the image.
  - 
  - If you set this property to `nil`, no label will be displayed (this is the default).

### `attributedDescriptionText`

``` swift
@objc open var attributedDescriptionText: NSAttributedString? 
```

  - An attributed description text to display below the image.
  - 
  - If you set this property to `nil`, no label will be displayed (this is the default). The attributed
  - text takes priority over the regular description label. If you set both values, only the
  - `attributedDescriptionText` will be used.

### `titleLabel`

``` swift
@objc private(set) open var titleLabel: BLTNTitleLabelContainer?
```

### `descriptionLabel`

``` swift
@objc private(set) open var descriptionLabel: UILabel?
```

### `imageView`

``` swift
@objc private(set) open var imageView: UIImageView?
```

## Methods

### `makeHeaderViews(interfaceBuilder:)`

``` swift
@objc(makeHeaderViewsWithInterfaceBuilder:)
    open func makeHeaderViews(interfaceBuilder: BLTNInterfaceBuilder) -> [UIView]? 
```

  - The views to display above the title.
  - 
  - You can override this method to insert custom views before the title. The default implementation returns `nil` and
  - does not append header elements.
  - 
  - This method is called inside `makeArrangedSubviews` before the title is created.
  - 
  -   - parameter interfaceBuilder: The interface builder used to create the title.
  -   - returns: The header views for the item, or `nil` if no header views should be added.

### `makeViewsUnderTitle(with:)`

``` swift
@objc(makeViewsUnderTitleWithInterfaceBuilder:)
    open func makeViewsUnderTitle(with interfaceBuilder: BLTNInterfaceBuilder) -> [UIView]? 
```

  - The views to display below the title.
  - 
  - You can override this method to insert custom views after the title. The default implementation returns `nil` and
  - does not append elements after the title.
  - 
  - This method is called inside `makeArrangedSubviews` after the title is created.
  - 
  -   - parameter interfaceBuilder: The interface builder used to create the title.
  -   - returns: The views to display after the title, or `nil` if no views should be added.

### `makeViewsUnderImage(with:)`

``` swift
@objc(makeViewsUnderImageWithInterfaceBuilder:)
    open func makeViewsUnderImage(with interfaceBuilder: BLTNInterfaceBuilder) -> [UIView]? 
```

  - The views to display below the image.
  - 
  - You can override this method to insert custom views after the image. The default implementation returns `nil` and
  - does not append elements after the image.
  - 
  - This method is called inside `makeArrangedSubviews` after the image is created.
  - 
  -   - parameter interfaceBuilder: The interface builder used to create the image.
  -   - returns: The views to display after the image, or `nil` if no views should be added.

### `makeViewsUnderDescription(with:)`

``` swift
@objc(makeViewsUnderDescriptionWithInterfaceBuilder:)
    open func makeViewsUnderDescription(with interfaceBuilder: BLTNInterfaceBuilder) -> [UIView]? 
```

  - The views to display below the description.
  - 
  - You can override this method to insert custom views after the description. The default implementation
  - returns `nil` and does not append elements after the description.
  - 
  - This method is called inside `makeArrangedSubviews` after the description is created.
  - 
  -   - parameter interfaceBuilder: The interface builder used to create the description.
  -   - returns: The views to display after the description, or `nil` if no views should be added.

### `makeContentViews(with:)`

``` swift
open override func makeContentViews(with interfaceBuilder: BLTNInterfaceBuilder) -> [UIView] 
```
