# SkyFloatingLabelTextFieldWithIcon

A beautiful and flexible textfield implementation with support for icon, title label, error message and placeholder.

``` swift
open class SkyFloatingLabelTextFieldWithIcon: SkyFloatingLabelTextField 
```

## Inheritance

[`SkyFloatingLabelTextField`](/SkyFloatingLabelTextField)

## Initializers

### `init(frame:iconType:)`

Initializes the control

``` swift
convenience public init(frame: CGRect, iconType: IconType) 
```

  - parameter type the type of icon

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

### `iconType`

``` swift
open var iconType: IconType = .font 
```

### `iconImageView`

A UIImageView value that identifies the view used to display the icon

``` swift
open var iconImageView: UIImageView!
```

### `iconImage`

A UIImage value that determines the image that the icon is using

``` swift
@IBInspectable
    dynamic open var iconImage: UIImage? 
```

### `templateImage`

A Bool value that determines if the UIImage should be templated or not

``` swift
@IBInspectable
    dynamic open var templateImage: Bool = true 
```

### `iconLabel`

A UILabel value that identifies the label used to display the icon

``` swift
open var iconLabel: UILabel!
```

### `iconFont`

A UIFont value that determines the font that the icon is using

``` swift
@objc dynamic open var iconFont: UIFont? 
```

### `iconText`

A String value that determines the text used when displaying the icon

``` swift
@IBInspectable
    open var iconText: String? 
```

### `iconColor`

A UIColor value that determines the color of the icon in the normal state

``` swift
@IBInspectable
    dynamic open var iconColor: UIColor = UIColor.gray 
```

### `selectedIconColor`

A UIColor value that determines the color of the icon when the control is selected

``` swift
@IBInspectable
    dynamic open var selectedIconColor: UIColor = UIColor.gray 
```

### `iconWidth`

A float value that determines the width of the icon

``` swift
@IBInspectable
    dynamic open var iconWidth: CGFloat = 20 
```

### `iconMarginLeft`

A float value that determines the left margin of the icon.
Use this value to position the icon more precisely horizontally.

``` swift
@IBInspectable
    dynamic open var iconMarginLeft: CGFloat = 4 
```

### `iconMarginBottom`

A float value that determines the bottom margin of the icon.
Use this value to position the icon more precisely vertically.

``` swift
@IBInspectable
    dynamic open var iconMarginBottom: CGFloat = 4 
```

### `iconRotationDegrees`

A float value that determines the rotation in degrees of the icon.
Use this value to rotate the icon in either direction.

``` swift
@IBInspectable
    open var iconRotationDegrees: Double = 0 
```

## Methods

### `updateColors()`

Update the colors for the control. Override to customize colors.

``` swift
override open func updateColors() 
```

### `textRect(forBounds:)`

Calculate the bounds for the textfield component of the control.
Override to create a custom size textbox in the control.

``` swift
override open func textRect(forBounds bounds: CGRect) -> CGRect 
```

#### Parameters

  - bounds: The current bounds of the textfield component

#### Returns

The rectangle that the textfield component should render in

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

Calculates the bounds for the placeholder component of the control.
Override to create a custom size textbox in the control.

``` swift
override open func placeholderRect(forBounds bounds: CGRect) -> CGRect 
```

#### Parameters

  - bounds: The current bounds of the placeholder component

#### Returns

The rectangle that the placeholder component should render in

### `layoutSubviews()`

Invoked by layoutIfNeeded automatically

``` swift
override open func layoutSubviews() 
```
