# RequestAdapter

A type that can inspect and optionally adapt a `URLRequest` in some manner if necessary.

``` swift
public protocol RequestAdapter 
```

## Requirements

### adapt(\_:​)

Inspects and adapts the specified `URLRequest` in some manner if necessary and returns the result.

``` swift
func adapt(_ urlRequest: URLRequest) throws -> URLRequest
```

#### Parameters

  - urlRequest: The URL request to adapt.

#### Throws

An `Error` if the adaptation encounters an error.

#### Returns

The adapted `URLRequest`.

### adapt(\_:​)

Inspects and adapts the specified `URLRequest` in some manner if necessary and returns the result.

``` swift
func adapt(_ urlRequest: URLRequest) throws -> URLRequest
```

#### Parameters

  - urlRequest: The URL request to adapt.

#### Throws

An `Error` if the adaptation encounters an error.

#### Returns

The adapted `URLRequest`.

### adapt(\_:​)

Inspects and adapts the specified `URLRequest` in some manner if necessary and returns the result.

``` swift
func adapt(_ urlRequest: URLRequest) throws -> URLRequest
```

#### Parameters

  - urlRequest: The URL request to adapt.

#### Throws

An `Error` if the adaptation encounters an error.

#### Returns

The adapted `URLRequest`.

### adapt(\_:​for:​completion:​)

Inspects and adapts the specified `URLRequest` in some manner and calls the completion handler with the Result.

``` swift
func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void)
```

#### Parameters

  - urlRequest: The `URLRequest` to adapt.
  - session: The `Session` that will execute the `URLRequest`.
  - completion: The completion handler that must be called when adaptation is complete.

### adapt(\_:​for:​completion:​)

Inspects and adapts the specified `URLRequest` in some manner and calls the completion handler with the Result.

``` swift
func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void)
```

#### Parameters

  - urlRequest: The `URLRequest` to adapt.
  - session: The `Session` that will execute the `URLRequest`.
  - completion: The completion handler that must be called when adaptation is complete.

### adapt(\_:​for:​completion:​)

Inspects and adapts the specified `URLRequest` in some manner and calls the completion handler with the Result.

``` swift
func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void)
```

#### Parameters

  - urlRequest: The `URLRequest` to adapt.
  - session: The `Session` that will execute the `URLRequest`.
  - completion: The completion handler that must be called when adaptation is complete.
