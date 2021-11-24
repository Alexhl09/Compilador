# PieChartView

View that represents a pie chart. Draws cake like slices.

``` swift
open class PieChartView: PieRadarChartViewBase
```

## Inheritance

[`PieRadarChartViewBase`](/PieRadarChartViewBase)

## Initializers

### `init(frame:)`

``` swift
public override init(frame: CGRect)
```

### `init?(coder:)`

``` swift
public required init?(coder aDecoder: NSCoder)
```

## Properties

### `xAxis`

This will throw an exception, PieChart has no XAxis object.

``` swift
open override var xAxis: XAxis
```

### `drawAngles`

``` swift
@objc open var drawAngles: [CGFloat]
```

  - Returns: An integer array of all the different angles the chart slices
    have the angles in the returned array determine how much space (of 360°)
    each slice takes

### `absoluteAngles`

``` swift
@objc open var absoluteAngles: [CGFloat]
```

  - Returns: The absolute angles of the different chart slices (where the
    slices end)

### `holeColor`

The color for the hole that is drawn in the center of the PieChart (if enabled).

``` swift
@objc open var holeColor: NSUIColor?
```

> 

### `drawSlicesUnderHoleEnabled`

if true, the hole will see-through to the inner tips of the slices

``` swift
@objc open var drawSlicesUnderHoleEnabled: Bool
```

**default**: `false`

### `isDrawSlicesUnderHoleEnabled`

`true` if the inner tips of the slices are visible behind the hole, `false` if not.

``` swift
@objc open var isDrawSlicesUnderHoleEnabled: Bool
```

### `drawHoleEnabled`

`true` if the hole in the center of the pie-chart is set to be visible, `false` ifnot

``` swift
@objc open var drawHoleEnabled: Bool
```

### `isDrawHoleEnabled`

`true` if the hole in the center of the pie-chart is set to be visible, `false` ifnot

``` swift
@objc open var isDrawHoleEnabled: Bool
```

### `centerText`

the text that is displayed in the center of the pie-chart

``` swift
@objc open var centerText: String?
```

### `centerAttributedText`

the text that is displayed in the center of the pie-chart

``` swift
@objc open var centerAttributedText: NSAttributedString?
```

### `centerTextOffset`

Sets the offset the center text should have from it's original position in dp. Default x = 0, y = 0

``` swift
@objc open var centerTextOffset: CGPoint
```

### `drawCenterTextEnabled`

`true` if drawing the center text is enabled

``` swift
@objc open var drawCenterTextEnabled: Bool
```

### `isDrawCenterTextEnabled`

`true` if drawing the center text is enabled

``` swift
@objc open var isDrawCenterTextEnabled: Bool
```

### `radius`

``` swift
open override var radius: CGFloat
```

### `circleBox`

The circlebox, the boundingbox of the pie-chart slices

``` swift
@objc open var circleBox: CGRect
```

### `centerCircleBox`

The center of the circlebox

``` swift
@objc open var centerCircleBox: CGPoint
```

### `holeRadiusPercent`

the radius of the hole in the center of the piechart in percent of the maximum radius (max = the radius of the whole chart)

``` swift
@objc open var holeRadiusPercent: CGFloat
```

**default**: 0.5 (50%) (half the pie)

### `transparentCircleColor`

The color that the transparent-circle should have.

``` swift
@objc open var transparentCircleColor: NSUIColor?
```

**default**: `nil`

### `transparentCircleRadiusPercent`

the radius of the transparent circle that is drawn next to the hole in the piechart in percent of the maximum radius (max = the radius of the whole chart)

``` swift
@objc open var transparentCircleRadiusPercent: CGFloat
```

**default**: 0.55 (55%) -\> means 5% larger than the center-hole by default

### `entryLabelColor`

The color the entry labels are drawn with.

``` swift
@objc open var entryLabelColor: NSUIColor?
```

### `entryLabelFont`

The font the entry labels are drawn with.

``` swift
@objc open var entryLabelFont: NSUIFont?
```

### `drawEntryLabelsEnabled`

Set this to true to draw the enrty labels into the pie slices

``` swift
@objc open var drawEntryLabelsEnabled: Bool
```

### `isDrawEntryLabelsEnabled`

`true` if drawing entry labels is enabled, `false` ifnot

``` swift
@objc open var isDrawEntryLabelsEnabled: Bool
```

### `usePercentValuesEnabled`

If this is enabled, values inside the PieChart are drawn in percent and not with their original value. Values provided for the ValueFormatter to format are then provided in percent.

``` swift
@objc open var usePercentValuesEnabled: Bool
```

### `isUsePercentValuesEnabled`

`true` if drawing x-values is enabled, `false` ifnot

``` swift
@objc open var isUsePercentValuesEnabled: Bool
```

### `centerTextRadiusPercent`

the rectangular radius of the bounding box for the center text, as a percentage of the pie hole

``` swift
@objc open var centerTextRadiusPercent: CGFloat
```

### `maxAngle`

The max angle that is used for calculating the pie-circle.
360 means it's a full pie-chart, 180 results in a half-pie-chart.
**default**:​ 360.0

``` swift
@objc open var maxAngle: CGFloat
```

## Methods

### `draw(_:)`

``` swift
open override func draw(_ rect: CGRect)
```

### `getMarkerPosition(highlight:)`

``` swift
open override func getMarkerPosition(highlight: Highlight) -> CGPoint
```

### `needsHighlight(index:)`

Checks if the given index is set to be highlighted.

``` swift
@objc open func needsHighlight(index: Int) -> Bool
```

### `indexForAngle(_:)`

``` swift
open override func indexForAngle(_ angle: CGFloat) -> Int
```

### `dataSetIndexForIndex(_:)`

``` swift
@objc open func dataSetIndexForIndex(_ xValue: Double) -> Int
```

  - Returns: The index of the DataSet this x-index belongs to.
