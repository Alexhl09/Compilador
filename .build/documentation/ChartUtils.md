# ChartUtils

``` swift
open class ChartUtils
```

## Methods

### `drawImage(context:image:x:y:size:)`

``` swift
open class func drawImage(
        context: CGContext,
        image: NSUIImage,
        x: CGFloat,
        y: CGFloat,
        size: CGSize)
```

### `drawText(context:text:point:align:attributes:)`

``` swift
open class func drawText(context: CGContext, text: String, point: CGPoint, align: NSTextAlignment, attributes: [NSAttributedString.Key : Any]?)
```

### `drawText(context:text:point:attributes:anchor:angleRadians:)`

``` swift
open class func drawText(context: CGContext, text: String, point: CGPoint, attributes: [NSAttributedString.Key : Any]?, anchor: CGPoint, angleRadians: CGFloat)
```

### `defaultValueFormatter()`

``` swift
open class func defaultValueFormatter() -> IValueFormatter
```

  - Returns: The default value formatter used for all chart components that needs a default
