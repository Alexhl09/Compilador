# TimePeriodCollection

``` swift
open class TimePeriodCollection: TimePeriodGroup 
```

  - Time period collections serve as loose sets of time periods. They are
  - unorganized unless you decide to sort them, and have their own characteristics
  - like a `beginning` and `end` that are extrapolated from the time periods within. Time
  - period collections allow overlaps within their set of time periods.
  - 
  - [Visit our github page](https://github.com/MatthewYork/DateTools#time-period-collections) for more information.

## Inheritance

[`TimePeriodGroup`](/TimePeriodGroup)

## Methods

### `append(_:)`

``` swift
public func append(_ period: TimePeriodProtocol) 
```

  - Append a TimePeriodProtocol to the periods array and check if the Collection's
  - beginning and end should change.
  - 
  -   - parameter period: TimePeriodProtocol to add to the collection

### `append(_:)`

``` swift
public func append(_ periodArray: [TimePeriodProtocol]) 
```

  - Append a TimePeriodProtocol array to the periods array and check if the Collection's
  - beginning and end should change.
  - 
  -   - parameter periodArray: TimePeriodProtocol list to add to the collection

### `append(contentsOf:)`

``` swift
public func append<C: TimePeriodGroup>(contentsOf newPeriods: C) 
```

  - Append a TimePeriodGroup's periods array to the periods array of self and check if the Collection's
  - beginning and end should change.
  - 
  -   - parameter newPeriods: TimePeriodGroup to merge periods arrays with

### `insert(_:at:)`

``` swift
public func insert(_ newElement: TimePeriodProtocol, at index: Int) 
```

  - Insert period into periods array at given index.
  - 
  -   - parameter newElement: The period to insert
  -   - parameter index: Index to insert period at

### `remove(at:)`

``` swift
public func remove(at: Int) 
```

  - Remove from period array at the given index.
  - 
  -   - parameter at: The index in the collection to remove

### `removeAll()`

``` swift
public func removeAll() 
```

  - Remove all periods from period array.

### `sortByBeginning()`

``` swift
public func sortByBeginning() 
```

  - Sort periods array in place by beginning

### `sort(by:)`

``` swift
public func sort(by areInIncreasingOrder: (TimePeriodProtocol, TimePeriodProtocol) -> Bool) 
```

  - Sort periods array in place

### `sortedByBeginning()`

``` swift
public func sortedByBeginning() -> TimePeriodCollection 
```

  - Return collection with sorted periods array by beginning
  - 
  -   - returns: Collection with sorted periods

### `sorted(by:)`

``` swift
public func sorted(by areInIncreasingOrder: (TimePeriodProtocol, TimePeriodProtocol) -> Bool) -> TimePeriodCollection 
```

  - Return collection with sorted periods array
  - 
  -   - returns: Collection with sorted periods

### `allInside(in:)`

``` swift
public func allInside(in period: TimePeriodProtocol) -> TimePeriodCollection 
```

  - Returns from the `TimePeriodCollection` a sub-collection of `TimePeriod`s
  - whose start and end dates fall completely inside the interval of the given `TimePeriod`.
  - 
  -   - parameter period: The period to compare each other period against
  - 
  -   - returns: Collection of periods inside the given period

### `periodsIntersected(by:)`

``` swift
public func periodsIntersected(by date: Date) -> TimePeriodCollection 
```

  - Returns from the `TimePeriodCollection` a sub-collection of `TimePeriod`s containing
  - the given date.
  - 
  -   - parameter date: The date to compare each period to
  - 
  -   - returns: Collection of periods intersected by the given date

### `periodsIntersected(by:)`

``` swift
public func periodsIntersected(by period: TimePeriodProtocol) -> TimePeriodCollection 
```

  - Returns from the `TimePeriodCollection` a sub-collection of `TimePeriod`s
  - containing either the start date or the end date--or both--of the given `TimePeriod`.
  - 
  -   - parameter period: The period to compare each other period to
  - 
  -   - returns: Collection of periods intersected by the given period

### `map(_:)`

``` swift
public func map(_ transform: (TimePeriodProtocol) throws -> TimePeriodProtocol) rethrows -> TimePeriodCollection 
```

## Operators

### `==`

``` swift
public static func ==(left: TimePeriodCollection, right: TimePeriodCollection) -> Bool 
```

  - Operator overload for comparing `TimePeriodCollection`s to each other
