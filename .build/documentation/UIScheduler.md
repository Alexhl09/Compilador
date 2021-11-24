# UIScheduler

A scheduler that performs all work on the main queue, as soon as possible.

``` swift
public final class UIScheduler: SchedulerProtocol 
```

If the caller is already running on the main queue when an action is
scheduled, it may be run synchronously. However, ordering between actions
will always be preserved.

## Inheritance

[`SchedulerProtocol`](/SchedulerProtocol)

## Initializers

### `init()`

Initializes `UIScheduler`

``` swift
public init() 
```

## Methods

### `schedule(_:)`

Queues an action to be performed on main queue. If the action is called
on the main thread and no work is queued, no scheduling takes place and
the action is called instantly.

``` swift
@discardableResult
	public func schedule(_ action: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - action: Closure of the action to perform on the main thread.

#### Returns

`Disposable` that can be used to cancel the work before it begins.
