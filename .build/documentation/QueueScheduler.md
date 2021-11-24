# QueueScheduler

A scheduler backed by a serial GCD queue.

``` swift
public final class QueueScheduler: DateSchedulerProtocol 
```

## Inheritance

[`DateSchedulerProtocol`](/DateSchedulerProtocol)

## Initializers

### `init(queue:name:)`

Initializes a scheduler that will target the given queue with its
work.

``` swift
@available(OSX, deprecated:10.10, obsoleted:10.11, message:"Use init(qos:name:targeting:) instead")
	@available(iOS, deprecated:8.0, obsoleted:9.0, message:"Use init(qos:name:targeting:) instead.")
	public convenience init(queue: DispatchQueue, name: String = "org.reactivecocoa.ReactiveSwift.QueueScheduler") 
```

> 

> 

### `init(qos:name:targeting:)`

Initializes a scheduler that creates a new serial queue with the
given quality of service class.

``` swift
@available(OSX 10.10, *)
	public convenience init(
		qos: DispatchQoS = .default,
		name: String = "org.reactivecocoa.ReactiveSwift.QueueScheduler",
		targeting targetQueue: DispatchQueue? = nil
	) 
```

#### Parameters

  - qos: Dispatch queue's QoS value.
  - name: Name for the queue in the form of reverse domain.
  - targeting: (Optional) The queue on which this scheduler's work is targeted

## Properties

### `mainQueueScheduler`

``` swift
@available(*, unavailable, renamed:"main")
	public static var mainQueueScheduler: QueueScheduler 
```

### `main`

A singleton `QueueScheduler` that always targets the main thread's GCD
queue.

``` swift
public static let main 
```

> 

### `currentDate`

``` swift
public var currentDate: Date 
```

### `queue`

``` swift
public let queue: DispatchQueue
```

## Methods

### `schedule(_:)`

Schedules action for dispatch on internal queue

``` swift
@discardableResult
	public func schedule(_ action: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - action: Closure of the action to schedule.

#### Returns

`Disposable` that can be used to cancel the work before it begins.

### `schedule(after:action:)`

Schedules an action for execution at or after the given date.

``` swift
@discardableResult
	public func schedule(after date: Date, action: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - date: Starting time.
  - action: Closure of the action to perform.

#### Returns

Optional `Disposable` that can be used to cancel the work before it begins.

### `schedule(after:interval:action:)`

Schedules a recurring action at the given interval and beginning at the
given start time. A reasonable default timer interval leeway is
provided.

``` swift
@discardableResult
	public func schedule(after date: Date, interval: DispatchTimeInterval, action: @escaping () -> Void) -> Disposable? 
```

> 

#### Parameters

  - date: Date to schedule the first action for.
  - repeatingEvery: Repetition interval.
  - action: Closure of the action to repeat.

#### Returns

Optional disposable that can be used to cancel the work before it begins.

### `schedule(after:interval:leeway:action:)`

Schedules a recurring action at the given interval with provided leeway,
beginning at the given start time.

``` swift
@discardableResult
	public func schedule(after date: Date, interval: DispatchTimeInterval, leeway: DispatchTimeInterval, action: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - date: Date to schedule the first action for.
  - repeatingEvery: Repetition interval.
  - leeway: Some delta for repetition interval.
  - action: Closure of the action to repeat.

#### Returns

Optional `Disposable` that can be used to cancel the work before it begins.
