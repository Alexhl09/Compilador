# RequestInterceptor

Type that provides both `RequestAdapter` and `RequestRetrier` functionality.

``` swift
public protocol RequestInterceptor: RequestAdapter, RequestRetrier 
```

## Inheritance

[`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestAdapter`](/RequestAdapter), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier), [`RequestRetrier`](/RequestRetrier)

## Default Implementations

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request,
                      for session: Session,
                      dueTo error: Error,
                      completion: @escaping (RetryResult) -> Void) 
```
