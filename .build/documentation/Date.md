# Extensions on Date

## Initializers

### `init(year:month:day:hour:minute:second:)`

``` swift
public init(year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int) 
```

  - Init date with components.
  - 
  -   - parameter year: Year component of new date
  -   - parameter month: Month component of new date
  -   - parameter day: Day component of new date
  -   - parameter hour: Hour component of new date
  -   - parameter minute: Minute component of new date
  -   - parameter second: Second component of new date

### `init(year:month:day:)`

``` swift
public init(year: Int, month: Int, day: Int) 
```

  - Init date with components. Hour, minutes, and seconds set to zero.
  - 
  -   - parameter year: Year component of new date
  -   - parameter month: Month component of new date
  -   - parameter day: Day component of new date

### `init(dateString:format:timeZone:)`

``` swift
public init(dateString: String, format: String, timeZone: TimeZone) 
```

  - Init date from string, given a format string, according to Apple's date formatting guide, and time zone.
  - 
  -   - parameter dateString: Date in the formatting given by the format parameter
  -   - parameter format: Format style using Apple's date formatting guide
  -   - parameter timeZone: Time zone of date

### `init(dateString:format:)`

``` swift
public init (dateString: String, format: String) 
```

  - Init date from string, given a format string, according to Apple's date formatting guide.
  - Time Zone automatically selected as the current time zone.
  - 
  -   - parameter dateString: Date in the formatting given by the format parameter
  -   - parameter format: Format style using Apple's date formatting guide

## Properties

### `era`

``` swift
public var era: Int 
```

  - Convenience getter for the date's `era` component

### `year`

``` swift
public var year: Int 
```

  - Convenience getter for the date's `year` component

### `month`

``` swift
public var month: Int 
```

  - Convenience getter for the date's `month` component

### `week`

``` swift
public var week: Int 
```

  - Convenience getter for the date's `week` component

### `day`

``` swift
public var day: Int 
```

  - Convenience getter for the date's `day` component

### `hour`

``` swift
public var hour: Int 
```

  - Convenience getter for the date's `hour` component

### `minute`

``` swift
public var minute: Int 
```

  - Convenience getter for the date's `minute` component

### `second`

``` swift
public var second: Int 
```

  - Convenience getter for the date's `second` component

### `weekday`

``` swift
public var weekday: Int 
```

  - Convenience getter for the date's `weekday` component

### `weekdayOrdinal`

``` swift
public var weekdayOrdinal: Int 
```

  - Convenience getter for the date's `weekdayOrdinal` component

### `quarter`

``` swift
public var quarter: Int 
```

  - Convenience getter for the date's `quarter` component

### `weekOfMonth`

``` swift
public var weekOfMonth: Int 
```

  - Convenience getter for the date's `weekOfYear` component

### `weekOfYear`

``` swift
public var weekOfYear: Int 
```

  - Convenience getter for the date's `weekOfYear` component

### `yearForWeekOfYear`

``` swift
public var yearForWeekOfYear: Int 
```

  - Convenience getter for the date's `yearForWeekOfYear` component

### `daysInMonth`

``` swift
public var daysInMonth: Int 
```

  - Convenience getter for the date's `daysInMonth` component

### `isInLeapYear`

``` swift
public var isInLeapYear: Bool 
```

  - Determine if date is in a leap year

### `isToday`

``` swift
public var isToday: Bool 
```

  - Determine if date is within the current day

### `isTomorrow`

``` swift
public var isTomorrow: Bool 
```

  - Determine if date is within the day tomorrow

### `isYesterday`

``` swift
public var isYesterday: Bool 
```

  - Determine if date is within yesterday

### `isWeekend`

``` swift
public var isWeekend: Bool 
```

  - Determine if date is in a weekend

### `yearsUntil`

``` swift
public var yearsUntil: Int 
```

  - The number of years until the receiver's date (0 if the receiver is the same or
  - earlier than now).

### `monthsUntil`

``` swift
public var monthsUntil: Int 
```

  - The number of months until the receiver's date (0 if the receiver is the same or
  - earlier than now).

### `weeksUntil`

``` swift
public var weeksUntil: Int 
```

  - The number of weeks until the receiver's date (0 if the receiver is the same or
  - earlier than now).

### `daysUntil`

