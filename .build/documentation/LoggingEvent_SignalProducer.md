# LoggingEvent.SignalProducer

``` swift
public enum SignalProducer: String 
```

## Inheritance

`String`

## Enumeration Cases

### `failed`

``` swift
case starting, started, value, completed, failed, terminated, disposed, interrupted
```

### `started`

``` swift
case starting, started, value, completed, failed, terminated, disposed, interrupted
```

### `disposed`

``` swift
case starting, started, value, completed, failed, terminated, disposed, interrupted
```

### `starting`

``` swift
case starting, started, value, completed, failed, terminated, disposed, interrupted
```

### `interrupted`

``` swift
case starting, started, value, completed, failed, terminated, disposed, interrupted
```

### `terminated`

``` swift
case starting, started, value, completed, failed, terminated, disposed, interrupted
```

### `completed`

``` swift
case starting, started, value, completed, failed, terminated, disposed, interrupted
```

### `value`

``` swift
case starting, started, value, completed, failed, terminated, disposed, interrupted
```

## Properties

### `Started`

``` swift
@available(*, unavailable, renamed:"started")
	public static var Started: LoggingEvent.Signal 
```

### `Next`

``` swift
@available(*, unavailable, renamed:"next")
	public static var Next: LoggingEvent.Signal 
```

### `Completed`

``` swift
@available(*, unavailable, renamed:"completed")
	public static var Completed: LoggingEvent.Signal 
```

### `Failed`

``` swift
@available(*, unavailable, renamed:"failed")
	public static var Failed: LoggingEvent.Signal 
```

### `Terminated`

``` swift
@available(*, unavailable, renamed:"terminated")
	public static var Terminated: LoggingEvent.Signal 
```

### `Disposed`

``` swift
@available(*, unavailable, renamed:"disposed")
	public static var Disposed: LoggingEvent.Signal 
```

### `Interrupted`

``` swift
@available(*, unavailable, renamed:"interrupted")
	public static var Interrupted: LoggingEvent.Signal 
```

### `allEvents`

``` swift
public static let allEvents: Set<SignalProducer> = [
			.starting, .started, .value, .completed, .failed, .terminated, .disposed, .interrupted,
		]
```
