# IFillFormatter

Protocol for providing a custom logic to where the filling line of a LineDataSet should end. This of course only works if setFillEnabled(...) is set to true.

``` swift
@objc(IChartFillFormatter)
public protocol IFillFormatter
```

## Requirements

### getFillLinePosition(dataSet:​dataProvider:​)

``` swift
func getFillLinePosition(dataSet: ILineChartDataSet, dataProvider: LineChartDataProvider) -> CGFloat
```

  - Returns: The vertical (y-axis) position where the filled-line of the LineDataSet should end.