``` swift
public var daysUntil: Int 
```

  - The number of days until the receiver's date (0 if the receiver is the same or
  - earlier than now).

### `hoursUntil`

``` swift
public var hoursUntil: Int
```

  - The number of hours until the receiver's date (0 if the receiver is the same or
  - earlier than now).

### `minutesUntil`

``` swift
public var minutesUntil: Int
```

  - The number of minutes until the receiver's date (0 if the receiver is the same or
  - earlier than now).

### `secondsUntil`

``` swift
public var secondsUntil: Int
```

  - The number of seconds until the receiver's date (0 if the receiver is the same or
  - earlier than now).

### `yearsAgo`

``` swift
public var yearsAgo: Int 
```

  - The number of years the receiver's date is earlier than now (0 if the receiver is
  - the same or earlier than now).

### `monthsAgo`

``` swift
public var monthsAgo: Int 
```

  - The number of months the receiver's date is earlier than now (0 if the receiver is
  - the same or earlier than now).

### `weeksAgo`

``` swift
public var weeksAgo: Int 
```

  - The number of weeks the receiver's date is earlier than now (0 if the receiver is
  - the same or earlier than now).

### `daysAgo`

``` swift
public var daysAgo: Int 
```

  - The number of days the receiver's date is earlier than now (0 if the receiver is
  - the same or earlier than now).

### `hoursAgo`

``` swift
public var hoursAgo: Int 
```

  - The number of hours the receiver's date is earlier than now (0 if the receiver is
  - the same or earlier than now).

### `minutesAgo`

``` swift
public var minutesAgo: Int 
```

  - The number of minutes the receiver's date is earlier than now (0 if the receiver is
  - the same or earlier than now).

### `secondsAgo`

``` swift
public var secondsAgo: Int
```

  - The number of seconds the receiver's date is earlier than now (0 if the receiver is
  - the same or earlier than now).

### `timeAgoSinceNow`

``` swift
public var timeAgoSinceNow: String 
```

  - Returns a string with the most convenient unit of time representing
  - how far in the past that date is from now.
  - 
  -   - returns String - Formatted return string

### `shortTimeAgoSinceNow`

``` swift
public var shortTimeAgoSinceNow: String 
```

  - Returns a shortened string with the most convenient unit of time representing
  - how far in the past that date is from now.
  - 
  -   - returns String - Formatted return string

## Methods

### `format(with:timeZone:locale:)`

``` swift
public func format(with dateStyle: DateFormatter.Style, timeZone: TimeZone, locale: Locale) -> String 
```

  - Get string representation of date.
  - 
  -   - parameter dateStyle: The date style in which to represent the date
  -   - parameter timeZone: The time zone of the date
  -   - parameter locale: Encapsulates information about linguistic, cultural, and technological conventions and standards
  - 
  -   - returns: Represenation of the date (self) in the specified format

### `format(with:timeZone:)`

``` swift
public func format(with dateStyle: DateFormatter.Style, timeZone: TimeZone) -> String 
```

  - Get string representation of date. Locale is automatically selected as the current locale of the system.
  - 
  -   - parameter dateStyle: The date style in which to represent the date
  -   - parameter timeZone: The time zone of the date
  - 
  -   - returns String? - Represenation of the date (self) in the specified format

### `format(with:locale:)`

``` swift
public func format(with dateStyle: DateFormatter.Style, locale: Locale) -> String 
```

  - Get string representation of date.
  - Time zone is automatically selected as the current time zone of the system.
  - 
  -   - parameter dateStyle: The date style in which to represent the date
  -   - parameter locale: Encapsulates information about linguistic, cultural, and technological conventions and standards.
  - 
  -   - returns: Represenation of the date (self) in the specified format

### `format(with:)`

``` swift
public func format(with dateStyle: DateFormatter.Style) -> String 
```

  - Get string representation of date.
  - Locale and time zone are automatically selected as the current locale and time zone of the system.
  - 
  -   - parameter dateStyle: The date style in which to represent the date
  - 
  -   - returns: Represenation of the date (self) in the specified format

### `format(with:timeZone:locale:)`

``` swift
public func format(with dateFormat: String, timeZone: TimeZone, locale: Locale) -> String 
```

  - Get string representation of date.
  - 
  -   - parameter dateFormat: The date format string, according to Apple's date formatting guide in which to represent the date
  -   - parameter timeZone: The time zone of the date
  -   - parameter locale: Encapsulates information about linguistic, cultural, and technological conventions and standards
  - 
  -   - returns: Represenation of the date (self) in the specified format

