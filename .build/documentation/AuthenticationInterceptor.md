# AuthenticationInterceptor

The `AuthenticationInterceptor` class manages the queuing and threading complexity of authenticating requests.
It relies on an `Authenticator` type to handle the actual `URLRequest` authentication and `Credential` refresh.

``` swift
public class AuthenticationInterceptor<AuthenticatorType>: RequestInterceptor where AuthenticatorType: Authenticator 
```

## Inheritance

[`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor), [`RequestInterceptor`](/RequestInterceptor)

## Nested Type Aliases

### `Credential`

Type of credential used to authenticate requests.

``` swift
public typealias Credential = AuthenticatorType.Credential
```

### `Credential`

Type of credential used to authenticate requests.

``` swift
public typealias Credential = AuthenticatorType.Credential
```

### `Credential`

Type of credential used to authenticate requests.

``` swift
public typealias Credential = AuthenticatorType.Credential
```

## Initializers

### `init(authenticator:credential:refreshWindow:)`

Creates an `AuthenticationInterceptor` instance from the specified parameters.

``` swift
public init(authenticator: AuthenticatorType,
                credential: Credential? = nil,
                refreshWindow: RefreshWindow? = RefreshWindow()) 
```

A `nil` `RefreshWindow` will result in the `AuthenticationInterceptor` not checking for excessive refresh calls.
It is recommended to always use a `RefreshWindow` to avoid endless refresh cycles.

#### Parameters

  - authenticator: The `Authenticator` type.
  - credential: The `Credential` if it exists. `nil` by default.
  - refreshWindow: The `RefreshWindow` used to identify excessive refresh calls. `RefreshWindow()` by default.

### `init(authenticator:credential:refreshWindow:)`

Creates an `AuthenticationInterceptor` instance from the specified parameters.

``` swift
public init(authenticator: AuthenticatorType,
                credential: Credential? = nil,
                refreshWindow: RefreshWindow? = RefreshWindow()) 
```

A `nil` `RefreshWindow` will result in the `AuthenticationInterceptor` not checking for excessive refresh calls.
It is recommended to always use a `RefreshWindow` to avoid endless refresh cycles.

#### Parameters

  - authenticator: The `Authenticator` type.
  - credential: The `Credential` if it exists. `nil` by default.
  - refreshWindow: The `RefreshWindow` used to identify excessive refresh calls. `RefreshWindow()` by default.

### `init(authenticator:credential:refreshWindow:)`

Creates an `AuthenticationInterceptor` instance from the specified parameters.

``` swift
public init(authenticator: AuthenticatorType,
                credential: Credential? = nil,
                refreshWindow: RefreshWindow? = RefreshWindow()) 
```

A `nil` `RefreshWindow` will result in the `AuthenticationInterceptor` not checking for excessive refresh calls.
It is recommended to always use a `RefreshWindow` to avoid endless refresh cycles.

#### Parameters

  - authenticator: The `Authenticator` type.
  - credential: The `Credential` if it exists. `nil` by default.
  - refreshWindow: The `RefreshWindow` used to identify excessive refresh calls. `RefreshWindow()` by default.

## Properties

### `credential`

The `Credential` used to authenticate requests.

``` swift
public var credential: Credential? 
```

### `credential`

The `Credential` used to authenticate requests.

``` swift
public var credential: Credential? 
```

### `credential`

The `Credential` used to authenticate requests.

``` swift
public var credential: Credential? 
```

## Methods

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) 
```

### `adapt(_:for:completion:)`

``` swift
public func adapt(_ urlRequest: URLRequest, for session: Session, completion: @escaping (Result<URLRequest, Error>) -> Void) 
```

### `retry(_:for:dueTo:completion:)`

``` swift
public func retry(_ request: Request, for session: Session, dueTo error: Error, completion: @escaping (RetryResult) -> Void) 
```
