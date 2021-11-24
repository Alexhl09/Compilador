# Adapter

Closure-based `RequestAdapter`.

``` swift
open class Adapter: RequestInterceptor 
```

## Inheritance

[`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor)

## Initializers

### `init(_:)`

Creates an instance using the provided closure.

``` swift
public init(_ adaptHandler: @escaping AdaptHandler) 
```

#### Parameters

  - adaptHandler: `AdaptHandler` closure to be executed when handling request adaptation.

### `init(_:)`

Creates an instance using the provided closure.

``` swift
public init(_ adaptHandler: @escaping AdaptHandler) 
```

#### Parameters

  - adaptHandler: `AdaptHandler` closure to be executed when handling request adaptation.

### `init(_:)`

Creates an instance using the provided closure.

``` swift
public init(_ adaptHandler: @escaping AdaptHandler) 
```

#### Parameters

  - adaptHandler: `AdaptHandler` closure to be executed when handling request adaptation.

## Methods

### `adapt(_:for:completion:)`

``` swift
open func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
open func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
open func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```