### `format(with:timeZone:)`

``` swift
public func format(with dateFormat: String, timeZone: TimeZone) -> String 
```

  - Get string representation of date.
  - Locale is automatically selected as the current locale of the system.
  - 
  -   - parameter dateFormat: The date format string, according to Apple's date formatting guide in which to represent the date
  -   - parameter timeZone: The time zone of the date
  - 
  -   - returns: Representation of the date (self) in the specified format

### `format(with:locale:)`

``` swift
public func format(with dateFormat: String, locale: Locale) -> String 
```

  - Get string representation of date.
  - Time zone is automatically selected as the current time zone of the system.
  - 
  -   - parameter dateFormat: The date format string, according to Apple's date formatting guide in which to represent the date
  -   - parameter locale: Encapsulates information about linguistic, cultural, and technological conventions and standards
  - 
  -   - returns: Represenation of the date (self) in the specified format

### `format(with:)`

``` swift
public func format(with dateFormat: String) -> String 
```

  - Get string representation of date.
  - Locale and time zone are automatically selected as the current locale and time zone of the system.
  - 
  -   - parameter dateFormat: The date format string, according to Apple's date formatting guide in which to represent the date
  - 
  -   - returns: Represenation of the date (self) in the specified format

### `start(of:)`

``` swift
public func start(of component: Component) -> Date 
```

  - Return a date set to the start of a given component.
  - 
  -   - parameter component: The date component (second, minute, hour, day, month, or year)
  - 
  -   - returns: A date retaining the value of the given component and all larger components,
  - with all smaller components set to their minimum

### `end(of:)`

``` swift
public func end(of component: Component) -> Date 
```

  - Return a date set to the end of a given component.
  - 
  -   - parameter component: The date component (second, minute, hour, day, month, or year)
  - 
  -   - returns: A date retaining the value of the given component and all larger components,
  - with all smaller components set to their maximum

### `daysInMonth(date:)`

``` swift
public func daysInMonth(date: Date) -> Int 
```

### `add(_:)`

``` swift
public func add(_ chunk: TimeChunk) -> Date 
```

  - # Add (TimeChunk to Date)
  - Increase a date by the value of a given `TimeChunk`.
  - 
  -   - parameter chunk: The amount to increase the date by (ex. 2.days, 4.years, etc.)
  - 
  -   - returns: A date with components increased by the values of the
  - corresponding `TimeChunk` variables

### `subtract(_:)`

``` swift
public func subtract(_ chunk: TimeChunk) -> Date 
```

  - # Subtract (TimeChunk from Date)
  - Decrease a date by the value of a given `TimeChunk`.
  - 
  -   - parameter chunk: The amount to decrease the date by (ex. 2.days, 4.years, etc.)
  - 
  -   - returns: A date with components decreased by the values of the
  - corresponding `TimeChunk` variables

### `+`

``` swift
public static func +(leftAddend: Date, rightAddend: TimeChunk) -> Date 
```

  - Operator overload for adding a `TimeChunk` to a date.

### `-`

``` swift
public static func -(minuend: Date, subtrahend: TimeChunk) -> Date 
```

  - Operator overload for subtracting a `TimeChunk` from a date.

### `+`

``` swift
public static func +(leftAddend: Date, rightAddend: Int) -> Date 
```

  - Operator overload for adding a `TimeInterval` to a date.

### `-`

``` swift
public static func -(minuend: Date, subtrahend: Int) -> Date 
```

  - Operator overload for subtracting a `TimeInterval` from a date.

### `component(_:)`

``` swift
public func component(_ component: Calendar.Component) -> Int 
```

  - Convenient accessor of the date's `Calendar` components.
  - 
  -   - parameter component: The calendar component to access from the date
  - 
  -   - returns: The value of the component
  - 
### `ordinality(of:in:)`

``` swift
public func ordinality(of smaller: Calendar.Component, in larger: Calendar.Component) -> Int? 
```

  - Convenient accessor of the date's `Calendar` components ordinality.
  - 
  -   - parameter smaller: The smaller calendar component to access from the date
  -   - parameter larger: The larger calendar component to access from the date
  - 
  -   - returns: The ordinal number of a smaller calendar component within a specified larger calendar component
  - 
