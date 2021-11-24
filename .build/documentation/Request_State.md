# Request.State

State of the `Request`, with managed transitions between states set when calling `resume()`, `suspend()`, or
`cancel()` on the `Request`.

``` swift
public enum State 
```

## Enumeration Cases

### `initialized`

Initial state of the `Request`.

``` swift
case initialized
```

### `resumed`

`State` set when `resume()` is called. Any tasks created for the `Request` will have `resume()` called on
them in this state.

``` swift
case resumed
```

### `suspended`

`State` set when `suspend()` is called. Any tasks created for the `Request` will have `suspend()` called on
them in this state.

``` swift
case suspended
```

### `cancelled`

`State` set when `cancel()` is called. Any tasks created for the `Request` will have `cancel()` called on
them. Unlike `resumed` or `suspended`, once in the `cancelled` state, the `Request` can no longer transition
to any other state.

``` swift
case cancelled
```

### `finished`

`State` set when all response serialization completion closures have been cleared on the `Request` and
enqueued on their respective queues.

``` swift
case finished
```

### `initialized`

Initial state of the `Request`.

``` swift
case initialized
```

### `resumed`

`State` set when `resume()` is called. Any tasks created for the `Request` will have `resume()` called on
them in this state.

``` swift
case resumed
```

### `suspended`

`State` set when `suspend()` is called. Any tasks created for the `Request` will have `suspend()` called on
them in this state.

``` swift
case suspended
```

### `cancelled`

`State` set when `cancel()` is called. Any tasks created for the `Request` will have `cancel()` called on
them. Unlike `resumed` or `suspended`, once in the `cancelled` state, the `Request` can no longer transition
to any other state.

``` swift
case cancelled
```

### `finished`

`State` set when all response serialization completion closures have been cleared on the `Request` and
enqueued on their respective queues.

``` swift
case finished
```

### `initialized`

Initial state of the `Request`.

``` swift
case initialized
```

### `resumed`

`State` set when `resume()` is called. Any tasks created for the `Request` will have `resume()` called on
them in this state.

``` swift
case resumed
```

### `suspended`

`State` set when `suspend()` is called. Any tasks created for the `Request` will have `suspend()` called on
them in this state.

``` swift
case suspended
```

### `cancelled`

`State` set when `cancel()` is called. Any tasks created for the `Request` will have `cancel()` called on
them. Unlike `resumed` or `suspended`, once in the `cancelled` state, the `Request` can no longer transition
to any other state.

``` swift
case cancelled
```

### `finished`

`State` set when all response serialization completion closures have been cleared on the `Request` and
enqueued on their respective queues.

``` swift
case finished
```
