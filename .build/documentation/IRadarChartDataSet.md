# IRadarChartDataSet

``` swift
@objc
public protocol IRadarChartDataSet: ILineRadarChartDataSet
```

## Inheritance

[`ILineRadarChartDataSet`](/ILineRadarChartDataSet)

## Requirements

### drawHighlightCircleEnabled

flag indicating whether highlight circle should be drawn or not

``` swift
var drawHighlightCircleEnabled: Bool 
```

### isDrawHighlightCircleEnabled

``` swift
var isDrawHighlightCircleEnabled: Bool 
```

### highlightCircleFillColor

``` swift
var highlightCircleFillColor: NSUIColor? 
```

### highlightCircleStrokeColor

The stroke color for highlight circle.
If `nil`, the color of the dataset is taken.

``` swift
var highlightCircleStrokeColor: NSUIColor? 
```

### highlightCircleStrokeAlpha

``` swift
var highlightCircleStrokeAlpha: CGFloat 
```

### highlightCircleInnerRadius

``` swift
var highlightCircleInnerRadius: CGFloat 
```

### highlightCircleOuterRadius

``` swift
var highlightCircleOuterRadius: CGFloat 
```

### highlightCircleStrokeWidth

``` swift
var highlightCircleStrokeWidth: CGFloat 
```