### `unit(of:in:)`

``` swift
public func unit(of smaller: Calendar.Component, in larger: Calendar.Component) -> Int? 
```

  - Use calendar components to determine how many units of a smaller component are inside 1 larger unit.
  - 
  - Ex. If used on a date in the month of February in a leap year (regardless of the day), the method would
  - return 29 days.
  - 
  -   - parameter smaller: The smaller calendar component to access from the date
  -   - parameter larger: The larger calendar component to access from the date
  - 
  -   - returns: The number of smaller units required to equal in 1 larger unit, given the date called on
  - 
### `year(_:)`

``` swift
public mutating func year(_ year: Int) 
```

  - Convenience setter for the date's `year` component

### `month(_:)`

``` swift
public mutating func month(_ month: Int) 
```

  - Convenience setter for the date's `month` component

### `day(_:)`

``` swift
public mutating func day(_ day: Int) 
```

  - Convenience setter for the date's `day` component

### `hour(_:)`

``` swift
public mutating func hour(_ hour: Int) 
```

  - Convenience setter for the date's `hour` component

### `minute(_:)`

``` swift
public mutating func minute(_ minute: Int) 
```

  - Convenience setter for the date's `minute` component

### `second(_:)`

``` swift
public mutating func second(_ second: Int) 
```

  - Convenience setter for the date's `second` component

### `chunkBetween(date:)`

``` swift
public func chunkBetween(date: Date) -> TimeChunk 
```

  - Given a date, returns a `TimeChunk` with components in their most natural form. Example:
  - 
  - ``` 
    ```
  - let formatter = DateFormatter()
  - formatter.dateFormat = "yyyy MM dd HH:mm:ss.SSS"
  - let birthday = formatter.date(from: "2015 11 24 14:50:12.000")\!
  - let age = birthday.chunkBetween(date: formatter.date(from: "2016 10 07 15:27:12.000")\!)
  - ``` 
    ```
  - 
  - The age variable will have a chunk of time with year, month, day, hour, minute,
  - and second components (note that we do not use weeks since they are not components
  - of `Calendar`). So if you just wanted the age in years, you could then say: age.years.
  - 
  - The chunk is calculated exactly as you'd say it in real life, always converting up
  - when a lower unit equals 1 of the unit above it. The above example returns
  - `TimeChunk(seconds: 0, minutes: 37, hours: 0, days: 13, weeks: 0, months: 10, years: 0)`.
  - 
  - Passing a future date returns a TimeChunk with all positive components and passing
  - a date in the past returns one with all negative components.
  - 
  -   - parameter date: The date of reference from the date called on
  - 
  -   - returns: A TimeChunk representing the time between the dates, in natural form

### `equals(_:)`

``` swift
public func equals(_ date: Date) -> Bool 
```

  - Returns a true if receiver is equal to provided comparison date, otherwise returns false
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: Bool representing comparison result

### `isLater(than:)`

``` swift
public func isLater(than date: Date) -> Bool 
```

  - Returns a true if receiver is later than provided comparison date, otherwise
  - returns false
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: Bool representing comparison result

### `isLaterThanOrEqual(to:)`

``` swift
public func isLaterThanOrEqual(to date: Date) -> Bool 
```

  - Returns a true if receiver is later than or equal to provided comparison date,
  - otherwise returns false
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: Bool representing comparison result

### `isEarlier(than:)`

``` swift
public func isEarlier(than date: Date) -> Bool 
```

  - Returns a true if receiver is earlier than provided comparison date, otherwise
  - returns false
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: Bool representing comparison result

### `isEarlierThanOrEqual(to:)`

``` swift
public func isEarlierThanOrEqual(to date: Date) -> Bool 
```

  - Returns a true if receiver is earlier than or equal to the provided comparison date,
  - otherwise returns false
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns:  Bool representing comparison result

### `isSameDay(date:)`

``` swift
public func isSameDay(date : Date ) -> Bool 
```

  - Returns whether two dates fall on the same day.
  - 
  -   - parameter date: Date to compare with sender
  - 
  -   - returns: True if both paramter dates fall on the same day, false otherwise

### `isSameDay(date:as:)`

