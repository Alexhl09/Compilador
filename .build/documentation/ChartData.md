# ChartData

``` swift
open class ChartData: NSObject
```

## Inheritance

`NSObject`

## Initializers

### `init()`

``` swift
public override init()
```

### `init(dataSets:)`

``` swift
@objc public init(dataSets: [IChartDataSet]?)
```

### `init(dataSet:)`

``` swift
@objc public convenience init(dataSet: IChartDataSet?)
```

## Properties

### `dataSetCount`

The number of LineDataSets this object contains

``` swift
@objc open var dataSetCount: Int
```

### `yMin`

The smallest y-value the data object contains.

``` swift
@objc open var yMin: Double
```

### `yMax`

The greatest y-value the data object contains.

``` swift
@objc open var yMax: Double
```

### `xMin`

The minimum x-value the data object contains.

``` swift
@objc open var xMin: Double
```

### `xMax`

The maximum x-value the data object contains.

``` swift
@objc open var xMax: Double
```

### `dataSets`

All DataSet objects this ChartData object holds.

``` swift
@objc open var dataSets: [IChartDataSet]
```

### `highlightEnabled`

Enables / disables highlighting values for all DataSets this data object contains.
If set to true, this means that values can be highlighted programmatically or by touch gesture.

``` swift
@objc open var highlightEnabled: Bool
```

### `isHighlightEnabled`

if true, value highlightning is enabled

``` swift
@objc open var isHighlightEnabled: Bool 
```

### `entryCount`

The total entry count across all DataSet objects this data object contains.

``` swift
@objc open var entryCount: Int
```

### `maxEntryCountSet`

The DataSet object with the maximum number of entries or null if there are no DataSets.

``` swift
@objc open var maxEntryCountSet: IChartDataSet?
```

### `accessibilityEntryLabelPrefix`

When the data entry labels are generated identifiers, set this property to prepend a string before each identifier

``` swift
@objc open var accessibilityEntryLabelPrefix: String?
```

For example, if a label is "\#3", settings this property to "Item" allows it to be spoken as "Item \#3"

### `accessibilityEntryLabelSuffix`

When the data entry value requires a unit, use this property to append the string representation of the unit to the value

``` swift
@objc open var accessibilityEntryLabelSuffix: String?
```

For example, if a value is "44.1", setting this property to "m" allows it to be spoken as "44.1 m"

### `accessibilityEntryLabelSuffixIsCount`

If the data entry value is a count, set this to true to allow plurals and other grammatical changes
**default**:​ false

``` swift
@objc open var accessibilityEntryLabelSuffixIsCount: Bool = false
```

## Methods

### `notifyDataChanged()`

Call this method to let the ChartData know that the underlying data has changed.
Calling this performs all necessary recalculations needed when the contained data has changed.

``` swift
@objc open func notifyDataChanged()
```

### `calcMinMaxY(fromX:toX:)`

``` swift
@objc open func calcMinMaxY(fromX: Double, toX: Double)
```

### `calcMinMax()`

calc minimum and maximum y value over all datasets

``` swift
@objc open func calcMinMax()
```

### `calcMinMax(entry:axis:)`

Adjusts the current minimum and maximum values based on the provided Entry object.

``` swift
@objc open func calcMinMax(entry e: ChartDataEntry, axis: YAxis.AxisDependency)
```

### `calcMinMax(dataSet:)`

Adjusts the minimum and maximum values based on the given DataSet.

``` swift
@objc open func calcMinMax(dataSet d: IChartDataSet)
```

### `getYMin()`

``` swift
@nonobjc
    open func getYMin() -> Double
```

### `getYMin(axis:)`

``` swift
@objc open func getYMin(axis: YAxis.AxisDependency) -> Double
```

### `getYMax()`

``` swift
@nonobjc
    open func getYMax() -> Double
```

### `getYMax(axis:)`

``` swift
@objc open func getYMax(axis: YAxis.AxisDependency) -> Double
```

### `entryForHighlight(_:)`

Get the Entry for a corresponding highlight object

``` swift
@objc open func entryForHighlight(_ highlight: Highlight) -> ChartDataEntry?
```

#### Parameters

  - highlight:

#### Returns

The entry that is highlighted

### `getDataSetByLabel(_:ignorecase:)`

**IMPORTANT:​ This method does calculations at runtime. Use with care in performance critical situations.**

