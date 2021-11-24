# BarHighlighter

``` swift
@objc(BarChartHighlighter)
open class BarHighlighter: ChartHighlighter
```

## Inheritance

[`ChartHighlighter`](/ChartHighlighter)

## Methods

### `getHighlight(x:y:)`

``` swift
open override func getHighlight(x: CGFloat, y: CGFloat) -> Highlight?
```

### `getStackedHighlight(high:set:xValue:yValue:)`

This method creates the Highlight object that also indicates which value of a stacked BarEntry has been selected.

``` swift
@objc open func getStackedHighlight(high: Highlight,
                                  set: IBarChartDataSet,
                                  xValue: Double,
                                  yValue: Double) -> Highlight?
```

#### Parameters

  - high: the Highlight to work with looking for stacked values
  - set:
  - xIndex:
  - yValue:

#### Returns

### `getClosestStackIndex(ranges:value:)`

``` swift
@objc open func getClosestStackIndex(ranges: [Range]?, value: Double) -> Int
```

  - Parameters:
      - entry:
      - value:
  - Returns: The index of the closest value inside the values array / ranges (stacked barchart) to the value given as a parameter.
