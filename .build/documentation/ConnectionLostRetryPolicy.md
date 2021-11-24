# ConnectionLostRetryPolicy

A retry policy that automatically retries idempotent requests for network connection lost errors. For more
information about retrying network connection lost errors, please refer to Apple's
[technical document](https:​//developer.apple.com/library/content/qa/qa1941/_index.html).

``` swift
open class ConnectionLostRetryPolicy: RetryPolicy 
```

## Inheritance

[`RetryPolicy`](/RetryPolicy), [`RetryPolicy`](/RetryPolicy), [`RetryPolicy`](/RetryPolicy), [`RetryPolicy`](/RetryPolicy), [`RetryPolicy`](/RetryPolicy), [`RetryPolicy`](/RetryPolicy), [`RetryPolicy`](/RetryPolicy), [`RetryPolicy`](/RetryPolicy), [`RetryPolicy`](/RetryPolicy)

## Initializers

### `init(retryLimit:exponentialBackoffBase:exponentialBackoffScale:retryableHTTPMethods:)`

Creates a `ConnectionLostRetryPolicy` instance from the specified parameters.

``` swift
public init(retryLimit: UInt = RetryPolicy.defaultRetryLimit,
                exponentialBackoffBase: UInt = RetryPolicy.defaultExponentialBackoffBase,
                exponentialBackoffScale: Double = RetryPolicy.defaultExponentialBackoffScale,
                retryableHTTPMethods: Set<HTTPMethod> = RetryPolicy.defaultRetryableHTTPMethods) 
```

#### Parameters

  - retryLimit: The total number of times the request is allowed to be retried. `RetryPolicy.defaultRetryLimit` by default.
  - exponentialBackoffBase: The base of the exponential backoff policy. `RetryPolicy.defaultExponentialBackoffBase` by default.
  - exponentialBackoffScale: The scale of the exponential backoff. `RetryPolicy.defaultExponentialBackoffScale` by default.
  - retryableHTTPMethods: The idempotent http methods to retry. `RetryPolicy.defaultRetryableHTTPMethods` by default.

### `init(retryLimit:exponentialBackoffBase:exponentialBackoffScale:retryableHTTPMethods:)`

Creates a `ConnectionLostRetryPolicy` instance from the specified parameters.

``` swift
public init(retryLimit: UInt = RetryPolicy.defaultRetryLimit,
                exponentialBackoffBase: UInt = RetryPolicy.defaultExponentialBackoffBase,
                exponentialBackoffScale: Double = RetryPolicy.defaultExponentialBackoffScale,
                retryableHTTPMethods: Set<HTTPMethod> = RetryPolicy.defaultRetryableHTTPMethods) 
```

#### Parameters

  - retryLimit: The total number of times the request is allowed to be retried. `RetryPolicy.defaultRetryLimit` by default.
  - exponentialBackoffBase: The base of the exponential backoff policy. `RetryPolicy.defaultExponentialBackoffBase` by default.
  - exponentialBackoffScale: The scale of the exponential backoff. `RetryPolicy.defaultExponentialBackoffScale` by default.
  - retryableHTTPMethods: The idempotent http methods to retry. `RetryPolicy.defaultRetryableHTTPMethods` by default.

### `init(retryLimit:exponentialBackoffBase:exponentialBackoffScale:retryableHTTPMethods:)`

Creates a `ConnectionLostRetryPolicy` instance from the specified parameters.

``` swift
public init(retryLimit: UInt = RetryPolicy.defaultRetryLimit,
                exponentialBackoffBase: UInt = RetryPolicy.defaultExponentialBackoffBase,
                exponentialBackoffScale: Double = RetryPolicy.defaultExponentialBackoffScale,
                retryableHTTPMethods: Set<HTTPMethod> = RetryPolicy.defaultRetryableHTTPMethods) 
```

#### Parameters

  - retryLimit: The total number of times the request is allowed to be retried. `RetryPolicy.defaultRetryLimit` by default.
  - exponentialBackoffBase: The base of the exponential backoff policy. `RetryPolicy.defaultExponentialBackoffBase` by default.
  - exponentialBackoffScale: The scale of the exponential backoff. `RetryPolicy.defaultExponentialBackoffScale` by default.
  - retryableHTTPMethods: The idempotent http methods to retry. `RetryPolicy.defaultRetryableHTTPMethods` by default.
