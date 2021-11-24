# BLTNItemAppearance

``` swift
@objc public class BLTNItemAppearance: NSObject 
```

  - An object that defines the appearance of bulletin items.

## Inheritance

`NSObject`, `NSObject`, `NSObject`

## Properties

### `actionButtonColor`

The tint color to apply to the action button (default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var actionButtonColor: UIColor 
```

### `actionButtonImage`

The button image to apply to the action button

``` swift
@objc public var actionButtonImage: UIImage?
```

### `actionButtonTitleColor`

The title color to apply to action button (default white).

``` swift
@objc public var actionButtonTitleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
```

### `actionButtonBorderColor`

The border color to apply to action button.

``` swift
@objc public var actionButtonBorderColor: UIColor? = nil
```

### `actionButtonBorderWidth`

The border width to apply to action button.

``` swift
@objc public var actionButtonBorderWidth: CGFloat = 1.0
```

### `alternativeButtonTitleColor`

The title color to apply to the alternative button (default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var alternativeButtonTitleColor: UIColor 
```

### `alternativeButtonBorderColor`

The border color to apply to the alternative button.

``` swift
@objc public var alternativeButtonBorderColor: UIColor? = nil
```

### `alternativeButtonBorderWidth`

The border width to apply to the alternative button.

``` swift
@objc public var alternativeButtonBorderWidth: CGFloat = 1.0
```

### `imageViewTintColor`

The tint color to apply to the imageView (if image rendered in template mode, default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var imageViewTintColor: UIColor 
```

### `titleTextColor`

The color of title text labels (default `.secondaryLabel` on iOS 13 and light gray on older systems).

``` swift
@objc public var titleTextColor: UIColor 
```

### `descriptionTextColor`

The color of description text labels (default `.label` on iOS 13 and black on older systems).

``` swift
@objc public var descriptionTextColor: UIColor 
```

### `actionButtonCornerRadius`

The corner radius of the action button (default 12).

``` swift
@objc public var actionButtonCornerRadius: CGFloat = 12
```

### `alternativeButtonCornerRadius`

The corner radius of the alternative button (default 12).

``` swift
@objc public var alternativeButtonCornerRadius: CGFloat = 12
```

### `titleFontDescriptor`

An optional custom font to use for the title label. Set this to nil to use the system font.

``` swift
@objc public var titleFontDescriptor: UIFontDescriptor?
```

### `descriptionFontDescriptor`

An optional custom font to use for the description label. Set this to nil to use the system font.

``` swift
@objc public var descriptionFontDescriptor: UIFontDescriptor?
```

### `buttonFontDescriptor`

An optional custom font to use for the buttons. Set this to nil to use the system font.

``` swift
@objc public var buttonFontDescriptor: UIFontDescriptor?
```

### `shouldUseCompactDescriptionText`

``` swift
@objc public var shouldUseCompactDescriptionText: Bool = false
```

  - Whether the description text should be displayed with a smaller font.
  - 
  - You should set this to `true` if your text is long (more that two sentences).

### `titleFontSize`

The font size of title elements (default 30).

``` swift
@objc public var titleFontSize: CGFloat = 30
```

### `descriptionFontSize`

The font size of description labels (default 20).

``` swift
@objc public var descriptionFontSize: CGFloat = 20
```

### `compactDescriptionFontSize`

The font size of compact description labels (default 15).

``` swift
@objc public var compactDescriptionFontSize: CGFloat = 15
```

### `actionButtonFontSize`

The font size of action buttons (default 17).

``` swift
@objc public var actionButtonFontSize: CGFloat = 17
```

### `alternativeButtonFontSize`

The font size of alternative buttons (default 15).

``` swift
@objc public var alternativeButtonFontSize: CGFloat = 15
```

### `actionButtonColor`

The tint color to apply to the action button (default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var actionButtonColor: UIColor 
```

### `actionButtonImage`

The button image to apply to the action button

``` swift
@objc public var actionButtonImage: UIImage?
```

### `actionButtonTitleColor`

The title color to apply to action button (default white).

``` swift
@objc public var actionButtonTitleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
```

### `actionButtonBorderColor`

The border color to apply to action button.

``` swift
@objc public var actionButtonBorderColor: UIColor? = nil
```

### `actionButtonBorderWidth`

The border width to apply to action button.

``` swift
@objc public var actionButtonBorderWidth: CGFloat = 1.0
```

### `alternativeButtonTitleColor`

The title color to apply to the alternative button (default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var alternativeButtonTitleColor: UIColor 
```

### `alternativeButtonBorderColor`

The border color to apply to the alternative button.

``` swift
@objc public var alternativeButtonBorderColor: UIColor? = nil
```

### `alternativeButtonBorderWidth`

The border width to apply to the alternative button.

``` swift
@objc public var alternativeButtonBorderWidth: CGFloat = 1.0
```

### `imageViewTintColor`

The tint color to apply to the imageView (if image rendered in template mode, default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var imageViewTintColor: UIColor 
```

### `titleTextColor`

The color of title text labels (default `.secondaryLabel` on iOS 13 and light gray on older systems).

``` swift
@objc public var titleTextColor: UIColor 
```

### `descriptionTextColor`

The color of description text labels (default `.label` on iOS 13 and black on older systems).

``` swift
@objc public var descriptionTextColor: UIColor 
```

### `actionButtonCornerRadius`

The corner radius of the action button (default 12).

``` swift
@objc public var actionButtonCornerRadius: CGFloat = 12
```

### `alternativeButtonCornerRadius`

The corner radius of the alternative button (default 12).

``` swift
@objc public var alternativeButtonCornerRadius: CGFloat = 12
```

### `titleFontDescriptor`

An optional custom font to use for the title label. Set this to nil to use the system font.

``` swift
@objc public var titleFontDescriptor: UIFontDescriptor?
```

### `descriptionFontDescriptor`

An optional custom font to use for the description label. Set this to nil to use the system font.

``` swift
@objc public var descriptionFontDescriptor: UIFontDescriptor?
```

### `buttonFontDescriptor`

An optional custom font to use for the buttons. Set this to nil to use the system font.

``` swift
@objc public var buttonFontDescriptor: UIFontDescriptor?
```

### `shouldUseCompactDescriptionText`

``` swift
@objc public var shouldUseCompactDescriptionText: Bool = false
```

  - Whether the description text should be displayed with a smaller font.
  - 
  - You should set this to `true` if your text is long (more that two sentences).

### `titleFontSize`

The font size of title elements (default 30).

``` swift
@objc public var titleFontSize: CGFloat = 30
```

### `descriptionFontSize`

The font size of description labels (default 20).

``` swift
@objc public var descriptionFontSize: CGFloat = 20
```

### `compactDescriptionFontSize`

The font size of compact description labels (default 15).

``` swift
@objc public var compactDescriptionFontSize: CGFloat = 15
```

### `actionButtonFontSize`

The font size of action buttons (default 17).

``` swift
@objc public var actionButtonFontSize: CGFloat = 17
```

### `alternativeButtonFontSize`

The font size of alternative buttons (default 15).

``` swift
@objc public var alternativeButtonFontSize: CGFloat = 15
```

### `actionButtonColor`

The tint color to apply to the action button (default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var actionButtonColor: UIColor 
```

### `actionButtonImage`

The button image to apply to the action button

``` swift
@objc public var actionButtonImage: UIImage?
```

### `actionButtonTitleColor`

The title color to apply to action button (default white).

``` swift
@objc public var actionButtonTitleColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
```

### `actionButtonBorderColor`

The border color to apply to action button.

``` swift
@objc public var actionButtonBorderColor: UIColor? = nil
```

### `actionButtonBorderWidth`

The border width to apply to action button.

``` swift
@objc public var actionButtonBorderWidth: CGFloat = 1.0
```

### `alternativeButtonTitleColor`

The title color to apply to the alternative button (default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var alternativeButtonTitleColor: UIColor 
```

### `alternativeButtonBorderColor`

The border color to apply to the alternative button.

``` swift
@objc public var alternativeButtonBorderColor: UIColor? = nil
```

### `alternativeButtonBorderWidth`

The border width to apply to the alternative button.

``` swift
@objc public var alternativeButtonBorderWidth: CGFloat = 1.0
```

### `imageViewTintColor`

The tint color to apply to the imageView (if image rendered in template mode, default `.link` on iOS 13 and `.blue` on older systems).

``` swift
@objc public var imageViewTintColor: UIColor 
```

### `titleTextColor`

The color of title text labels (default `.secondaryLabel` on iOS 13 and light gray on older systems).

``` swift
@objc public var titleTextColor: UIColor 
```

### `descriptionTextColor`

The color of description text labels (default `.label` on iOS 13 and black on older systems).

``` swift
@objc public var descriptionTextColor: UIColor 
```

### `actionButtonCornerRadius`

The corner radius of the action button (default 12).

``` swift
@objc public var actionButtonCornerRadius: CGFloat = 12
```

### `alternativeButtonCornerRadius`

The corner radius of the alternative button (default 12).

``` swift
@objc public var alternativeButtonCornerRadius: CGFloat = 12
```

### `titleFontDescriptor`

An optional custom font to use for the title label. Set this to nil to use the system font.

``` swift
@objc public var titleFontDescriptor: UIFontDescriptor?
```

### `descriptionFontDescriptor`

An optional custom font to use for the description label. Set this to nil to use the system font.

``` swift
@objc public var descriptionFontDescriptor: UIFontDescriptor?
```

### `buttonFontDescriptor`

An optional custom font to use for the buttons. Set this to nil to use the system font.

``` swift
@objc public var buttonFontDescriptor: UIFontDescriptor?
```

### `shouldUseCompactDescriptionText`

``` swift
@objc public var shouldUseCompactDescriptionText: Bool = false
```

  - Whether the description text should be displayed with a smaller font.
  - 
  - You should set this to `true` if your text is long (more that two sentences).

### `titleFontSize`

The font size of title elements (default 30).

``` swift
@objc public var titleFontSize: CGFloat = 30
```

### `descriptionFontSize`

The font size of description labels (default 20).

``` swift
@objc public var descriptionFontSize: CGFloat = 20
```

### `compactDescriptionFontSize`

The font size of compact description labels (default 15).

``` swift
@objc public var compactDescriptionFontSize: CGFloat = 15
```

### `actionButtonFontSize`

The font size of action buttons (default 17).

``` swift
@objc public var actionButtonFontSize: CGFloat = 17
```

### `alternativeButtonFontSize`

The font size of alternative buttons (default 15).

``` swift
@objc public var alternativeButtonFontSize: CGFloat = 15
```

## Methods

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeTitleFont()`

``` swift
@objc public func makeTitleFont() -> UIFont 
```

  - Creates the font for title labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeDescriptionFont()`

``` swift
@objc public func makeDescriptionFont() -> UIFont 
```

  - Creates the font for description labels.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeActionButtonFont()`

``` swift
@objc public func makeActionButtonFont() -> UIFont 
```

  - Creates the font for action buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.

### `makeAlternativeButtonFont()`

``` swift
@objc public func makeAlternativeButtonFont() -> UIFont 
```

  - Creates the font for alternative buttons.
