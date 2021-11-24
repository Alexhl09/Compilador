# Throttle

A task scheduler that throttles execution within a given time interval.

``` swift
public class Throttle 
```

Schedule blocks of work with `schedule(block:)` and `Throttle` will
execute only the latest scheduled task in the last amount of seconds
you set via `init(interval:)`.

## Initializers

### `init(interval:)`

Creates a new throttle that performs work after waiting the given timeout interval.

``` swift
public init(interval: DispatchTimeInterval) 
```

#### Parameters

  - interval: The time period to wait before performing work.

## Methods

### `schedule(block:)`

Schedule a block for execution.

``` swift
public func schedule(block: @escaping ()->Void) 
```

Scheduling a `block`, executes it after the pre-set interval of time for the current `Throttle` instance.
If you schedule a new block before the throttle interval has passed,
the previous block is canceled in favor of the latest one.
