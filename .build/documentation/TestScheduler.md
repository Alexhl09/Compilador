# TestScheduler

A scheduler that implements virtualized time, for use in testing.

``` swift
public final class TestScheduler: DateSchedulerProtocol 
```

## Inheritance

[`DateSchedulerProtocol`](/DateSchedulerProtocol)

## Initializers

### `init(startDate:)`

Initializes a TestScheduler with the given start date.

``` swift
public init(startDate: Date = Date(timeIntervalSinceReferenceDate: 0)) 
```

#### Parameters

  - startDate: The start date of the scheduler.

## Properties

### `currentDate`

The virtual date that the scheduler is currently at.

``` swift
public var currentDate: Date 
```

## Methods

### `advanceByInterval(_:)`

``` swift
@available(*, unavailable, renamed:"advance(by:)")
	public func advanceByInterval(_ interval: TimeInterval) 
```

### `advanceToDate(_:)`

``` swift
@available(*, unavailable, renamed:"advance(to:)")
	public func advanceToDate(_ date: Date) 
```

### `advance(by:)`

``` swift
@available(*, unavailable, message:"advance(by:) now uses DispatchTimeInterval")
	public func advance(by interval: TimeInterval) 
```

### `rewind(by:)`

``` swift
@available(*, unavailable, message:"rewind(by:) now uses DispatchTimeInterval")
	public func rewind(by interval: TimeInterval) 
```

### `schedule(_:)`

Enqueues an action on the scheduler.

``` swift
@discardableResult
	public func schedule(_ action: @escaping () -> Void) -> Disposable? 
```

> 

#### Parameters

  - action: An action that will be performed on scheduler's `currentDate`.

#### Returns

Optional `Disposable` that can be used to cancel the work before it begins.

### `schedule(after:action:)`

Schedules an action for execution at or after the given date.

``` swift
@discardableResult
	public func schedule(after delay: DispatchTimeInterval, action: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - date: Starting date.
  - action: Closure of the action to perform.

#### Returns

Optional disposable that can be used to cancel the work before it begins.

### `schedule(after:action:)`

``` swift
@discardableResult
	public func schedule(after date: Date, action: @escaping () -> Void) -> Disposable? 
```

### `schedule(after:interval:leeway:action:)`

Schedules a recurring action at the given interval, beginning at the
given interval (counted from `currentDate`).

``` swift
@discardableResult
	public func schedule(after delay: DispatchTimeInterval, interval: DispatchTimeInterval, leeway: DispatchTimeInterval = .seconds(0), action: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - interval: Interval to add to `currentDate`.
  - repeatingEvery: Repetition interval.
  - leeway: Some delta for repetition interval.
  - action: Closure of the action to repeat.

#### Returns

Optional `Disposable` that can be used to cancel the work before it begins.

### `schedule(after:interval:leeway:action:)`

Schedules a recurring action at the given interval with
provided leeway, beginning at the given start time.

``` swift
public func schedule(after date: Date, interval: DispatchTimeInterval, leeway: DispatchTimeInterval = .seconds(0), action: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - date: Date to schedule the first action for.
  - repeatingEvery: Repetition interval.
  - leeway: Some delta for repetition interval.
  - action: Closure of the action to repeat.

#### Returns

Optional `Disposable` that can be used to cancel the work before it begins.

### `advance()`

Advances the virtualized clock by an extremely tiny interval, dequeuing
and executing any actions along the way.

``` swift
public func advance() 
```

This is intended to be used as a way to execute actions that have been
scheduled to run as soon as possible.

### `advance(by:)`

Advances the virtualized clock by the given interval, dequeuing and
executing any actions along the way.

``` swift
public func advance(by interval: DispatchTimeInterval) 
```

#### Parameters

  - interval: Interval by which the current date will be advanced.

### `advance(to:)`

Advances the virtualized clock to the given future date, dequeuing and
executing any actions up until that point.

``` swift
public func advance(to newDate: Date) 
```

#### Parameters

  - newDate: Future date to which the virtual clock will be advanced.

### `run()`

Dequeues and executes all scheduled actions, leaving the scheduler's
date at `NSDate.distantFuture()`.

``` swift
public func run() 
```

### `rewind(by:)`

Rewinds the virtualized clock by the given interval.
This simulates that user changes device date.

``` swift
public func rewind(by interval: DispatchTimeInterval) 
```

#### Parameters

  - interval: Interval by which the current date will be retreated.
