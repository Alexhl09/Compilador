# ChartBaseDataSet

``` swift
open class ChartBaseDataSet: NSObject, IChartDataSet, NSCopying
```

## Inheritance

[`IChartDataSet`](/IChartDataSet), `NSCopying`, `NSObject`

## Initializers

### `init()`

``` swift
public required override init()
```

### `init(label:)`

``` swift
@objc public init(label: String?)
```

## Properties

### `yMin`

``` swift
open var yMin: Double
```

### `yMax`

``` swift
open var yMax: Double
```

### `xMin`

``` swift
open var xMin: Double
```

### `xMax`

``` swift
open var xMax: Double
```

### `entryCount`

``` swift
open var entryCount: Int
```

### `colors`

All the colors that are used for this DataSet.
Colors are reused as soon as the number of Entries the DataSet represents is higher than the size of the colors array.

``` swift
open var colors 
```

### `valueColors`

List representing all colors that are used for drawing the actual values for this DataSet

``` swift
open var valueColors 
```

### `label`

The label string that describes the DataSet.

``` swift
open var label: String? = "DataSet"
```

### `axisDependency`

The axis this DataSet should be plotted against.

``` swift
open var axisDependency = YAxis.AxisDependency.left
```

### `highlightEnabled`

if true, value highlighting is enabled

``` swift
open var highlightEnabled = true
```

### `isHighlightEnabled`

`true` if value highlighting is enabled for this dataset

``` swift
open var isHighlightEnabled: Bool 
```

### `valueFormatter`

Custom formatter that is used instead of the auto-formatter if set

``` swift
open var valueFormatter: IValueFormatter?
```

### `needsFormatter`

``` swift
open var needsFormatter: Bool
```

### `valueTextColor`

Sets/get a single color for value text.
Setting the color clears the colors array and adds a single color.
Getting will return the first color in the array.

``` swift
open var valueTextColor: NSUIColor
```

### `valueFont`

the font for the value-text labels

``` swift
open var valueFont: NSUIFont 
```

### `form`

The form to draw for this dataset in the legend.

``` swift
open var form = Legend.Form.default
```

### `formSize`

The form size to draw for this dataset in the legend.

``` swift
open var formSize: CGFloat = CGFloat.nan
```

Return `NaN` to use the default legend form size.

### `formLineWidth`

The line width for drawing the form of this dataset in the legend

``` swift
open var formLineWidth: CGFloat = CGFloat.nan
```

Return `NaN` to use the default legend form line width.

### `formLineDashPhase`

Line dash configuration for legend shapes that consist of lines.

``` swift
open var formLineDashPhase: CGFloat = 0.0
```

This is how much (in pixels) into the dash pattern are we starting from.

### `formLineDashLengths`

Line dash configuration for legend shapes that consist of lines.

``` swift
open var formLineDashLengths: [CGFloat]? = nil
```

This is the actual dash pattern.
I.e. \[2, 3\] will paint \[--   --   \]
\[1, 3, 4, 2\] will paint \[-   ----  -   ----  \]

### `drawValuesEnabled`

Set this to true to draw y-values on the chart.

``` swift
open var drawValuesEnabled = true
```

> 

### `isDrawValuesEnabled`

`true` if y-value drawing is enabled, `false` ifnot

``` swift
open var isDrawValuesEnabled: Bool
```

### `drawIconsEnabled`

Set this to true to draw y-icons on the chart.

``` swift
open var drawIconsEnabled = true
```

> 

### `isDrawIconsEnabled`

Returns true if y-icon drawing is enabled, false if not

``` swift
open var isDrawIconsEnabled: Bool
```

### `iconsOffset`

Offset of icons drawn on the chart.

``` swift
open var iconsOffset 
```

For all charts except Pie and Radar it will be ordinary (x offset, y offset).

For Pie and Radar chart it will be (y offset, distance from center offset); so if you want icon to be rendered under value, you should increase X component of CGPoint, and if you want icon to be rendered closet to center, you should decrease height component of CGPoint.

### `visible`

Set the visibility of this DataSet. If not visible, the DataSet will not be drawn to the chart upon refreshing it.

``` swift
open var visible = true
```

### `isVisible`

`true` if this DataSet is visible inside the chart, or `false` ifit is currently hidden.

