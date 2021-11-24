# RetryResult

Outcome of determination whether retry is necessary.

``` swift
public enum RetryResult 
```

## Enumeration Cases

### `retry`

Retry should be attempted immediately.

``` swift
case retry
```

### `retryWithDelay`

Retry should be attempted after the associated `TimeInterval`.

``` swift
case retryWithDelay(TimeInterval)
```

### `doNotRetry`

Do not retry.

``` swift
case doNotRetry
```

### `doNotRetryWithError`

Do not retry due to the associated `Error`.

``` swift
case doNotRetryWithError(Error)
```

### `retry`

Retry should be attempted immediately.

``` swift
case retry
```

### `retryWithDelay`

Retry should be attempted after the associated `TimeInterval`.

``` swift
case retryWithDelay(TimeInterval)
```

### `doNotRetry`

Do not retry.

``` swift
case doNotRetry
```

### `doNotRetryWithError`

Do not retry due to the associated `Error`.

``` swift
case doNotRetryWithError(Error)
```

### `retry`

Retry should be attempted immediately.

``` swift
case retry
```

### `retryWithDelay`

Retry should be attempted after the associated `TimeInterval`.

``` swift
case retryWithDelay(TimeInterval)
```

### `doNotRetry`

Do not retry.

``` swift
case doNotRetry
```

### `doNotRetryWithError`

Do not retry due to the associated `Error`.

``` swift
case doNotRetryWithError(Error)
```
