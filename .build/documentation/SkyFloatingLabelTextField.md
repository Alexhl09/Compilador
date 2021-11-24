# SkyFloatingLabelTextField

A beautiful and flexible textfield implementation with support for title label, error message and placeholder.

``` swift
@IBDesignable
open class SkyFloatingLabelTextField: UITextField 
```

## Inheritance

`UITextField`

## Initializers

### `init(frame:)`

Initializes the control

``` swift
override public init(frame: CGRect) 
```

  - parameter frame the frame of the control

### `init?(coder:)`

Intialzies the control by deserializing it

``` swift
required public init?(coder aDecoder: NSCoder) 
```

  - parameter aDecoder the object to deserialize the control from

## Properties

### `isLTRLanguage`

A Boolean value that determines if the language displayed is LTR.
Default value set automatically from the application language settings.

``` swift
@objc open var isLTRLanguage: Bool = UIApplication.shared.userInterfaceLayoutDirection == .leftToRight 
```

### `titleFadeInDuration`

The value of the title appearing duration

``` swift
@objc dynamic open var titleFadeInDuration: TimeInterval = 0.2
```

### `titleFadeOutDuration`

The value of the title disappearing duration

``` swift
@objc dynamic open var titleFadeOutDuration: TimeInterval = 0.3
```

### `textColor`

A UIColor value that determines the text color of the editable text

``` swift
@IBInspectable
    override dynamic open var textColor: UIColor? 
```

### `placeholderColor`

A UIColor value that determines text color of the placeholder label

``` swift
@IBInspectable dynamic open var placeholderColor: UIColor = UIColor.lightGray 
```

### `placeholderFont`

A UIFont value that determines text color of the placeholder label

``` swift
@objc dynamic open var placeholderFont: UIFont? 
```

### `titleFont`

A UIFont value that determines the text font of the title label

``` swift
@objc dynamic open var titleFont: UIFont 
```

### `titleColor`

A UIColor value that determines the text color of the title label when in the normal state

``` swift
@IBInspectable dynamic open var titleColor: UIColor = .gray 
```

### `lineColor`

A UIColor value that determines the color of the bottom line when in the normal state

``` swift
@IBInspectable dynamic open var lineColor: UIColor = .lightGray 
```

### `errorColor`

A UIColor value that determines the color used for the title label and line when the error message is not `nil`

``` swift
@IBInspectable dynamic open var errorColor: UIColor = .red 
```

### `lineErrorColor`

A UIColor value that determines the color used for the line when error message is not `nil`

``` swift
@IBInspectable dynamic open var lineErrorColor: UIColor? 
```

### `textErrorColor`

A UIColor value that determines the color used for the text when error message is not `nil`

``` swift
@IBInspectable dynamic open var textErrorColor: UIColor? 
```

### `titleErrorColor`

A UIColor value that determines the color used for the title label when error message is not `nil`

``` swift
@IBInspectable dynamic open var titleErrorColor: UIColor? 
```

### `disabledColor`

A UIColor value that determines the color used for the title label and line when text field is disabled

``` swift
@IBInspectable dynamic open var disabledColor: UIColor 
```

### `selectedTitleColor`

A UIColor value that determines the text color of the title label when editing

``` swift
@IBInspectable dynamic open var selectedTitleColor: UIColor = .blue 
```

### `selectedLineColor`

A UIColor value that determines the color of the line in a selected state

``` swift
@IBInspectable dynamic open var selectedLineColor: UIColor = .black 
```

### `lineHeight`

A CGFloat value that determines the height for the bottom line when the control is in the normal state

``` swift
@IBInspectable dynamic open var lineHeight: CGFloat = 0.5 
```

### `selectedLineHeight`

A CGFloat value that determines the height for the bottom line when the control is in a selected state

``` swift
@IBInspectable dynamic open var selectedLineHeight: CGFloat = 1.0 
```

### `lineView`

The internal `UIView` to display the line below the text input.

``` swift
open var lineView: UIView!
```

### `titleLabel`

The internal `UILabel` that displays the selected, deselected title or error message based on the current state.

``` swift
open var titleLabel: UILabel!
```

### `titleFormatter`

The formatter used before displaying content in the title label.
This can be the `title`, `selectedTitle` or the `errorMessage`.
The default implementation converts the text to uppercase.

``` swift
open var titleFormatter: ((String) -> String) 
```

### `isSecureTextEntry`

Identifies whether the text object should hide the text being entered.

``` swift
override open var isSecureTextEntry: Bool 
```

### `errorMessage`

A String value for the error message to display.

``` swift
@IBInspectable
    open var errorMessage: String? 
```

### `isHighlighted`

A Boolean value that determines whether the receiver is highlighted.
When changing this value, highlighting will be done with animation

``` swift
override open var isHighlighted: Bool 
```

### `editingOrSelected`