``` swift
@objc open func getDataSetByLabel(_ label: String, ignorecase: Bool) -> IChartDataSet?
```

#### Parameters

  - label:
  - ignorecase:

#### Returns

The DataSet Object with the given label. Sensitive or not.

### `getDataSetByIndex(_:)`

``` swift
@objc open func getDataSetByIndex(_ index: Int) -> IChartDataSet!
```

### `addDataSet(_:)`

``` swift
@objc open func addDataSet(_ dataSet: IChartDataSet!)
```

### `removeDataSet(_:)`

Removes the given DataSet from this data object.
Also recalculates all minimum and maximum values.

``` swift
@objc @discardableResult open func removeDataSet(_ dataSet: IChartDataSet) -> Bool
```

#### Returns

`true` if a DataSet was removed, `false` ifno DataSet could be removed.

### `removeDataSetByIndex(_:)`

Removes the DataSet at the given index in the DataSet array from the data object.
Also recalculates all minimum and maximum values.

``` swift
@objc @discardableResult open func removeDataSetByIndex(_ index: Int) -> Bool
```

#### Returns

`true` if a DataSet was removed, `false` ifno DataSet could be removed.

### `addEntry(_:dataSetIndex:)`

Adds an Entry to the DataSet at the specified index. Entries are added to the end of the list.

``` swift
@objc open func addEntry(_ e: ChartDataEntry, dataSetIndex: Int)
```

### `removeEntry(_:dataSetIndex:)`

Removes the given Entry object from the DataSet at the specified index.

``` swift
@objc @discardableResult open func removeEntry(_ entry: ChartDataEntry, dataSetIndex: Int) -> Bool
```

### `removeEntry(xValue:dataSetIndex:)`

Removes the Entry object closest to the given xIndex from the ChartDataSet at the
specified index.

``` swift
@objc @discardableResult open func removeEntry(xValue: Double, dataSetIndex: Int) -> Bool
```

#### Returns

`true` if an entry was removed, `false` ifno Entry was found that meets the specified requirements.

### `getDataSetForEntry(_:)`

``` swift
@objc open func getDataSetForEntry(_ e: ChartDataEntry) -> IChartDataSet?
```

  - Returns: The DataSet that contains the provided Entry, or null, if no DataSet contains this entry.

### `indexOfDataSet(_:)`

``` swift
@objc open func indexOfDataSet(_ dataSet: IChartDataSet) -> Int
```

  - Returns: The index of the provided DataSet in the DataSet array of this data object, or -1 if it does not exist.

### `getFirstLeft(dataSets:)`

``` swift
@objc open func getFirstLeft(dataSets: [IChartDataSet]) -> IChartDataSet?
```

  - Returns: The first DataSet from the datasets-array that has it's dependency on the left axis. Returns null if no DataSet with left dependency could be found.

### `getFirstRight(dataSets:)`

``` swift
@objc open func getFirstRight(dataSets: [IChartDataSet]) -> IChartDataSet?
```

  - Returns: The first DataSet from the datasets-array that has it's dependency on the right axis. Returns null if no DataSet with right dependency could be found.

### `getColors()`

``` swift
@objc open func getColors() -> [NSUIColor]?
```

  - Returns: All colors used across all DataSet objects this object represents.

### `setValueFormatter(_:)`

Sets a custom IValueFormatter for all DataSets this data object contains.

``` swift
@objc open func setValueFormatter(_ formatter: IValueFormatter)
```

### `setValueTextColor(_:)`

Sets the color of the value-text (color in which the value-labels are drawn) for all DataSets this data object contains.

``` swift
@objc open func setValueTextColor(_ color: NSUIColor)
```

### `setValueFont(_:)`

Sets the font for all value-labels for all DataSets this data object contains.

``` swift
@objc open func setValueFont(_ font: NSUIFont)
```

### `setDrawValues(_:)`

Enables / disables drawing values (value-text) for all DataSets this data object contains.

``` swift
@objc open func setDrawValues(_ enabled: Bool)
```

### `clearValues()`

Clears this data object from all DataSets and removes all Entries.
Don't forget to invalidate the chart after this.

``` swift
@objc open func clearValues()
```

### `contains(dataSet:)`

Checks if this data object contains the specified DataSet.

``` swift
@objc open func contains(dataSet: IChartDataSet) -> Bool
```

#### Returns

`true` if so, `false` ifnot.
