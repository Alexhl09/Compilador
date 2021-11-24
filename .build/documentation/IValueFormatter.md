# IValueFormatter

Interface that allows custom formatting of all values inside the chart before they are drawn to the screen.

``` swift
@objc(IChartValueFormatter)
public protocol IValueFormatter: class
```

Simply create your own formatting class and let it implement ValueFormatter. Then override the stringForValue()
method and return whatever you want.

## Inheritance

`class`

## Requirements

### stringForValue(\_:​entry:​dataSetIndex:​viewPortHandler:​)

Called when a value (from labels inside the chart) is formatted before being drawn.

``` swift
func stringForValue(_ value: Double,
                        entry: ChartDataEntry,
                        dataSetIndex: Int,
                        viewPortHandler: ViewPortHandler?) -> String
```

For performance reasons, avoid excessive calculations and memory allocations inside this method.

#### Parameters

  - value: The value to be formatted
  - dataSetIndex: The index of the DataSet the entry in focus belongs to
  - viewPortHandler: provides information about the current chart state (scale, translation, ...)

#### Returns

The formatted label ready to be drawn
