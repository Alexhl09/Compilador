# TimePeriodProtocol

``` swift
public protocol TimePeriodProtocol 
```

  - In DateTools, time periods are represented by the TimePeriod protocol.
  - Required variables and method impleementations are bound below. An inheritable
  - implementation of the TimePeriodProtocol is available through the TimePeriodClass
  - 
  - [Visit our github page](https://github.com/MatthewYork/DateTools#time-periods) for more information.

## Default Implementations

### `isMoment`

``` swift
public var isMoment: Bool 
```

  - True if the `TimePeriod`'s duration is zero

### `years`

``` swift
public var years: Int 
```

  - The duration of the `TimePeriod` in years.
  - Returns the max int if beginning or end are nil.

### `weeks`

``` swift
public var weeks: Int 
```

  - The duration of the `TimePeriod` in weeks.
  - Returns the max int if beginning or end are nil.

### `days`

``` swift
public var days: Int 
```

  - The duration of the `TimePeriod` in days.
  - Returns the max int if beginning or end are nil.

### `hours`

``` swift
public var hours: Int 
```

  - The duration of the `TimePeriod` in hours.
  - Returns the max int if beginning or end are nil.

### `minutes`

``` swift
public var minutes: Int 
```

  - The duration of the `TimePeriod` in minutes.
  - Returns the max int if beginning or end are nil.

### `seconds`

``` swift
public var seconds: Int 
```

  - The duration of the `TimePeriod` in seconds.
  - Returns the max int if beginning or end are nil.

### `chunk`

``` swift
public var chunk: TimeChunk 
```

  - The duration of the `TimePeriod` in a time chunk.
  - Returns a time chunk with all zeroes if beginning or end are nil.

### `duration`

``` swift
public var duration: TimeInterval 
```

  - The length of time between the beginning and end dates of the
  - `TimePeriod` as a `TimeInterval`.

### `relation(to:)`

``` swift
public func relation(to period: TimePeriodProtocol) -> Relation 
```

  - The relationship of the self `TimePeriod` to the given `TimePeriod`.
  - Relations are stored in Enums.swift. Formal defnitions available in the provided
  - links:
  - [GitHub](https://github.com/MatthewYork/DateTools#relationships),
  - [CodeProject](http://www.codeproject.com/Articles/168662/Time-Period-Library-for-NET)
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: The relationship between self and the given time period

### `equals(_:)`

``` swift
public func equals(_ period: TimePeriodProtocol) -> Bool 
```

  - If `self.beginning` and `self.end` are equal to the beginning and end of the
  - given `TimePeriod`.
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: True if the periods are the same

### `isInside(of:)`

``` swift
public func isInside(of period: TimePeriodProtocol) -> Bool 
```

  - If the given `TimePeriod`'s beginning is before `self.beginning` and
  - if the given 'TimePeriod`'s end is after `self.end\`.
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: True if self is inside of the given `TimePeriod`

### `contains(_:interval:)`

``` swift
public func contains(_ date: Date, interval: Interval) -> Bool 
```

  - If the given Date is after `self.beginning` and before `self.end`.
  - 
  -   - parameter period: The time period to compare to self
  -   - parameter interval: Whether the edge of the date is included in the calculation
  - 
  -   - returns: True if the given `TimePeriod` is inside of self

### `contains(_:)`

``` swift
public func contains(_ period: TimePeriodProtocol) -> Bool 
```

  - If the given `TimePeriod`'s beginning is after `self.beginning` and
  - if the given 'TimePeriod`'s after is after `self.end\`.
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: True if the given `TimePeriod` is inside of self

### `overlaps(with:)`

``` swift
public func overlaps(with period: TimePeriodProtocol) -> Bool 
```

  - If self and the given `TimePeriod` share any sub-`TimePeriod`.
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: True if there is a period of time that is shared by both `TimePeriod`s

### `intersects(with:)`

``` swift
public func intersects(with period: TimePeriodProtocol) -> Bool 
```

  - If self and the given `TimePeriod` overlap or the period's edges touch.
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: True if there is a period of time or moment that is shared by both `TimePeriod`s

### `hasGap(between:)`

``` swift
public func hasGap(between period: TimePeriodProtocol) -> Bool 
```

  - If self and the given `TimePeriod` have no overlap or touching edges.
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: True if there is a period of time between self and the given `TimePeriod` not contained by either period

### `gap(between:)`

``` swift
public func gap(between period: TimePeriodProtocol) -> TimeInterval 
```

  - The period of time between self and the given `TimePeriod` not contained by either.
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: The gap between the periods. Zero if there is no gap.

### `gap(between:)`

``` swift
public func gap(between period: TimePeriodProtocol) -> TimeChunk? 
```

  - The period of time between self and the given `TimePeriod` not contained by either
  - as a `TimeChunk`.
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: The gap between the periods, zero if there is no gap

### `isAfter(period:)`

``` swift
public func isAfter(period: TimePeriodProtocol) -> Bool 
```

  - If self is after the given `TimePeriod` chronologically. (A gap must exist between the two).
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: True if self is after the given `TimePeriod`

### `isBefore(period:)`

``` swift
public func isBefore(period: TimePeriodProtocol) -> Bool 
```

  - If self is before the given `TimePeriod` chronologically. (A gap must exist between the two).
  - 
  -   - parameter period: The time period to compare to self
  - 
  -   - returns: True if self is after the given `TimePeriod`

### `shift(by:)`

``` swift
public mutating func shift(by timeInterval: TimeInterval) 
```

  - In place, shift the `TimePeriod` by a `TimeInterval`
  - 
  -   - parameter timeInterval: The time interval to shift the period by

### `shift(by:)`

``` swift
public mutating func shift(by chunk: TimeChunk) 
```

  - In place, shift the `TimePeriod` by a `TimeChunk`
  - 
  -   - parameter chunk: The time chunk to shift the period by

### `lengthen(by:at:)`

``` swift
public mutating func lengthen(by timeInterval: TimeInterval, at anchor: Anchor) 
```

  - In place, lengthen the `TimePeriod`, anchored at the beginning, end or center
  - 
  -   - parameter timeInterval: The time interval to lengthen the period by
  -   - parameter anchor: The anchor point from which to make the change

### `lengthen(by:at:)`

``` swift
public mutating func lengthen(by chunk: TimeChunk, at anchor: Anchor) 
```

  - In place, lengthen the `TimePeriod`, anchored at the beginning or end
  - 
  -   - parameter chunk: The time chunk to lengthen the period by
  -   - parameter anchor: The anchor point from which to make the change

### `shorten(by:at:)`

``` swift
public mutating func shorten(by timeInterval: TimeInterval, at anchor: Anchor) 
```

  - In place, shorten the `TimePeriod`, anchored at the beginning, end or center
  - 
  -   - parameter timeInterval: The time interval to shorten the period by
  -   - parameter anchor: The anchor point from which to make the change

### `shorten(by:at:)`

``` swift
public mutating func shorten(by chunk: TimeChunk, at anchor: Anchor) 
```

  - In place, shorten the `TimePeriod`, anchored at the beginning or end
  - 
  -   - parameter chunk: The time chunk to shorten the period by
  -   - parameter anchor: The anchor point from which to make the change

## Requirements

### beginning

``` swift
var beginning: Date? 
```

  - The start date for a TimePeriod representing the starting boundary of the time period

### end

``` swift
var end: Date? 
```

  - The end date for a TimePeriod representing the ending boundary of the time period
