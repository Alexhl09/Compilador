# IChartDataSet

``` swift
@objc
public protocol IChartDataSet
```

## Requirements

### notifyDataSetChanged()

Use this method to tell the data set that the underlying data has changed

``` swift
func notifyDataSetChanged()
```

### calcMinMax()

Calculates the minimum and maximum x and y values (\_xMin, \_xMax, \_yMin, \_yMax).

``` swift
func calcMinMax()
```

### calcMinMaxY(fromX:​toX:​)

Calculates the min and max y-values from the Entry closest to the given fromX to the Entry closest to the given toX value.
This is only needed for the autoScaleMinMax feature.

``` swift
func calcMinMaxY(fromX: Double, toX: Double)
```

### yMin

The minimum y-value this DataSet holds

``` swift
var yMin: Double 
```

### yMax

The maximum y-value this DataSet holds

``` swift
var yMax: Double 
```

### xMin

The minimum x-value this DataSet holds

``` swift
var xMin: Double 
```

### xMax

The maximum x-value this DataSet holds

``` swift
var xMax: Double 
```

### entryCount

The number of y-values this DataSet represents

``` swift
var entryCount: Int 
```

### entryForIndex(\_:​)

``` swift
func entryForIndex(_ i: Int) -> ChartDataEntry?
```

  - Throws: out of bounds
    if `i` is out of bounds, it may throw an out-of-bounds exception
  - Returns: The entry object found at the given index (not x-value\!)

### entryForXValue(\_:​closestToY:​rounding:​)

``` swift
func entryForXValue(
        _ xValue: Double,
        closestToY yValue: Double,
        rounding: ChartDataSetRounding) -> ChartDataEntry?
```

  - Parameters:
      - xValue: the x-value
      - closestToY: If there are multiple y-values for the specified x-value,
      - rounding: determine whether to round up/down/closest if there is no Entry matching the provided x-value
  - Returns: The first Entry object found at the given x-value with binary search.
    If the no Entry at the specified x-value is found, this method returns the Entry at the closest x-value according to the rounding.
    nil if no Entry object at that x-value.

### entryForXValue(\_:​closestToY:​)

``` swift
func entryForXValue(
        _ xValue: Double,
        closestToY yValue: Double) -> ChartDataEntry?
```

  - Parameters:
      - xValue: the x-value
      - closestToY: If there are multiple y-values for the specified x-value,
  - Returns: The first Entry object found at the given x-value with binary search.
    If the no Entry at the specified x-value is found, this method returns the Entry at the closest x-value.
    nil if no Entry object at that x-value.

### entriesForXValue(\_:​)

``` swift
func entriesForXValue(_ xValue: Double) -> [ChartDataEntry]
```

  - Returns: All Entry objects found at the given x-value with binary search.
    An empty array if no Entry object at that x-value.

### entryIndex(x:​closestToY:​rounding:​)

``` swift
func entryIndex(
        x xValue: Double,
        closestToY yValue: Double,
        rounding: ChartDataSetRounding) -> Int
```

  - Parameters:
      - xValue: x-value of the entry to search for
      - closestToY: If there are multiple y-values for the specified x-value,
      - rounding: Rounding method if exact value was not found
  - Returns: The array-index of the specified entry.
    If the no Entry at the specified x-value is found, this method returns the index of the Entry at the closest x-value according to the rounding.

### entryIndex(entry:​)

``` swift
func entryIndex(entry e: ChartDataEntry) -> Int
```

  - Parameters:
      - e: the entry to search for
  - Returns: The array-index of the specified entry

### addEntry(\_:​)

Adds an Entry to the DataSet dynamically.

``` swift
func addEntry(_ e: ChartDataEntry) -> Bool
```

*optional feature, can return `false` ifnot implemented*

Entries are added to the end of the list.

#### Parameters

  - e: the entry to add

#### Returns

`true` if the entry was added successfully, `false` ifthis feature is not supported

### addEntryOrdered(\_:​)

Adds an Entry to the DataSet dynamically.
Entries are added to their appropriate index in the values array respective to their x-position.
This will also recalculate the current minimum and maximum values of the DataSet and the value-sum.

``` swift
func addEntryOrdered(_ e: ChartDataEntry) -> Bool
```

*optional feature, can return `false` ifnot implemented*

Entries are added to the end of the list.

#### Parameters

  - e: the entry to add

#### Returns

`true` if the entry was added successfully, `false` ifthis feature is not supported

### removeEntry(\_:​)

Removes an Entry from the DataSet dynamically.

``` swift
func removeEntry(_ entry: ChartDataEntry) -> Bool
```

*optional feature, can return `false` ifnot implemented*

#### Parameters

  - entry: the entry to remove

#### Returns

`true` if the entry was removed successfully, `false` ifthe entry does not exist or if this feature is not supported

### removeEntry(index:​)

Removes the Entry object at the given index in the values array from the DataSet.

``` swift
func removeEntry(index: Int) -> Bool
```

*optional feature, can return `false` ifnot implemented*

#### Parameters

  - index: the index of the entry to remove

#### Returns

`true` if the entry was removed successfully, `false` ifthe entry does not exist or if this feature is not supported

### removeEntry(x:​)

Removes the Entry object closest to the given x-value from the DataSet.

``` swift
func removeEntry(x: Double) -> Bool
```

*optional feature, can return `false` ifnot implemented*

