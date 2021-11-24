# PieChartData

``` swift
open class PieChartData: ChartData
```

## Inheritance

[`ChartData`](/ChartData)

## Initializers

### `init()`

``` swift
public override init()
```

### `init(dataSets:)`

``` swift
public override init(dataSets: [IChartDataSet]?)
```

## Properties

### `dataSets`

All DataSet objects this ChartData object holds.

``` swift
@objc open override var dataSets: [IChartDataSet]
```

### `yValueSum`

The total y-value sum across all DataSet objects the this object represents.

``` swift
@objc open var yValueSum: Double
```

## Methods

### `getDataSetByIndex(_:)`

``` swift
open override func getDataSetByIndex(_ index: Int) -> IChartDataSet?
```

### `getDataSetByLabel(_:ignorecase:)`

``` swift
open override func getDataSetByLabel(_ label: String, ignorecase: Bool) -> IChartDataSet?
```

### `entryForHighlight(_:)`

``` swift
open override func entryForHighlight(_ highlight: Highlight) -> ChartDataEntry?
```

### `addDataSet(_:)`

``` swift
open override func addDataSet(_ d: IChartDataSet!)
```

### `removeDataSetByIndex(_:)`

Removes the DataSet at the given index in the DataSet array from the data object.
Also recalculates all minimum and maximum values.

``` swift
open override func removeDataSetByIndex(_ index: Int) -> Bool
```

#### Returns

`true` if a DataSet was removed, `false` ifno DataSet could be removed.
