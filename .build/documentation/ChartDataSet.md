# ChartDataSet

The DataSet class represents one group or type of entries (Entry) in the Chart that belong together.
It is designed to logically separate different groups of values inside the Chart (e.g. the values for a specific line in the LineChart, or the values of a specific group of bars in the BarChart).

``` swift
open class ChartDataSet: ChartBaseDataSet
```

## Inheritance

[`ChartBaseDataSet`](/ChartBaseDataSet), `MutableCollection`, `RandomAccessCollection`, `RangeReplaceableCollection`

## Nested Type Aliases

### `Index`

``` swift
public typealias Index = Int
```

### `Element`

``` swift
public typealias Element = ChartDataEntry
```

## Initializers

### `init()`

``` swift
public required init()
```

### `init(label:)`

``` swift
public override convenience init(label: String?)
```

### `init(entries:label:)`

``` swift
@objc public init(entries: [ChartDataEntry]?, label: String?)
```

### `init(entries:)`

``` swift
@objc public convenience init(entries: [ChartDataEntry]?)
```

## Properties

### `values`

``` swift
@available(*, unavailable, renamed: "entries")
    @objc
    open var values: [ChartDataEntry] 
```

  - Note: Calls `notifyDataSetChanged()` after setting a new value.
  - Returns: The array of y-values that this DataSet represents.
    the entries that this dataset represents / holds together

### `entries`

``` swift
@objc
    open private(set) var entries: [ChartDataEntry]
```

### `yMin`

The minimum y-value this DataSet holds

``` swift
open override var yMin: Double 
```

### `yMax`

The maximum y-value this DataSet holds

``` swift
open override var yMax: Double 
```

### `xMin`

The minimum x-value this DataSet holds

``` swift
open override var xMin: Double 
```

### `xMax`

The maximum x-value this DataSet holds

``` swift
open override var xMax: Double 
```

### `entryCount`

The number of y-values this DataSet represents

``` swift
@available(*, deprecated, message: "Use `count` instead")
    open override var entryCount: Int 
```

### `startIndex`

``` swift
public var startIndex: Index 
```

### `endIndex`

``` swift
public var endIndex: Index 
```

## Methods

### `replaceEntries(_:)`

Used to replace all entries of a data set while retaining styling properties.
This is a separate method from a setter on `entries` to encourage usage
of `Collection` conformances.

``` swift
@objc
    public func replaceEntries(_ entries: [ChartDataEntry]) 
```

#### Parameters

  - entries: new entries to replace existing entries in the dataset

### `calcMinMax()`

``` swift
open override func calcMinMax()
```

### `calcMinMaxY(fromX:toX:)`

``` swift
open override func calcMinMaxY(fromX: Double, toX: Double)
```

### `calcMinMaxX(entry:)`

``` swift
@objc open func calcMinMaxX(entry e: ChartDataEntry)
```

### `calcMinMaxY(entry:)`

``` swift
@objc open func calcMinMaxY(entry e: ChartDataEntry)
```

### `entryForIndex(_:)`

``` swift
@available(*, deprecated, message: "Use `subscript(index:)` instead.")
    open override func entryForIndex(_ i: Int) -> ChartDataEntry?
```

  - Throws: out of bounds
    if `i` is out of bounds, it may throw an out-of-bounds exception
  - Returns: The entry object found at the given index (not x-value\!)

### `entryForXValue(_:closestToY:rounding:)`

``` swift
open override func entryForXValue(
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

### `entryForXValue(_:closestToY:)`

``` swift
open override func entryForXValue(
        _ xValue: Double,
        closestToY yValue: Double) -> ChartDataEntry?
