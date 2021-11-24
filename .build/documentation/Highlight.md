# Highlight

``` swift
@objc(ChartHighlight)
open class Highlight: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init()`

``` swift
public override init()
```

### `init(x:y:xPx:yPx:dataIndex:dataSetIndex:stackIndex:axis:)`

``` swift
@objc public init(
        x: Double, y: Double,
        xPx: CGFloat, yPx: CGFloat,
        dataIndex: Int,
        dataSetIndex: Int,
        stackIndex: Int,
        axis: YAxis.AxisDependency)
```

  - Parameters:
      - x: the x-value of the highlighted value
      - y: the y-value of the highlighted value
      - xPx: the x-pixel of the highlighted value
      - yPx: the y-pixel of the highlighted value
      - dataIndex: the index of the Data the highlighted value belongs to
      - dataSetIndex: the index of the DataSet the highlighted value belongs to
      - stackIndex: references which value of a stacked-bar entry has been selected
      - axis: the axis the highlighted value belongs to

### `init(x:y:xPx:yPx:dataSetIndex:stackIndex:axis:)`

``` swift
@objc public convenience init(
        x: Double, y: Double,
        xPx: CGFloat, yPx: CGFloat,
        dataSetIndex: Int,
        stackIndex: Int,
        axis: YAxis.AxisDependency)
```

  - Parameters:
      - x: the x-value of the highlighted value
      - y: the y-value of the highlighted value
      - xPx: the x-pixel of the highlighted value
      - yPx: the y-pixel of the highlighted value
      - dataSetIndex: the index of the DataSet the highlighted value belongs to
      - stackIndex: references which value of a stacked-bar entry has been selected
      - axis: the axis the highlighted value belongs to

### `init(x:y:xPx:yPx:dataSetIndex:axis:)`

``` swift
@objc public init(
        x: Double, y: Double,
        xPx: CGFloat, yPx: CGFloat,
        dataSetIndex: Int,
        axis: YAxis.AxisDependency)
```

  - Parameters:
      - x: the x-value of the highlighted value
      - y: the y-value of the highlighted value
      - xPx: the x-pixel of the highlighted value
      - yPx: the y-pixel of the highlighted value
      - dataIndex: the index of the Data the highlighted value belongs to
      - dataSetIndex: the index of the DataSet the highlighted value belongs to
      - stackIndex: references which value of a stacked-bar entry has been selected
      - axis: the axis the highlighted value belongs to

### `init(x:y:dataSetIndex:dataIndex:)`

``` swift
@objc public init(x: Double, y: Double, dataSetIndex: Int, dataIndex: Int = -1)
```

  - Parameters:
      - x: the x-value of the highlighted value
      - y: the y-value of the highlighted value
      - dataSetIndex: the index of the DataSet the highlighted value belongs to
      - dataIndex: The data index to search in (only used in CombinedChartView currently)

### `init(x:dataSetIndex:stackIndex:)`

``` swift
@objc public convenience init(x: Double, dataSetIndex: Int, stackIndex: Int)
```

  - Parameters:
      - x: the x-value of the highlighted value
      - dataSetIndex: the index of the DataSet the highlighted value belongs to
      - stackIndex: references which value of a stacked-bar entry has been selected

## Properties

### `dataIndex`

the index of the data object - in case it refers to more than one

``` swift
@objc open var dataIndex 
```

### `drawX`

the x-position (pixels) on which this highlight object was last drawn

``` swift
@objc open var drawX: CGFloat = 0.0
```

### `drawY`

the y-position (pixels) on which this highlight object was last drawn

``` swift
@objc open var drawY: CGFloat = 0.0
```

### `x`

``` swift
@objc open var x: Double 
```

### `y`

``` swift
@objc open var y: Double 
```

### `xPx`

``` swift
@objc open var xPx: CGFloat 
```

### `yPx`

``` swift
@objc open var yPx: CGFloat 
```

### `dataSetIndex`

``` swift
@objc open var dataSetIndex: Int 
```

### `stackIndex`

``` swift
@objc open var stackIndex: Int 
```

### `axis`

``` swift
@objc open var axis: YAxis.AxisDependency 
```

### `isStacked`

``` swift
@objc open var isStacked: Bool 
```

### `description`

``` swift
open override var description: String
```

## Methods

### `setDraw(x:y:)`

Sets the x- and y-position (pixels) where this highlight was last drawn.

``` swift
@objc open func setDraw(x: CGFloat, y: CGFloat)
```

### `setDraw(pt:)`

Sets the x- and y-position (pixels) where this highlight was last drawn.

``` swift
@objc open func setDraw(pt: CGPoint)
```

### `isEqual(_:)`

``` swift
open override func isEqual(_ object: Any?) -> Bool 
```
