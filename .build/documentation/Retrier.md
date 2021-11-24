# Retrier

Closure-based `RequestRetrier`.

``` swift
open class Retrier: RequestInterceptor 
```

## Inheritance

[`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor)

## Initializers

### `init(_:)`

Creates an instance using the provided closure.

``` swift
public init(_ retryHandler: @escaping RetryHandler) 
```

#### Parameters

  - retryHandler: `RetryHandler` closure to be executed when handling request retry.

### `init(_:)`

Creates an instance using the provided closure.

``` swift
public init(_ retryHandler: @escaping RetryHandler) 
```

#### Parameters

  - retryHandler: `RetryHandler` closure to be executed when handling request retry.

### `init(_:)`

Creates an instance using the provided closure.

``` swift
public init(_ retryHandler: @escaping RetryHandler) 
```

#### Parameters

  - retryHandler: `RetryHandler` closure to be executed when handling request retry.

## Methods

### `retry(_:for:dueTo:completion:)`

``` swift
open func retry(_ request: Request,
                    for session: Session,
                    dueTo error: Error,
                    completion: @escaping (RetryResult) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
open func retry(_ request: Request,
                    for session: Session,
                    dueTo error: Error,
                    completion: @escaping (RetryResult) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
open func retry(_ request: Request,
                    for session: Session,
                    dueTo error: Error,
                    completion: @escaping (RetryResult) -> Void) 
```