```

  - Parameters:
      - xValue: the x-value
      - closestToY: If there are multiple y-values for the specified x-value,
  - Returns: The first Entry object found at the given x-value with binary search.
    If the no Entry at the specified x-value is found, this method returns the Entry at the closest x-value.
    nil if no Entry object at that x-value.

### `entriesForXValue(_:)`

``` swift
open override func entriesForXValue(_ xValue: Double) -> [ChartDataEntry]
```

  - Returns: All Entry objects found at the given xIndex with binary search.
    An empty array if no Entry object at that index.

### `entryIndex(x:closestToY:rounding:)`

``` swift
open override func entryIndex(
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

### `entryIndex(entry:)`

``` swift
@available(*, deprecated, message: "Use `firstIndex(of:)` or `lastIndex(of:)`")
    open override func entryIndex(entry e: ChartDataEntry) -> Int
```

  - Parameters:
      - e: the entry to search for
  - Returns: The array-index of the specified entry

### `addEntry(_:)`

Adds an Entry to the DataSet dynamically.
Entries are added to the end of the list.
This will also recalculate the current minimum and maximum values of the DataSet and the value-sum.

``` swift
@available(*, deprecated, message: "Use `append(_:)` instead")
    open override func addEntry(_ e: ChartDataEntry) -> Bool
```

#### Parameters

  - e: the entry to add

#### Returns

True

### `addEntryOrdered(_:)`

Adds an Entry to the DataSet dynamically.
Entries are added to their appropriate index respective to it's x-index.
This will also recalculate the current minimum and maximum values of the DataSet and the value-sum.

``` swift
open override func addEntryOrdered(_ e: ChartDataEntry) -> Bool
```

#### Parameters

  - e: the entry to add

#### Returns

True

### `removeEntry(_:)`

``` swift
@available(*, renamed: "remove(_:)")
    open override func removeEntry(_ entry: ChartDataEntry) -> Bool
```

### `remove(_:)`

Removes an Entry from the DataSet dynamically.
This will also recalculate the current minimum and maximum values of the DataSet and the value-sum.

``` swift
open func remove(_ entry: ChartDataEntry) -> Bool
```

#### Parameters

  - entry: the entry to remove

#### Returns

`true` if the entry was removed successfully, else if the entry does not exist

### `removeFirst()`

Removes the first Entry (at index 0) of this DataSet from the entries array.

``` swift
@available(*, deprecated, message: "Use `func removeFirst() -> ChartDataEntry` instead.")
    open override func removeFirst() -> Bool
```

#### Returns

`true` if successful, `false` if not.

### `removeLast()`

Removes the last Entry (at index size-1) of this DataSet from the entries array.

``` swift
@available(*, deprecated, message: "Use `func removeLast() -> ChartDataEntry` instead.")
    open override func removeLast() -> Bool
```

#### Returns

`true` if successful, `false` if not.

### `clear()`

Removes all values from this DataSet and recalculates min and max value.

``` swift
@available(*, deprecated, message: "Use `removeAll(keepingCapacity:)` instead.")
    open override func clear()
```

### `copy(with:)`

``` swift
open override func copy(with zone: NSZone? = nil) -> Any
```

### `index(after:)`

``` swift
public func index(after: Index) -> Index 
```

### `index(before:)`

``` swift
public func index(before: Index) -> Index 
```

### `append(_:)`

``` swift
public func append(_ newElement: Element) 
```

### `remove(at:)`

``` swift
public func remove(at position: Index) -> Element 
```

### `removeFirst()`

``` swift
public func removeFirst() -> Element 
```

### `removeFirst(_:)`

``` swift
public func removeFirst(_ n: Int) 
```

### `removeLast()`

``` swift
public func removeLast() -> Element 
```

### `removeLast(_:)`

``` swift
public func removeLast(_ n: Int) 
```

### `removeSubrange(_:)`

``` swift
public func removeSubrange<R>(_ bounds: R) where R : RangeExpression, Index == R.Bound 
```

### `removeAll(keepingCapacity:)`

``` swift
@objc
    public func removeAll(keepingCapacity keepCapacity: Bool) 
```
