# RequestDelegate

Protocol abstraction for `Request`'s communication back to the `SessionDelegate`.

``` swift
public protocol RequestDelegate: AnyObject 
```

## Inheritance

`AnyObject`, `AnyObject`, `AnyObject`

## Requirements

### sessionConfiguration

`URLSessionConfiguration` used to create the underlying `URLSessionTask`s.

``` swift
var sessionConfiguration: URLSessionConfiguration 
```

### startImmediately

Determines whether the `Request` should automatically call `resume()` when adding the first response handler.

``` swift
var startImmediately: Bool 
```

### cleanup(after:​)

Notifies the delegate the `Request` has reached a point where it needs cleanup.

``` swift
func cleanup(after request: Request)
```

#### Parameters

  - request: The `Request` to cleanup after.

### retryResult(for:​dueTo:​completion:​)

Asynchronously ask the delegate whether a `Request` will be retried.

``` swift
func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void)
```

#### Parameters

  - request: `Request` which failed.
  - error: `Error` which produced the failure.
  - completion: Closure taking the `RetryResult` for evaluation.

### retryRequest(\_:​withDelay:​)

Asynchronously retry the `Request`.

``` swift
func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?)
```

#### Parameters

  - request: `Request` which will be retried.
  - timeDelay: `TimeInterval` after which the retry will be triggered.

### sessionConfiguration

`URLSessionConfiguration` used to create the underlying `URLSessionTask`s.

``` swift
var sessionConfiguration: URLSessionConfiguration 
```

### startImmediately

Determines whether the `Request` should automatically call `resume()` when adding the first response handler.

``` swift
var startImmediately: Bool 
```

### cleanup(after:​)

Notifies the delegate the `Request` has reached a point where it needs cleanup.

``` swift
func cleanup(after request: Request)
```

#### Parameters

  - request: The `Request` to cleanup after.

### retryResult(for:​dueTo:​completion:​)

Asynchronously ask the delegate whether a `Request` will be retried.

``` swift
func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void)
```

#### Parameters

  - request: `Request` which failed.
  - error: `Error` which produced the failure.
  - completion: Closure taking the `RetryResult` for evaluation.

### retryRequest(\_:​withDelay:​)

Asynchronously retry the `Request`.

``` swift
func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?)
```

#### Parameters

  - request: `Request` which will be retried.
  - timeDelay: `TimeInterval` after which the retry will be triggered.

### sessionConfiguration

`URLSessionConfiguration` used to create the underlying `URLSessionTask`s.

``` swift
var sessionConfiguration: URLSessionConfiguration 
```

### startImmediately

Determines whether the `Request` should automatically call `resume()` when adding the first response handler.

``` swift
var startImmediately: Bool 
```

### cleanup(after:​)

Notifies the delegate the `Request` has reached a point where it needs cleanup.

``` swift
func cleanup(after request: Request)
```

#### Parameters

  - request: The `Request` to cleanup after.

### retryResult(for:​dueTo:​completion:​)

Asynchronously ask the delegate whether a `Request` will be retried.

``` swift
func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void)
```

#### Parameters

  - request: `Request` which failed.
  - error: `Error` which produced the failure.
  - completion: Closure taking the `RetryResult` for evaluation.

### retryRequest(\_:​withDelay:​)

Asynchronously retry the `Request`.

``` swift
func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?)
```

#### Parameters

  - request: `Request` which will be retried.
  - timeDelay: `TimeInterval` after which the retry will be triggered.