``` swift
public static func isSameDay(date: Date, as compareDate: Date) -> Bool 
```

  - Returns whether two dates fall on the same day.
  - 
  -   - parameter date: First date to compare
  -   - parameter compareDate: Second date to compare
  - 
  -   - returns: True if both paramter dates fall on the same day, false otherwise

### `years(from:)`

``` swift
public func years(from date: Date) -> Int 
```

  - Returns an Int representing the amount of time in years between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - Uses the default Gregorian calendar
  - 
  -   - parameter date: The provided date for comparison
  - 
  -   - returns: The years between receiver and provided date

### `months(from:)`

``` swift
public func months(from date: Date) -> Int 
```

  - Returns an Int representing the amount of time in months between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - Uses the default Gregorian calendar
  - 
  -   - parameter date: The provided date for comparison
  - 
  -   - returns: The years between receiver and provided date

### `weeks(from:)`

``` swift
public func weeks(from date: Date) -> Int 
```

  - Returns an Int representing the amount of time in weeks between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - Uses the default Gregorian calendar
  - 
  -   - parameter date: The provided date for comparison
  - 
  -   - returns: The weeks between receiver and provided date

### `days(from:)`

``` swift
public func days(from date: Date) -> Int 
```

  - Returns an Int representing the amount of time in days between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - Uses the default Gregorian calendar
  - 
  -   - parameter date: The provided date for comparison
  - 
  -   - returns: The days between receiver and provided date

### `hours(from:)`

``` swift
public func hours(from date: Date) -> Int 
```

  - Returns an Int representing the amount of time in hours between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - 
  -   - parameter date: The provided date for comparison
  - 
  -   - returns: The hours between receiver and provided date

### `minutes(from:)`

``` swift
public func minutes(from date: Date) -> Int 
```

  - Returns an Int representing the amount of time in minutes between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - 
  -   - parameter date: The provided date for comparison
  - 
  -   - returns: The minutes between receiver and provided date

### `seconds(from:)`

``` swift
public func seconds(from date: Date) -> Int 
```

  - Returns an Int representing the amount of time in seconds between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - 
  -   - parameter date: The provided date for comparison
  - 
  -   - returns: The seconds between receiver and provided date

### `years(from:calendar:)`

``` swift
public func years(from date: Date, calendar: Calendar?) -> Int 
```

  - Returns an Int representing the amount of time in years between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - 
  -   - parameter date: The provided date for comparison
  -   - parameter calendar: The calendar to be used in the calculation
  - 
  -   - returns: The years between receiver and provided date

### `months(from:calendar:)`

``` swift
public func months(from date: Date, calendar: Calendar?) -> Int
```

  - Returns an Int representing the amount of time in months between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - 
  -   - parameter date: The provided date for comparison
  -   - parameter calendar: The calendar to be used in the calculation
  - 
  -   - returns: The months between receiver and provided date

### `weeks(from:calendar:)`

``` swift
public func weeks(from date: Date, calendar: Calendar?) -> Int
```

  - Returns an Int representing the amount of time in weeks between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - 
  -   - parameter date: The provided date for comparison
  -   - parameter calendar: The calendar to be used in the calculation
  - 
  -   - returns: The weeks between receiver and provided date

### `days(from:calendar:)`

``` swift
public func days(from date: Date, calendar: Calendar?) -> Int 
```

  - Returns an Int representing the amount of time in days between the receiver and
  - the provided date.
  - 
  - If the receiver is earlier than the provided date, the returned value will be negative.
  - 
  -   - parameter date: The provided date for comparison
  -   - parameter calendar: The calendar to be used in the calculation
  - 
  -   - returns: The days between receiver and provided date

### `yearsEarlier(than:)`

``` swift
public func yearsEarlier(than date: Date) -> Int 
```

  - Returns the number of years the receiver's date is earlier than the provided
  - comparison date, 0 if the receiver's date is later than or equal to the provided comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of years

### `monthsEarlier(than:)`

``` swift
public func monthsEarlier(than date: Date) -> Int 
```

  - Returns the number of months the receiver's date is earlier than the provided
  - comparison date, 0 if the receiver's date is later than or equal to the provided comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of months

### `weeksEarlier(than:)`

``` swift
public func weeksEarlier(than date: Date) -> Int 
```

  - Returns the number of weeks the receiver's date is earlier than the provided
  - comparison date, 0 if the receiver's date is later than or equal to the provided comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of weeks

