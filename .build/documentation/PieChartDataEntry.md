# PieChartDataEntry

``` swift
open class PieChartDataEntry: ChartDataEntry
```

## Inheritance

[`ChartDataEntry`](/ChartDataEntry)

## Initializers

### `init()`

``` swift
public required init()
```

### `init(value:)`

``` swift
@objc public init(value: Double)
```

  - Parameters:
      - value: The value on the y-axis

### `init(value:label:)`

``` swift
@objc public convenience init(value: Double, label: String?)
```

  - Parameters:
      - value: The value on the y-axis
      - label: The label for the x-axis

### `init(value:label:data:)`

``` swift
@objc public convenience init(value: Double, label: String?, data: Any?)
```

  - Parameters:
      - value: The value on the y-axis
      - label: The label for the x-axis
      - data: Spot for additional data this Entry represents

### `init(value:label:icon:)`

``` swift
@objc public convenience init(value: Double, label: String?, icon: NSUIImage?)
```

  - Parameters:
      - value: The value on the y-axis
      - label: The label for the x-axis
      - icon: icon image

### `init(value:label:icon:data:)`

``` swift
@objc public convenience init(value: Double, label: String?, icon: NSUIImage?, data: Any?)
```

  - Parameters:
      - value: The value on the y-axis
      - label: The label for the x-axis
      - icon: icon image
      - data: Spot for additional data this Entry represents

### `init(value:data:)`

``` swift
@objc public convenience init(value: Double, data: Any?)
```

  - Parameters:
      - value: The value on the y-axis
      - data: Spot for additional data this Entry represents

### `init(value:icon:)`

``` swift
@objc public convenience init(value: Double, icon: NSUIImage?)
```

  - Parameters:
      - value: The value on the y-axis
      - icon: icon image

### `init(value:icon:data:)`

``` swift
@objc public convenience init(value: Double, icon: NSUIImage?, data: Any?)
```

  - Parameters:
      - value: The value on the y-axis
      - icon: icon image
      - data: Spot for additional data this Entry represents

## Properties

### `label`

``` swift
@objc open var label: String?
```

### `value`

``` swift
@objc open var value: Double
```

## Methods

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
