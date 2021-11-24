# ChartDataEntry

``` swift
open class ChartDataEntry: ChartDataEntryBase, NSCopying
```

## Inheritance

[`ChartDataEntryBase`](/ChartDataEntryBase), `NSCopying`

## Initializers

### `init()`

``` swift
public required init()
```

### `init(x:y:)`

An Entry represents one single entry in the chart.

``` swift
@objc public init(x: Double, y: Double)
```

#### Parameters

  - x: the x value
  - y: the y value (the actual value of the entry)

### `init(x:y:data:)`

An Entry represents one single entry in the chart.

``` swift
@objc public convenience init(x: Double, y: Double, data: Any?)
```

#### Parameters

  - x: the x value
  - y: the y value (the actual value of the entry)
  - data: Space for additional data this Entry represents.

### `init(x:y:icon:)`

An Entry represents one single entry in the chart.

``` swift
@objc public convenience init(x: Double, y: Double, icon: NSUIImage?)
```

#### Parameters

  - x: the x value
  - y: the y value (the actual value of the entry)
  - icon: icon image

### `init(x:y:icon:data:)`

An Entry represents one single entry in the chart.

``` swift
@objc public convenience init(x: Double, y: Double, icon: NSUIImage?, data: Any?)
```

#### Parameters

  - x: the x value
  - y: the y value (the actual value of the entry)
  - icon: icon image
  - data: Space for additional data this Entry represents.

## Properties

### `x`

the x value

``` swift
@objc open var x = 0.0
```

### `description`

``` swift
open override var description: String
```

## Methods

### `copy(with:)`

``` swift
open func copy(with zone: NSZone? = nil) -> Any
```

### `isEqual(_:)`

``` swift
open override func isEqual(_ object: Any?) -> Bool 
```