### `daysEarlier(than:)`

``` swift
public func daysEarlier(than date: Date) -> Int 
```

  - Returns the number of days the receiver's date is earlier than the provided
  - comparison date, 0 if the receiver's date is later than or equal to the provided comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of days

### `hoursEarlier(than:)`

``` swift
public func hoursEarlier(than date: Date) -> Int 
```

  - Returns the number of hours the receiver's date is earlier than the provided
  - comparison date, 0 if the receiver's date is later than or equal to the provided comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of hours

### `minutesEarlier(than:)`

``` swift
public func minutesEarlier(than date: Date) -> Int 
```

  - Returns the number of minutes the receiver's date is earlier than the provided
  - comparison date, 0 if the receiver's date is later than or equal to the provided comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of minutes

### `secondsEarlier(than:)`

``` swift
public func secondsEarlier(than date: Date) -> Int 
```

  - Returns the number of seconds the receiver's date is earlier than the provided
  - comparison date, 0 if the receiver's date is later than or equal to the provided comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of seconds

### `yearsLater(than:)`

``` swift
public func yearsLater(than date: Date) -> Int 
```

  - Returns the number of years the receiver's date is later than the provided
  - comparison date, 0 if the receiver's date is earlier than or equal to the provided
  - comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of years

### `monthsLater(than:)`

``` swift
public func monthsLater(than date: Date) -> Int 
```

  - Returns the number of months the receiver's date is later than the provided
  - comparison date, 0 if the receiver's date is earlier than or equal to the provided
  - comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of months

### `weeksLater(than:)`

``` swift
public func weeksLater(than date: Date) -> Int 
```

  - Returns the number of weeks the receiver's date is later than the provided
  - comparison date, 0 if the receiver's date is earlier than or equal to the provided
  - comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of weeks

### `daysLater(than:)`

``` swift
public func daysLater(than date: Date) -> Int 
```

  - Returns the number of days the receiver's date is later than the provided
  - comparison date, 0 if the receiver's date is earlier than or equal to the provided
  - comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of days

### `hoursLater(than:)`

``` swift
public func hoursLater(than date: Date) -> Int 
```

  - Returns the number of hours the receiver's date is later than the provided
  - comparison date, 0 if the receiver's date is earlier than or equal to the provided
  - comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of hours

### `minutesLater(than:)`

``` swift
public func minutesLater(than date: Date) -> Int 
```

  - Returns the number of minutes the receiver's date is later than the provided
  - comparison date, 0 if the receiver's date is earlier than or equal to the provided
  - comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of minutes

### `secondsLater(than:)`

``` swift
public func secondsLater(than date: Date) -> Int 
```

  - Returns the number of seconds the receiver's date is later than the provided
  - comparison date, 0 if the receiver's date is earlier than or equal to the provided
  - comparison date.
  - 
  -   - parameter date: Provided date for comparison
  - 
  -   - returns: The number of seconds

### `timeAgo(since:)`

``` swift
public static func timeAgo(since date:Date) -> String
```

  - Takes in a date and returns a string with the most convenient unit of time representing
  - how far in the past that date is from now.
  - 
  -   - parameter date: Date to be measured from now
  - 
  -   - returns String - Formatted return string

### `shortTimeAgo(since:)`

``` swift
public static func shortTimeAgo(since date:Date) -> String 
```

  - Takes in a date and returns a shortened string with the most convenient unit of time representing
  - how far in the past that date is from now.
  - 
  -   - parameter date: Date to be measured from now
  - 
  -   - returns String - Formatted return string

### `timeAgo(since:numericDates:numericTimes:)`

``` swift
public func timeAgo(since date:Date, numericDates: Bool = false, numericTimes: Bool = false) -> String 
```

### `shortTimeAgo(since:)`

``` swift
public func shortTimeAgo(since date:Date) -> String 
```

### `earlierDate(_:)`

``` swift
public func earlierDate(_ date:Date) -> Date
```

  - Return the earlier of two dates, between self and a given date.
  - 
  -   - parameter date: The date to compare to self
  - 
  -   - returns: The date that is earlier

### `laterDate(_:)`

``` swift
public func laterDate(_ date:Date) -> Date
```

  - Return the later of two dates, between self and a given date.
  - 
  -   - parameter date: The date to compare to self
  - 
  -   - returns: The date that is later