#### Parameters

  - x: the x-value to remove

#### Returns

`true` if the entry was removed successfully, `false` ifthe entry does not exist or if this feature is not supported

### removeFirst()

Removes the first Entry (at index 0) of this DataSet from the entries array.

``` swift
func removeFirst() -> Bool
```

*optional feature, can return `false` ifnot implemented*

#### Returns

`true` if the entry was removed successfully, `false` ifthe entry does not exist or if this feature is not supported

### removeLast()

Removes the last Entry (at index 0) of this DataSet from the entries array.

``` swift
func removeLast() -> Bool
```

*optional feature, can return `false` ifnot implemented*

#### Returns

`true` if the entry was removed successfully, `false` ifthe entry does not exist or if this feature is not supported

### contains(\_:​)

Checks if this DataSet contains the specified Entry.

``` swift
func contains(_ e: ChartDataEntry) -> Bool
```

#### Returns

`true` if contains the entry, `false` ifnot.

### clear()

Removes all values from this DataSet and does all necessary recalculations.

``` swift
func clear()
```

*optional feature, could throw if not implemented*

### label

The label string that describes the DataSet.

``` swift
var label: String? 
```

### axisDependency

The axis this DataSet should be plotted against.

``` swift
var axisDependency: YAxis.AxisDependency 
```

### valueColors

List representing all colors that are used for drawing the actual values for this DataSet

``` swift
var valueColors: [NSUIColor] 
```

### colors

All the colors that are used for this DataSet.
Colors are reused as soon as the number of Entries the DataSet represents is higher than the size of the colors array.

``` swift
var colors: [NSUIColor] 
```

### color(atIndex:​)

``` swift
func color(atIndex: Int) -> NSUIColor
```

  - Returns: The color at the given index of the DataSet's color array.
    This prevents out-of-bounds by performing a modulus on the color index, so colours will repeat themselves.

### resetColors()

``` swift
func resetColors()
```

### addColor(\_:​)

``` swift
func addColor(_ color: NSUIColor)
```

### setColor(\_:​)

``` swift
func setColor(_ color: NSUIColor)
```

### highlightEnabled

if true, value highlighting is enabled

``` swift
var highlightEnabled: Bool 
```

### isHighlightEnabled

`true` if value highlighting is enabled for this dataset

``` swift
var isHighlightEnabled: Bool 
```

### valueFormatter

Custom formatter that is used instead of the auto-formatter if set

``` swift
var valueFormatter: IValueFormatter? 
```

### needsFormatter

`true` if the valueFormatter object of this DataSet is null.

``` swift
var needsFormatter: Bool 
```

### valueTextColor

Sets/get a single color for value text.
Setting the color clears the colors array and adds a single color.
Getting will return the first color in the array.

``` swift
var valueTextColor: NSUIColor 
```

### valueTextColorAt(\_:​)

``` swift
func valueTextColorAt(_ index: Int) -> NSUIColor
```

  - Returns: The color at the specified index that is used for drawing the values inside the chart. Uses modulus internally.

### valueFont

the font for the value-text labels

``` swift
var valueFont: NSUIFont 
```

### form

The form to draw for this dataset in the legend.

``` swift
var form: Legend.Form 
```

Return `.Default` to use the default legend form.

### formSize

The form size to draw for this dataset in the legend.

``` swift
var formSize: CGFloat 
```

Return `NaN` to use the default legend form size.

### formLineWidth

The line width for drawing the form of this dataset in the legend

``` swift
var formLineWidth: CGFloat 
```

Return `NaN` to use the default legend form line width.

### formLineDashPhase

Line dash configuration for legend shapes that consist of lines.

``` swift
var formLineDashPhase: CGFloat 
```

This is how much (in pixels) into the dash pattern are we starting from.

### formLineDashLengths

Line dash configuration for legend shapes that consist of lines.

``` swift
var formLineDashLengths: [CGFloat]? 
```

This is the actual dash pattern.
I.e. \[2, 3\] will paint \[--   --   \]
\[1, 3, 4, 2\] will paint \[-   ----  -   ----  \]

### drawValuesEnabled

Set this to true to draw y-values on the chart.

``` swift
var drawValuesEnabled: Bool 
```

> 

### isDrawValuesEnabled

`true` if y-value drawing is enabled, `false` ifnot

``` swift
var isDrawValuesEnabled: Bool 
```

### drawIconsEnabled

Set this to true to draw y-icons on the chart

``` swift
var drawIconsEnabled: Bool 
```

> 

### isDrawIconsEnabled

Returns true if y-icon drawing is enabled, false if not

``` swift
var isDrawIconsEnabled: Bool 
```

### iconsOffset

Offset of icons drawn on the chart.

``` swift
var iconsOffset: CGPoint 
```

For all charts except Pie and Radar it will be ordinary (x offset, y offset).

For Pie and Radar chart it will be (y offset, distance from center offset); so if you want icon to be rendered under value, you should increase X component of CGPoint, and if you want icon to be rendered closet to center, you should decrease height component of CGPoint.

### visible

Set the visibility of this DataSet. If not visible, the DataSet will not be drawn to the chart upon refreshing it.

``` swift
var visible: Bool 
```

### isVisible

`true` if this DataSet is visible inside the chart, or `false` ifit is currently hidden.

``` swift
var isVisible: Bool 
```
