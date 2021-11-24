# BubbleChartDataEntry

``` swift
open class BubbleChartDataEntry: ChartDataEntry
```

## Inheritance

[`ChartDataEntry`](/ChartDataEntry)

## Initializers

### `init()`

``` swift
public required init()
```

### `init(x:y:size:)`

``` swift
@objc public init(x: Double, y: Double, size: CGFloat)
```

  - Parameters:
      - x: The index on the x-axis.
      - y: The value on the y-axis.
      - size: The size of the bubble.

### `init(x:y:size:data:)`

``` swift
@objc public convenience init(x: Double, y: Double, size: CGFloat, data: Any?)
```

  - Parameters:
      - x: The index on the x-axis.
      - y: The value on the y-axis.
      - size: The size of the bubble.
      - data: Spot for additional data this Entry represents.

### `init(x:y:size:icon:)`

``` swift
@objc public convenience init(x: Double, y: Double, size: CGFloat, icon: NSUIImage?)
```

  - Parameters:
      - x: The index on the x-axis.
      - y: The value on the y-axis.
      - size: The size of the bubble.
      - icon: icon image

### `init(x:y:size:icon:data:)`

``` swift
@objc public convenience init(x: Double, y: Double, size: CGFloat, icon: NSUIImage?, data: Any?)
```

  - Parameters:
      - x: The index on the x-axis.
      - y: The value on the y-axis.
      - size: The size of the bubble.
      - icon: icon image
      - data: Spot for additional data this Entry represents.

## Properties

### `size`

The size of the bubble.

``` swift
@objc open var size 
```

## Methods

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
