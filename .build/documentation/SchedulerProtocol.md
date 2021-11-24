# SchedulerProtocol

Represents a serial queue of work items.

``` swift
public protocol SchedulerProtocol 
```

## Requirements

### schedule(\_:​)

Enqueues an action on the scheduler.

``` swift
@discardableResult
	func schedule(_ action: @escaping () -> Void) -> Disposable?
```

When the work is executed depends on the scheduler in use.

#### Returns

Optional `Disposable` that can be used to cancel the work before it begins.
