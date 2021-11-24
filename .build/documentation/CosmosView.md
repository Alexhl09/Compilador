# CosmosView

A star rating view that can be used to show customer rating for the products. On can select stars by tapping on them when updateOnTouch settings is true. An optional text can be supplied that is shown on the right side.

``` swift
@IBDesignable open class CosmosView: UIView 
```

Example:

``` 
cosmosView.rating = 4
cosmosView.text = "(123)"
```

Shows: ★★★★☆ (123)

## Inheritance

`UIView`

## Initializers

### `init(settings:)`

Initializes and returns a newly allocated cosmos view object.

``` swift
public convenience init(settings: CosmosSettings = .default) 
```

### `init(frame:)`

Initializes and returns a newly allocated cosmos view object with the specified frame rectangle.

``` swift
override public convenience init(frame: CGRect) 
```

#### Parameters

  - frame: The frame rectangle for the view.

### `init(frame:settings:)`

``` swift
public init(frame: CGRect, settings: CosmosSettings) 
```

### `init?(coder:)`

Initializes and returns a newly allocated cosmos view object.

``` swift
required public init?(coder aDecoder: NSCoder) 
```

## Properties

### `rating`

The currently shown number of stars, usually between 1 and 5. If the value is decimal the stars will be shown according to the Fill Mode setting.

``` swift
@IBInspectable open var rating: Double = CosmosDefaultSettings.rating 
```

### `text`

Currently shown text. Set it to nil to display just the stars without text.

``` swift
@IBInspectable open var text: String? 
```

### `settings`

Star rating settings.

``` swift
open var settings: CosmosSettings = .default 
```

### `intrinsicContentSize`

Returns the content size to fit all the star and text layers.

``` swift
override open var intrinsicContentSize:CGSize 
```

### `didTouchCosmos`

Closure will be called when user touches the cosmos view. The touch rating argument is passed to the closure.

``` swift
open var didTouchCosmos: ((Double)->())?
```

### `didFinishTouchingCosmos`

Closure will be called when the user lifts finger from the cosmos view. The touch rating argument is passed to the closure.

``` swift
open var didFinishTouchingCosmos: ((Double)->())?
```

## Methods

### `awakeFromNib()`

Draws the stars when the view comes out of storyboard with default settings

``` swift
open override func awakeFromNib() 
```

### `update()`

Updates the stars and optional text based on current values of `rating` and `text` properties.

``` swift
open func update() 
```

### `prepareForReuse()`

Prepares the Cosmos view for reuse in a table view cell.
If the cosmos view is used in a table view cell, call this method after the
cell is dequeued. Alternatively, override UITableViewCell's prepareForReuse method and call
this method from there.

``` swift
open func prepareForReuse() 
```

### `accessibilityIncrement()`

Called by the system in accessibility voice-over mode when the value is incremented by the user.

``` swift
open override func accessibilityIncrement() 
```

### `accessibilityDecrement()`

Called by the system in accessibility voice-over mode when the value is decremented by the user.

``` swift
open override func accessibilityDecrement() 
```

### `touchesBegan(_:with:)`

Overriding the function to detect the first touch gesture.

``` swift
open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) 
```

### `touchesMoved(_:with:)`

Overriding the function to detect touch move.

``` swift
open override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) 
```

### `touchesEnded(_:with:)`

Detecting event when the user lifts their finger.

``` swift
open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) 
```

### `touchesCancelled(_:with:)`

Detecting event when the touches are cancelled (can happen in a scroll view).
Behave as if user has lifted their finger.

``` swift
open override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) 
```

### `point(inside:with:)`

Increase the hitsize of the view if it's less than 44px for easier touching.

``` swift
override open func point(inside point: CGPoint, with event: UIEvent?) -> Bool 
```

### `prepareForInterfaceBuilder()`

Draw the stars in interface buidler

``` swift
open override func prepareForInterfaceBuilder() 
```
