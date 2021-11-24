# TimePeriodChain

``` swift
open class TimePeriodChain: TimePeriodGroup 
```

  - Time period chains serve as a tightly coupled set of time periods. They are
  - always organized by start and end date, and have their own characteristics like
  - a StartDate and EndDate that are extrapolated from the time periods within. Time
  - period chains do not allow overlaps within their set of time periods. This type of
  - group is ideal for modeling schedules like sequential meetings or appointments.
  - 
  - [Visit our github page](https://github.com/MatthewYork/DateTools#time-period-chains) for more information.

## Inheritance

[`TimePeriodGroup`](/TimePeriodGroup)

## Methods

### `append(_:)`

``` swift
public func append(_ period: TimePeriodProtocol) 
```

  - Append a TimePeriodProtocol to the periods array and update the Chain's
  - beginning and end.
  - 
  -   - parameter period: TimePeriodProtocol to add to the collection

### `append(contentsOf:)`

``` swift
public func append<G: TimePeriodGroup>(contentsOf group: G) 
```

  - Append a TimePeriodProtocol array to the periods array and update the Chain's
  - beginning and end.
  - 
  -   - parameter periodArray: TimePeriodProtocol list to add to the collection

### `insert(_:at:)`

``` swift
public func insert(_ period: TimePeriodProtocol, at index: Int) 
```

  - Insert period into periods array at given index.
  - 
  -   - parameter newElement: The period to insert
  -   - parameter index: Index to insert period at

### `remove(at:)`

``` swift
public func remove(at index: Int) 
```

  - Remove from period array at the given index.
  - 
  -   - parameter at: The index in the collection to remove

### `removeAll()`

``` swift
public func removeAll() 
```

  - Remove all periods from period array.

### `shift(by:)`

``` swift
public func shift(by duration: TimeInterval) 
```

  - In place, shifts all chain time periods by a given time interval
  - 
  -   - parameter duration: The time interval to shift the period by

### `map(_:)`

``` swift
public override func map<T>(_ transform: (TimePeriodProtocol) throws -> T) rethrows -> [T] 
```

### `filter(_:)`

``` swift
public override func filter(_ isIncluded: (TimePeriodProtocol) throws -> Bool) rethrows -> [TimePeriodProtocol] 
```

### `pop()`

``` swift
public func pop() -> TimePeriodProtocol? 
```

  - Removes the last object from the `TimePeriodChain` and returns it
  - 
## Operators

### `==`

``` swift
public static func ==(left: TimePeriodChain, right: TimePeriodChain) -> Bool 
```

  - Operator overload for comparing `TimePeriodChain`s to each other
