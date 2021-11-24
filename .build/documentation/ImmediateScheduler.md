# ImmediateScheduler

A scheduler that performs all work synchronously.

``` swift
public final class ImmediateScheduler: SchedulerProtocol 
```

## Inheritance

[`SchedulerProtocol`](/SchedulerProtocol)

## Initializers

### `init()`

``` swift
public init() 
```

## Methods

### `schedule(_:)`

Immediately calls passed in `action`.

``` swift
@discardableResult
	public func schedule(_ action: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - action: Closure of the action to perform.

#### Returns

`nil`.
