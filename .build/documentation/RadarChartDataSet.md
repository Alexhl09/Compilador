# RadarChartDataSet

``` swift
open class RadarChartDataSet: LineRadarChartDataSet, IRadarChartDataSet
```

## Inheritance

[`LineRadarChartDataSet`](/LineRadarChartDataSet), [`IRadarChartDataSet`](/IRadarChartDataSet)

## Initializers

### `init()`

``` swift
public required init()
```

### `init(entries:label:)`

``` swift
public required override init(entries: [ChartDataEntry]?, label: String?)
```

## Properties

### `drawHighlightCircleEnabled`

flag indicating whether highlight circle should be drawn or not
**default**:​ false

``` swift
open var drawHighlightCircleEnabled: Bool = false
```

### `isDrawHighlightCircleEnabled`

`true` if highlight circle should be drawn, `false` ifnot

``` swift
open var isDrawHighlightCircleEnabled: Bool 
```

### `highlightCircleFillColor`

``` swift
open var highlightCircleFillColor: NSUIColor? = NSUIColor.white
```

### `highlightCircleStrokeColor`

The stroke color for highlight circle.
If `nil`, the color of the dataset is taken.

``` swift
open var highlightCircleStrokeColor: NSUIColor?
```

### `highlightCircleStrokeAlpha`

``` swift
open var highlightCircleStrokeAlpha: CGFloat = 0.3
```

### `highlightCircleInnerRadius`

``` swift
open var highlightCircleInnerRadius: CGFloat = 3.0
```

### `highlightCircleOuterRadius`

``` swift
open var highlightCircleOuterRadius: CGFloat = 4.0
```

### `highlightCircleStrokeWidth`

``` swift
open var highlightCircleStrokeWidth: CGFloat = 2.0
```
