# Interceptor

`RequestInterceptor` which can use multiple `RequestAdapter` and `RequestRetrier` values.

``` swift
open class Interceptor: RequestInterceptor 
```

## Inheritance

[`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor)

## Initializers

### `init(adaptHandler:retryHandler:)`

Creates an instance from `AdaptHandler` and `RetryHandler` closures.

``` swift
public init(adaptHandler: @escaping AdaptHandler, retryHandler: @escaping RetryHandler) 
```

#### Parameters

  - adaptHandler: `AdaptHandler` closure to be used.
  - retryHandler: `RetryHandler` closure to be used.

### `init(adapter:retrier:)`

Creates an instance from `RequestAdapter` and `RequestRetrier` values.

``` swift
public init(adapter: RequestAdapter, retrier: RequestRetrier) 
```

#### Parameters

  - adapter: `RequestAdapter` value to be used.
  - retrier: `RequestRetrier` value to be used.

### `init(adapters:retriers:interceptors:)`

Creates an instance from the arrays of `RequestAdapter` and `RequestRetrier` values.

``` swift
public init(adapters: [RequestAdapter] = [], retriers: [RequestRetrier] = [], interceptors: [RequestInterceptor] = []) 
```

#### Parameters

  - adapters: `RequestAdapter` values to be used.
  - retriers: `RequestRetrier` values to be used.
  - interceptors: `RequestInterceptor`s to be used.

### `init(adaptHandler:retryHandler:)`

Creates an instance from `AdaptHandler` and `RetryHandler` closures.

``` swift
public init(adaptHandler: @escaping AdaptHandler, retryHandler: @escaping RetryHandler) 
```

#### Parameters

  - adaptHandler: `AdaptHandler` closure to be used.
  - retryHandler: `RetryHandler` closure to be used.

### `init(adapter:retrier:)`

Creates an instance from `RequestAdapter` and `RequestRetrier` values.

``` swift
public init(adapter: RequestAdapter, retrier: RequestRetrier) 
```

#### Parameters

  - adapter: `RequestAdapter` value to be used.
  - retrier: `RequestRetrier` value to be used.

### `init(adapters:retriers:interceptors:)`

Creates an instance from the arrays of `RequestAdapter` and `RequestRetrier` values.

``` swift
public init(adapters: [RequestAdapter] = [], retriers: [RequestRetrier] = [], interceptors: [RequestInterceptor] = []) 
```

#### Parameters

  - adapters: `RequestAdapter` values to be used.
  - retriers: `RequestRetrier` values to be used.
  - interceptors: `RequestInterceptor`s to be used.

### `init(adaptHandler:retryHandler:)`

Creates an instance from `AdaptHandler` and `RetryHandler` closures.

``` swift
public init(adaptHandler: @escaping AdaptHandler, retryHandler: @escaping RetryHandler) 
```

#### Parameters

  - adaptHandler: `AdaptHandler` closure to be used.
  - retryHandler: `RetryHandler` closure to be used.

### `init(adapter:retrier:)`

Creates an instance from `RequestAdapter` and `RequestRetrier` values.

``` swift
public init(adapter: RequestAdapter, retrier: RequestRetrier) 
```

#### Parameters

  - adapter: `RequestAdapter` value to be used.
  - retrier: `RequestRetrier` value to be used.

### `init(adapters:retriers:interceptors:)`

Creates an instance from the arrays of `RequestAdapter` and `RequestRetrier` values.

``` swift
public init(adapters: [RequestAdapter] = [], retriers: [RequestRetrier] = [], interceptors: [RequestInterceptor] = []) 
```

#### Parameters

  - adapters: `RequestAdapter` values to be used.
  - retriers: `RequestRetrier` values to be used.
  - interceptors: `RequestInterceptor`s to be used.

## Properties

### `adapters`

All `RequestAdapter`s associated with the instance. These adapters will be run until one fails.

``` swift
public let adapters: [RequestAdapter]
```

### `retriers`

All `RequestRetrier`s associated with the instance. These retriers will be run one at a time until one triggers retry.

``` swift
public let retriers: [RequestRetrier]
```

### `adapters`

All `RequestAdapter`s associated with the instance. These adapters will be run until one fails.

``` swift
public let adapters: [RequestAdapter]
```

### `retriers`

All `RequestRetrier`s associated with the instance. These retriers will be run one at a time until one triggers retry.

``` swift
public let retriers: [RequestRetrier]
```

### `adapters`

All `RequestAdapter`s associated with the instance. These adapters will be run until one fails.

``` swift
public let adapters: [RequestAdapter]
```

### `retriers`

All `RequestRetrier`s associated with the instance. These retriers will be run one at a time until one triggers retry.

``` swift
public let retriers: [RequestRetrier]
```

## Methods

### `adapt(_:for:completion:)`

``` swift
open func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
open func retry(_ request: Request,
                    for session: Session,
                    dueTo error: Error,
                    completion: @escaping (RetryResult) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
open func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
open func retry(_ request: Request,
                    for session: Session,
                    dueTo error: Error,
                    completion: @escaping (RetryResult) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
open func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
open func retry(_ request: Request,
                    for session: Session,
                    dueTo error: Error,
                    completion: @escaping (RetryResult) -> Void) 
```
