# IAxisValueFormatter

An interface for providing custom axis Strings.

``` swift
@objc(IChartAxisValueFormatter)
public protocol IAxisValueFormatter: class
```

## Inheritance

`class`

## Requirements

### stringForValue(\_:​axis:​)

Called when a value from an axis is formatted before being drawn.

``` swift
func stringForValue(_ value: Double,
                        axis: AxisBase?) -> String
```

For performance reasons, avoid excessive calculations and memory allocations inside this method.

#### Parameters

  - value: the value that is currently being drawn
  - axis: the axis that the value belongs to

#### Returns

The customized label that is drawn on the x-axis.
