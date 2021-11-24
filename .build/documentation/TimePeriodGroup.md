# TimePeriodGroup

``` swift
open class TimePeriodGroup: Sequence 
```

  - Time period groups are the final abstraction of date and time in DateTools. Here, time
  - periods are gathered and organized into something useful. There are two main types of time
  - period groups, `TimePeriodCollection` and `TimePeriodChain`.
  - 
  - [Visit our github page](https://github.com/MatthewYork/DateTools#time-period-groups) for more information.

## Inheritance

`Sequence`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `beginning`

``` swift
public var beginning: Date? 
```

  - The earliest beginning date of a `TimePeriod` in the group.
  - Nil if any `TimePeriod` in group has a nil beginning date (indefinite).
  - (Read Only)

### `end`

``` swift
public var end: Date? 
```

  - The latest end date of a `TimePeriod` in the group.
  - Nil if any `TimePeriod` in group has a nil end date (indefinite).
  - (Read Only)

### `count`

``` swift
public var count: Int 
```

  - The number of periods in the periods array.

### `duration`

``` swift
public var duration: TimeInterval? 
```

  - The total amount of time between the earliest and latest dates stored in the
  - periods array. Nil if any beginning or end date in any contained period is nil.

## Methods

### `equals(_:)`

``` swift
public func equals(_ group: TimePeriodGroup) -> Bool 
```

  - If `self.periods` contains the exact elements as the given group's periods array.
  - 
  -   - parameter group: The group to compare to self
  - 
  -   - returns: True if the periods arrays are the same

### `makeIterator()`

``` swift
public func makeIterator() -> IndexingIterator<Array<TimePeriodProtocol>> 
```

### `map(_:)`

``` swift
public func map<T>(_ transform: (TimePeriodProtocol) throws -> T) rethrows -> [T] 
```

### `filter(_:)`

``` swift
public func filter(_ isIncluded: (TimePeriodProtocol) throws -> Bool) rethrows -> [TimePeriodProtocol] 
```

### `forEach(_:)`

``` swift
public func forEach(_ body: (TimePeriodProtocol) throws -> Void) rethrows 
```

### `split(maxSplits:omittingEmptySubsequences:whereSeparator:)`

``` swift
public func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator isSeparator: (TimePeriodProtocol) throws -> Bool) rethrows -> [AnySequence<TimePeriodProtocol>] 
```
