# TimePeriod

``` swift
open class TimePeriod: TimePeriodProtocol 
```

  - In DateTools, time periods are represented by the case TimePeriod class
  - and come with a suite of initializaiton, manipulation, and comparison methods
  - to make working with them a breeze.
  - 
  - [Visit our github page](https://github.com/MatthewYork/DateTools#time-periods) for more information.

## Inheritance

[`TimePeriodProtocol`](/TimePeriodProtocol)

## Initializers

### `init()`

``` swift
public init() 
```

### `init(beginning:end:)`

``` swift
public init(beginning: Date?, end: Date?) 
```

### `init(beginning:duration:)`

``` swift
public init(beginning: Date, duration: TimeInterval) 
```

### `init(end:duration:)`

``` swift
public init(end: Date, duration: TimeInterval) 
```

### `init(beginning:chunk:)`

``` swift
public init(beginning: Date, chunk: TimeChunk) 
```

### `init(end:chunk:)`

``` swift
public init(end: Date, chunk: TimeChunk) 
```

### `init(chunk:)`

``` swift
public init(chunk: TimeChunk) 
```

## Properties

### `beginning`

``` swift
public var beginning: Date?
```

  - The start date for a TimePeriod representing the starting boundary of the time period

### `end`

``` swift
public var end: Date?
```

  - The end date for a TimePeriod representing the ending boundary of the time period

## Methods

### `shifted(by:)`

``` swift
public func shifted(by timeInterval: TimeInterval) -> TimePeriod 
```

  - Shift the `TimePeriod` by a `TimeInterval`
  - 
  -   - parameter timeInterval: The time interval to shift the period by
  - 
  -   - returns: The new, shifted `TimePeriod`

### `shifted(by:)`

``` swift
public func shifted(by chunk: TimeChunk) -> TimePeriod 
```

  - Shift the `TimePeriod` by a `TimeChunk`
  - 
  -   - parameter chunk: The time chunk to shift the period by
  - 
  -   - returns: The new, shifted `TimePeriod`

### `lengthened(by:at:)`

``` swift
public func lengthened(by timeInterval: TimeInterval, at anchor: Anchor) -> TimePeriod 
```

  - Lengthen the `TimePeriod` by a `TimeInterval`
  - 
  -   - parameter timeInterval: The time interval to lengthen the period by
  -   - parameter anchor: The anchor point from which to make the change
  - 
  -   - returns: The new, lengthened `TimePeriod`

### `lengthened(by:at:)`

``` swift
public func lengthened(by chunk: TimeChunk, at anchor: Anchor) -> TimePeriod 
```

  - Lengthen the `TimePeriod` by a `TimeChunk`
  - 
  -   - parameter chunk: The time chunk to lengthen the period by
  -   - parameter anchor: The anchor point from which to make the change
  - 
  -   - returns: The new, lengthened `TimePeriod`

### `shortened(by:at:)`

``` swift
public func shortened(by timeInterval: TimeInterval, at anchor: Anchor) -> TimePeriod 
```

  - Shorten the `TimePeriod` by a `TimeInterval`
  - 
  -   - parameter timeInterval: The time interval to shorten the period by
  -   - parameter anchor: The anchor point from which to make the change
  - 
  -   - returns: The new, shortened `TimePeriod`

### `shortened(by:at:)`

``` swift
public func shortened(by chunk: TimeChunk, at anchor: Anchor) -> TimePeriod 
```

  - Shorten the `TimePeriod` by a `TimeChunk`
  - 
  -   - parameter chunk: The time chunk to shorten the period by
  -   - parameter anchor: The anchor point from which to make the change
  - 
  -   - returns: The new, shortened `TimePeriod`

## Operators

### `==`

``` swift
public static func ==(leftAddend: TimePeriod, rightAddend: TimePeriod) -> Bool 
```

  - Operator overload for checking if two `TimePeriod`s are equal

### `+`

``` swift
public static func +(leftAddend: TimePeriod, rightAddend: TimeInterval) -> TimePeriod 
```

  - Operator overload for lengthening a `TimePeriod` by a `TimeInterval`

### `+`

``` swift
public static func +(leftAddend: TimePeriod, rightAddend: TimeChunk) -> TimePeriod 
```

  - Operator overload for lengthening a `TimePeriod` by a `TimeChunk`

### `-`

``` swift
public static func -(minuend: TimePeriod, subtrahend: TimeInterval) -> TimePeriod 
```

  - Operator overload for shortening a `TimePeriod` by a `TimeInterval`

### `-`

``` swift
public static func -(minuend: TimePeriod, subtrahend: TimeChunk) -> TimePeriod 
```

  - Operator overload for shortening a `TimePeriod` by a `TimeChunk`

### `==`

``` swift
public static func ==(left: TimePeriod, right: TimePeriodProtocol) -> Bool 
```

  - Operator overload for checking if a `TimePeriod` is equal to a `TimePeriodProtocol`
