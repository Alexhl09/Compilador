# ChartViewDelegate

``` swift
@objc
public protocol ChartViewDelegate
```

## Optional Requirements

### chartValueSelected(\_:​entry:​highlight:​)

Called when a value has been selected inside the chart.

``` swift
@objc optional func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight)
```

#### Parameters

  - entry: The selected Entry.
  - highlight: The corresponding highlight object that contains information about the highlighted position such as dataSetIndex etc.

### chartViewDidEndPanning(\_:​)

Called when a user stops panning between values on the chart

``` swift
@objc optional func chartViewDidEndPanning(_ chartView: ChartViewBase)
```

### chartValueNothingSelected(\_:​)

``` swift
@objc optional func chartValueNothingSelected(_ chartView: ChartViewBase)
```

### chartScaled(\_:​scaleX:​scaleY:​)

``` swift
@objc optional func chartScaled(_ chartView: ChartViewBase, scaleX: CGFloat, scaleY: CGFloat)
```

### chartTranslated(\_:​dX:​dY:​)

``` swift
@objc optional func chartTranslated(_ chartView: ChartViewBase, dX: CGFloat, dY: CGFloat)
```

### chartView(\_:​animatorDidStop:​)

``` swift
@objc optional func chartView(_ chartView: ChartViewBase, animatorDidStop animator: Animator)
```
