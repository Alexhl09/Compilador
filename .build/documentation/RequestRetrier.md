# RequestRetrier

A type that determines whether a request should be retried after being executed by the specified session manager
and encountering an error.

``` swift
public protocol RequestRetrier 
```

## Requirements

### should(\_:​retry:​with:​completion:​)

Determines whether the `Request` should be retried by calling the `completion` closure.

``` swift
func should(_ manager: SessionManager, retry request: Request, with error: Error, completion: @escaping RequestRetryCompletion)
```

This operation is fully asychronous. Any amount of time can be taken to determine whether the request needs
to be retried. The one requirement is that the completion closure is called to ensure the request is properly
cleaned up after.

#### Parameters

  - manager: The session manager the request was executed on.
  - request: The request that failed due to the encountered error.
  - error: The error encountered when executing the request.
  - completion: The completion closure to be executed when retry decision has been determined.

### should(\_:​retry:​with:​completion:​)

Determines whether the `Request` should be retried by calling the `completion` closure.

``` swift
func should(_ manager: SessionManager, retry request: Request, with error: Error, completion: @escaping RequestRetryCompletion)
```

This operation is fully asynchronous. Any amount of time can be taken to determine whether the request needs
to be retried. The one requirement is that the completion closure is called to ensure the request is properly
cleaned up after.

#### Parameters

  - manager: The session manager the request was executed on.
  - request: The request that failed due to the encountered error.
  - error: The error encountered when executing the request.
  - completion: The completion closure to be executed when retry decision has been determined.

### should(\_:​retry:​with:​completion:​)

Determines whether the `Request` should be retried by calling the `completion` closure.

``` swift
func should(_ manager: SessionManager, retry request: Request, with error: Error, completion: @escaping RequestRetryCompletion)
```

This operation is fully asynchronous. Any amount of time can be taken to determine whether the request needs
to be retried. The one requirement is that the completion closure is called to ensure the request is properly
cleaned up after.

#### Parameters

  - manager: The session manager the request was executed on.
  - request: The request that failed due to the encountered error.
  - error: The error encountered when executing the request.
  - completion: The completion closure to be executed when retry decision has been determined.

### retry(\_:​for:​dueTo:​completion:​)

Determines whether the `Request` should be retried by calling the `completion` closure.

``` swift
func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void)
```

This operation is fully asynchronous. Any amount of time can be taken to determine whether the request needs
to be retried. The one requirement is that the completion closure is called to ensure the request is properly
cleaned up after.

#### Parameters

  - request: `Request` that failed due to the provided `Error`.
  - session: `Session` that produced the `Request`.
  - error: `Error` encountered while executing the `Request`.
  - completion: Completion closure to be executed when a retry decision has been determined.

### retry(\_:​for:​dueTo:​completion:​)

Determines whether the `Request` should be retried by calling the `completion` closure.

``` swift
func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void)
```

This operation is fully asynchronous. Any amount of time can be taken to determine whether the request needs
to be retried. The one requirement is that the completion closure is called to ensure the request is properly
cleaned up after.

#### Parameters

  - request: `Request` that failed due to the provided `Error`.
  - session: `Session` that produced the `Request`.
  - error: `Error` encountered while executing the `Request`.
  - completion: Completion closure to be executed when a retry decision has been determined.

### retry(\_:​for:​dueTo:​completion:​)

Determines whether the `Request` should be retried by calling the `completion` closure.

``` swift
func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void)
```

This operation is fully asynchronous. Any amount of time can be taken to determine whether the request needs
to be retried. The one requirement is that the completion closure is called to ensure the request is properly
cleaned up after.

#### Parameters

  - request: `Request` that failed due to the provided `Error`.
  - session: `Session` that produced the `Request`.
  - error: `Error` encountered while executing the `Request`.
  - completion: Completion closure to be executed when a retry decision has been determined.