A Boolean value that determines whether the textfield is being edited or is selected.

``` swift
open var editingOrSelected: Bool 
```

### `hasErrorMessage`

A Boolean value that determines whether the receiver has an error message.

``` swift
open var hasErrorMessage: Bool 
```

### `text`

The text content of the textfield

``` swift
@IBInspectable
    override open var text: String? 
```

### `placeholder`

The String to display when the input field is empty.
The placeholder can also appear in the title label when both `title` `selectedTitle` and are `nil`.

``` swift
@IBInspectable
    override open var placeholder: String? 
```

### `selectedTitle`

The String to display when the textfield is editing and the input is not empty.

``` swift
@IBInspectable open var selectedTitle: String? 
```

### `title`

The String to display when the textfield is not editing and the input is not empty.

``` swift
@IBInspectable open var title: String? 
```

### `isSelected`

``` swift
open override var isSelected: Bool 
```

### `isEnabled`

update colors when is enabled changed

``` swift
override open var isEnabled: Bool 
```

### `intrinsicContentSize`

Calculate the content size for auto layout

``` swift
override open var intrinsicContentSize: CGSize 
```

#### Returns

the content size to be used for auto layout

## Methods

### `editingChanged()`

Invoked when the editing state of the textfield changes. Override to respond to this change.

``` swift
@objc open func editingChanged() 
```

### `becomeFirstResponder()`

Attempt the control to become the first responder

``` swift
@discardableResult
    override open func becomeFirstResponder() -> Bool 
```

#### Returns

True when successfull becoming the first responder

### `resignFirstResponder()`

Attempt the control to resign being the first responder

``` swift
@discardableResult
    override open func resignFirstResponder() -> Bool 
```

#### Returns

True when successfull resigning being the first responder

### `updateColors()`

Update the colors for the control. Override to customize colors.

``` swift
open func updateColors() 
```

### `setTitleVisible(_:animated:animationCompletion:)`

``` swift
open func setTitleVisible(
        _ titleVisible: Bool,
        animated: Bool = false,
        animationCompletion: ((_ completed: Bool) -> Void)? = nil
    ) 
```

### `isTitleVisible()`

Returns whether the title is being displayed on the control.

``` swift
open func isTitleVisible() -> Bool 
```

#### Returns

True if the title is displayed on the control, false otherwise.

### `textRect(forBounds:)`

Calculate the rectangle for the textfield when it is not being edited

``` swift
override open func textRect(forBounds bounds: CGRect) -> CGRect 
```

#### Parameters

  - bounds: The current bounds of the field

#### Returns

The rectangle that the textfield should render in

### `editingRect(forBounds:)`

Calculate the rectangle for the textfield when it is being edited

``` swift
override open func editingRect(forBounds bounds: CGRect) -> CGRect 
```

#### Parameters

  - bounds: The current bounds of the field

#### Returns

The rectangle that the textfield should render in

### `placeholderRect(forBounds:)`

Calculate the rectangle for the placeholder

``` swift
override open func placeholderRect(forBounds bounds: CGRect) -> CGRect 
```

#### Parameters

  - bounds: The current bounds of the placeholder

#### Returns

The rectangle that the placeholder should render in

### `titleLabelRectForBounds(_:editing:)`

Calculate the bounds for the title label. Override to create a custom size title field.

``` swift
open func titleLabelRectForBounds(_ bounds: CGRect, editing: Bool) -> CGRect 
```

#### Parameters

  - bounds: The current bounds of the title
  - editing: True if the control is selected or highlighted

#### Returns

The rectangle that the title label should render in

### `lineViewRectForBounds(_:editing:)`

Calculate the bounds for the bottom line of the control.
Override to create a custom size bottom line in the textbox.

``` swift
open func lineViewRectForBounds(_ bounds: CGRect, editing: Bool) -> CGRect 
```

#### Parameters

  - bounds: The current bounds of the line
  - editing: True if the control is selected or highlighted

#### Returns

The rectangle that the line bar should render in

### `titleHeight()`

Calculate the height of the title label.
\-returns:​ the calculated height of the title label. Override to size the title with a different height

``` swift
open func titleHeight() -> CGFloat 
```

### `textHeight()`

Calcualte the height of the textfield.
\-returns:​ the calculated height of the textfield. Override to size the textfield with a different height

``` swift
open func textHeight() -> CGFloat 
```

### `prepareForInterfaceBuilder()`

Invoked when the interface builder renders the control

``` swift
override open func prepareForInterfaceBuilder() 
```

### `layoutSubviews()`

Invoked by layoutIfNeeded automatically

``` swift
override open func layoutSubviews() 
```

### `setDesign(title:placeholder:)`

``` swift
func setDesign(title : String, placeholder : String)
```

### `setDesignBienvenida(title:placeholder:)`

``` swift
func setDesignBienvenida(title : String, placeholder : String)
```
