# ChartHighlighter

``` swift
open class ChartHighlighter : NSObject, IHighlighter
```

## Inheritance

[`IHighlighter`](/IHighlighter), `NSObject`

## Initializers

### `init(chart:)`

``` swift
@objc public init(chart: ChartDataProvider)
```

## Properties

### `chart`

instance of the data-provider

``` swift
@objc open weak var chart: ChartDataProvider?
```

## Methods

### `getHighlight(x:y:)`

``` swift
open func getHighlight(x: CGFloat, y: CGFloat) -> Highlight?
```

### `getValsForTouch(x:y:)`

``` swift
@objc open func getValsForTouch(x: CGFloat, y: CGFloat) -> CGPoint
```

  - Parameters:
      - x:
  - Returns: The corresponding x-pos for a given touch-position in pixels.

### `getHighlight(xValue:x:y:)`

``` swift
@objc open func getHighlight(xValue xVal: Double, x: CGFloat, y: CGFloat) -> Highlight?
```

  - Parameters:
      - xValue:
      - x:
      - y:
  - Returns: The corresponding ChartHighlight for a given x-value and xy-touch position in pixels.

### `getHighlights(xValue:x:y:)`

``` swift
@objc open func getHighlights(xValue: Double, x: CGFloat, y: CGFloat) -> [Highlight]
```

  - Parameters:
      - xValue: the transformed x-value of the x-touch position
      - x: touch position
      - y: touch position
  - Returns: A list of Highlight objects representing the entries closest to the given xVal.
    The returned list contains two objects per DataSet (closest rounding up, closest rounding down).
