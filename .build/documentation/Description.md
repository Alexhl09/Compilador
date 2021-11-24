# Description

``` swift
@objc(ChartDescription)
open class Description: ComponentBase
```

## Inheritance

[`ComponentBase`](/ComponentBase)

## Initializers

### `init()`

``` swift
public override init()
```

## Properties

### `text`

The text to be shown as the description.

``` swift
@objc open var text: String?
```

### `position`

Custom position for the description text in pixels on the screen.

``` swift
open var position: CGPoint? = nil
```

### `textAlign`

The text alignment of the description text. Default RIGHT.

``` swift
@objc open var textAlign: NSTextAlignment = NSTextAlignment.right
```

### `font`

Font object used for drawing the description text.

``` swift
@objc open var font: NSUIFont
```

### `textColor`

Text color used for drawing the description text

``` swift
@objc open var textColor = NSUIColor.black
```
