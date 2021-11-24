# LoggingEvent.Signal

``` swift
public enum Signal: String 
```

## Inheritance

`String`

## Enumeration Cases

### `disposed`

``` swift
case value, completed, failed, terminated, disposed, interrupted
```

### `terminated`

``` swift
case value, completed, failed, terminated, disposed, interrupted
```

### `interrupted`

``` swift
case value, completed, failed, terminated, disposed, interrupted
```

### `completed`

``` swift
case value, completed, failed, terminated, disposed, interrupted
```

### `value`

``` swift
case value, completed, failed, terminated, disposed, interrupted
```

### `failed`

``` swift
case value, completed, failed, terminated, disposed, interrupted
```

## Properties

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
public static let allEvents: Set<Signal> = [
			.value, .completed, .failed, .terminated, .disposed, .interrupted,
		]
```
