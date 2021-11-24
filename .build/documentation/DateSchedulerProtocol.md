# DateSchedulerProtocol

A particular kind of scheduler that supports enqueuing actions at future
dates.

``` swift
public protocol DateSchedulerProtocol: SchedulerProtocol 
```

## Inheritance

[`SchedulerProtocol`](/SchedulerProtocol)

## Default Implementations

### `schedule(after:interval:action:)`

``` swift
@available(*, unavailable, message:"schedule(after:interval:action:) now uses DispatchTimeInterval")
	public func schedule(after date: Date, interval: TimeInterval, action: @escaping () -> Void) -> Disposable? 
```

## Requirements

### currentDate

The current date, as determined by this scheduler.

``` swift
var currentDate: Date 
```

This can be implemented to deterministically return a known date (e.g.,
for testing purposes).

### schedule(after:​action:​)

Schedules an action for execution at or after the given date.

``` swift
@discardableResult
	func schedule(after date: Date, action: @escaping () -> Void) -> Disposable?
```

#### Parameters

  - date: Starting time.
  - action: Closure of the action to perform.

#### Returns

Optional `Disposable` that can be used to cancel the work before it begins.

### schedule(after:​interval:​leeway:​action:​)

Schedules a recurring action at the given interval, beginning at the
given date.

``` swift
@discardableResult
	func schedule(after date: Date, interval: DispatchTimeInterval, leeway: DispatchTimeInterval, action: @escaping () -> Void) -> Disposable?
```

> 

#### Parameters

  - date: Starting time.
  - repeatingEvery: Repetition interval.
  - withLeeway: Some delta for repetition.
  - action: Closure of the action to perform.

#### Returns

Optional `Disposable` that can be used to cancel the work before it begins.