``` swift
open var isVisible: Bool
```

### `description`

``` swift
open override var description: String
```

### `debugDescription`

``` swift
open override var debugDescription: String
```

## Methods

### `notifyDataSetChanged()`

Use this method to tell the data set that the underlying data has changed

``` swift
open func notifyDataSetChanged()
```

### `calcMinMax()`

``` swift
open func calcMinMax()
```

### `calcMinMaxY(fromX:toX:)`

``` swift
open func calcMinMaxY(fromX: Double, toX: Double)
```

### `entryForIndex(_:)`

``` swift
open func entryForIndex(_ i: Int) -> ChartDataEntry?
```

### `entryForXValue(_:closestToY:rounding:)`

``` swift
open func entryForXValue(
        _ x: Double,
        closestToY y: Double,
        rounding: ChartDataSetRounding) -> ChartDataEntry?
```

### `entryForXValue(_:closestToY:)`

``` swift
open func entryForXValue(
        _ x: Double,
        closestToY y: Double) -> ChartDataEntry?
```

### `entriesForXValue(_:)`

``` swift
open func entriesForXValue(_ x: Double) -> [ChartDataEntry]
```

### `entryIndex(x:closestToY:rounding:)`

``` swift
open func entryIndex(
        x xValue: Double,
        closestToY y: Double,
        rounding: ChartDataSetRounding) -> Int
```

### `entryIndex(entry:)`

``` swift
open func entryIndex(entry e: ChartDataEntry) -> Int
```

### `addEntry(_:)`

``` swift
open func addEntry(_ e: ChartDataEntry) -> Bool
```

### `addEntryOrdered(_:)`

``` swift
open func addEntryOrdered(_ e: ChartDataEntry) -> Bool
```

### `removeEntry(_:)`

``` swift
@discardableResult open func removeEntry(_ entry: ChartDataEntry) -> Bool
```

### `removeEntry(index:)`

``` swift
@discardableResult open func removeEntry(index: Int) -> Bool
```

### `removeEntry(x:)`

``` swift
@discardableResult open func removeEntry(x: Double) -> Bool
```

### `removeFirst()`

``` swift
@discardableResult open func removeFirst() -> Bool
```

### `removeLast()`

``` swift
@discardableResult open func removeLast() -> Bool
```

### `contains(_:)`

``` swift
open func contains(_ e: ChartDataEntry) -> Bool
```

### `clear()`

``` swift
open func clear()
```

### `color(atIndex:)`

``` swift
open func color(atIndex index: Int) -> NSUIColor
```

  - Returns: The color at the given index of the DataSet's color array.
    This prevents out-of-bounds by performing a modulus on the color index, so colours will repeat themselves.

### `resetColors()`

Resets all colors of this DataSet and recreates the colors array.

``` swift
open func resetColors()
```

### `addColor(_:)`

Adds a new color to the colors array of the DataSet.

``` swift
open func addColor(_ color: NSUIColor)
```

#### Parameters

  - color: the color to add

### `setColor(_:)`

Sets the one and **only** color that should be used for this DataSet.
Internally, this recreates the colors array and adds the specified color.

``` swift
open func setColor(_ color: NSUIColor)
```

#### Parameters

  - color: the color to set

### `setColor(_:alpha:)`

Sets colors to a single color a specific alpha value.

``` swift
@objc open func setColor(_ color: NSUIColor, alpha: CGFloat)
```

#### Parameters

  - color: the color to set
  - alpha: alpha to apply to the set `color`

### `setColors(_:alpha:)`

Sets colors with a specific alpha value.

``` swift
@objc open func setColors(_ colors: [NSUIColor], alpha: CGFloat)
```

#### Parameters

  - colors: the colors to set
  - alpha: alpha to apply to the set `colors`

### `setColors(_:)`

Sets colors with a specific alpha value.

``` swift
open func setColors(_ colors: NSUIColor...)
```

#### Parameters

  - colors: the colors to set
  - alpha: alpha to apply to the set `colors`

### `valueTextColorAt(_:)`

``` swift
open func valueTextColorAt(_ index: Int) -> NSUIColor
```

  - Returns: The color at the specified index that is used for drawing the values inside the chart. Uses modulus internally.

### `copy(with:)`

``` swift
open func copy(with zone: NSZone? = nil) -> Any 
```
