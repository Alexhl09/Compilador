# RadarChartDataEntry

``` swift
open class RadarChartDataEntry: ChartDataEntry
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
      - value: The value on the y-axis.

### `init(value:data:)`

``` swift
@objc public convenience init(value: Double, data: Any?)
```

  - Parameters:
      - value: The value on the y-axis.
      - data: Spot for additional data this Entry represents.

## Properties

### `value`

``` swift
@objc open var value: Double
```

## Methods

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```
