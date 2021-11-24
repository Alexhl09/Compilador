# TimeChunk

``` swift
public struct TimeChunk 
```

  - TimeChunk represents an abstract collection of `DateComponent`s intended for use in date manipulation. A `TimeChunk` differs from a
  - TimeInterval in that the former depends on the `Calendar` class (and takes into account daylight savings, leap year, etc.) while the
  - latter depends on hard, second based adjustments that are independent from calendar constructs.
  - 
  - In essence, TimeChunk is meant to be a thin, more flexible layer over the `Calender` and `DateComponent` classes for ease of use.
  - `TimeChunk`s may be created either by calling the provided initializer or shorthand like `2.days`. TimeChunks are manipulable and combine
  - using basic arithmetic operators like + and -.
  - 
  - For more information about the utility of TimeChunks in relation to Dates, see the `Date+Manipulations` class.

## Initializers

### `init()`

``` swift
public init() 
```

### `init(seconds:minutes:hours:days:weeks:months:years:)`

``` swift
public init(seconds: Int, minutes: Int, hours: Int, days: Int, weeks: Int, months: Int, years: Int) 
```

## Properties

### `seconds`

``` swift
public var seconds = 0
```

### `minutes`

``` swift
public var minutes = 0
```

### `hours`

``` swift
public var hours = 0
```

### `days`

``` swift
public var days = 0
```

### `weeks`

``` swift
public var weeks = 0
```

### `months`

``` swift
public var months = 0
```

### `years`

``` swift
public var years = 0
```

### `earlier`

``` swift
public var earlier: Date 
```

  - Returns the current date decreased by the amount in self

### `later`

``` swift
public var later: Date 
```

  - Returns the current date increased by the amount in self

## Methods

### `equals(chunk:)`

``` swift
public func equals(chunk: TimeChunk) -> Bool 
```

  - Check if two `TimeChunk`s are equal.
  - 
  -   - parameter chunk: `TimeChunk` to compare with self
  - 
  -   - returns: If all components in both `TimeChunk`s are equal

### `to(_:)`

``` swift
public func to(_ unit: TimeUnits) -> Int 
```

  - Generic conversion method. Years are taken to mean
  - 365 days. This method should not be used for accurate
  - date operations. Ex. 456.days.to(.years) will return 1.
  - 
  - \! Months are not supported for conversions. They are not a
  - well defined unit of time without the context of a calendar. \!

### `earlier(than:)`

``` swift
public func earlier(than date: Date) -> Date 
```

  - Returns the given date decreased by the amount in self.
  - 
  -   - parameter date: The date to decrease
  - 
  -   - returns: A new date with components decreased according to the variables of self

### `later(than:)`

``` swift
public func later(than date: Date) -> Date 
```

  - Returns the given date increased by the amount in self.
  - 
  -   - parameter date: The date to increase
  - 
  -   - returns: A new date with components increased according to the variables of self

### `lengthened(by:)`

``` swift
public func lengthened(by chunk: TimeChunk) -> TimeChunk 
```

  - Increase the variables of self (`TimeChunk`) by the variables of the given `TimeChunk`.
  - 
  -   - parameter chunk: The `TimeChunk` to increase self by
  - 
  -   - returns: The `TimeChunk` with variables increased

### `shortened(by:)`

``` swift
public func shortened(by chunk: TimeChunk) -> TimeChunk 
```

  - Decrease the variables of self (`TimeChunk`) by the variables of the given `TimeChunk`.
  - 
  -   - parameter chunk: The `TimeChunk` to decrease self by
  - 
  -   - returns: The `TimeChunk` with variables decreased

### `lengthen(by:)`

``` swift
public mutating func lengthen(by chunk: TimeChunk) 
```

  - In place, increase the variables of self (`TimeChunk`) by the variables of the given `TimeChunk`.
  - 
  -   - parameter chunk: The `TimeChunk` to increase self by

### `shorten(by:)`

``` swift
public mutating func shorten(by chunk: TimeChunk) 
```

  - In place, decrease the variables of self (`TimeChunk`) by the variables of the given `TimeChunk`.
  - 
  -   - parameter chunk: The `TimeChunk` to decrease self by

## Operators

### `+`

``` swift
public static func +(leftAddend: TimeChunk, rightAddend: TimeChunk) -> TimeChunk 
```

  - Operator overload for adding two `TimeChunk`s

### `-`

``` swift
public static func -(minuend: TimeChunk, subtrahend: TimeChunk) -> TimeChunk 
```

  - Operator overload for subtracting two `TimeChunk`s

### `==`

``` swift
public static func ==(left: TimeChunk, right: TimeChunk) -> Bool 
```

  - Operator overload for checking if two `TimeChunk`s are equal

### `-`

``` swift
public static prefix func -(chunk: TimeChunk) -> TimeChunk 
```

  - Operator overload for inverting (negating all variables) a `TimeChunk`
