# Authenticator

Types adopting the `Authenticator` protocol can be used to authenticate `URLRequest`s with an
`AuthenticationCredential` as well as refresh the `AuthenticationCredential` when required.

``` swift
public protocol Authenticator: AnyObject 
```

## Inheritance

`AnyObject`, `AnyObject`, `AnyObject`

## Requirements

### Credential

The type of credential associated with the `Authenticator` instance.

``` swift
associatedtype Credential: AuthenticationCredential
```

### apply(\_:​to:​)

Applies the `Credential` to the `URLRequest`.

``` swift
func apply(_ credential: Credential, to urlRequest: inout URLRequest)
```

In the case of OAuth2, the access token of the `Credential` would be added to the `URLRequest` as a Bearer
token to the `Authorization` header.

#### Parameters

  - credential: The `Credential`.
  - urlRequest: The `URLRequest`.

### refresh(\_:​for:​completion:​)

Refreshes the `Credential` and executes the `completion` closure with the `Result` once complete.

``` swift
func refresh(_ credential: Credential, for session: Session, completion: @escaping (Result<Credential, Error>) -> Void)
```

Refresh can be called in one of two ways. It can be called before the `Request` is actually executed due to
a `requiresRefresh` returning `true` during the adapt portion of the `Request` creation process. It can also
be triggered by a failed `Request` where the authentication server denied access due to an expired or
invalidated access token.

In the case of OAuth2, this method would use the refresh token of the `Credential` to generate a new
`Credential` using the authentication service. Once complete, the `completion` closure should be called with
the new `Credential`, or the error that occurred.

In general, if the refresh call fails with certain status codes from the authentication server (commonly a 401),
the refresh token in the `Credential` can no longer be used to generate a valid `Credential`. In these cases,
you will need to reauthenticate the user with their username / password.

Please note, these are just general examples of common use cases. They are not meant to solve your specific
authentication server challenges. Please work with your authentication server team to ensure your
`Authenticator` logic matches their expectations.

#### Parameters

  - credential: The `Credential` to refresh.
  - session: The `Session` requiring the refresh.
  - completion: The closure to be executed once the refresh is complete.

### didRequest(\_:​with:​failDueToAuthenticationError:​)

Determines whether the `URLRequest` failed due to an authentication error based on the `HTTPURLResponse`.

``` swift
func didRequest(_ urlRequest: URLRequest, with response: HTTPURLResponse, failDueToAuthenticationError error: Error) -> Bool
```

If the authentication server **CANNOT** invalidate credentials after they are issued, then simply return `false`
for this method. If the authentication server **CAN** invalidate credentials due to security breaches, then you
will need to work with your authentication server team to understand how to identify when this occurs.

In the case of OAuth2, where an authentication server can invalidate credentials, you will need to inspect the
`HTTPURLResponse` or possibly the `Error` for when this occurs. This is commonly handled by the authentication
server returning a 401 status code and some additional header to indicate an OAuth2 failure occurred.

It is very important to understand how your authentication server works to be able to implement this correctly.
For example, if your authentication server returns a 401 when an OAuth2 error occurs, and your downstream
service also returns a 401 when you are not authorized to perform that operation, how do you know which layer
of the backend returned you a 401? You do not want to trigger a refresh unless you know your authentication
server is actually the layer rejecting the request. Again, work with your authentication server team to understand
how to identify an OAuth2 401 error vs. a downstream 401 error to avoid endless refresh loops.

#### Parameters

  - urlRequest: The `URLRequest`.
  - response: The `HTTPURLResponse`.
  - error: The `Error`.

#### Returns

`true` if the `URLRequest` failed due to an authentication error, `false` otherwise.

### isRequest(\_:​authenticatedWith:​)

Determines whether the `URLRequest` is authenticated with the `Credential`.

``` swift
func isRequest(_ urlRequest: URLRequest, authenticatedWith credential: Credential) -> Bool
```

If the authentication server **CANNOT** invalidate credentials after they are issued, then simply return `true`
for this method. If the authentication server **CAN** invalidate credentials due to security breaches, then
read on.

When an authentication server can invalidate credentials, it means that you may have a non-expired credential
that appears to be valid, but will be rejected by the authentication server when used. Generally when this
happens, a number of requests are all sent when the application is foregrounded, and all of them will be
rejected by the authentication server in the order they are received. The first failed request will trigger a
refresh internally, which will update the credential, and then retry all the queued requests with the new
credential. However, it is possible that some of the original requests will not return from the authentication
server until the refresh has completed. This is where this method comes in.

When the authentication server rejects a credential, we need to check to make sure we haven't refreshed the
credential while the request was in flight. If it has already refreshed, then we don't need to trigger an
additional refresh. If it hasn't refreshed, then we need to refresh.

Now that it is understood how the result of this method is used in the refresh lifecyle, let's walk through how
to implement it. You should return `true` in this method if the `URLRequest` is authenticated in a way that
matches the values in the `Credential`. In the case of OAuth2, this would mean that the Bearer token in the
`Authorization` header of the `URLRequest` matches the access token in the `Credential`. If it matches, then we
know the `Credential` was used to authenticate the `URLRequest` and should return `true`. If the Bearer token
did not match the access token, then you should return `false`.

#### Parameters

  - urlRequest: The `URLRequest`.
  - credential: The `Credential`.

#### Returns

`true` if the `URLRequest` is authenticated with the `Credential`, `false` otherwise.

### Credential

The type of credential associated with the `Authenticator` instance.

``` swift
associatedtype Credential: AuthenticationCredential
```

### apply(\_:​to:​)

Applies the `Credential` to the `URLRequest`.

``` swift
func apply(_ credential: Credential, to urlRequest: inout URLRequest)
```

In the case of OAuth2, the access token of the `Credential` would be added to the `URLRequest` as a Bearer
token to the `Authorization` header.

#### Parameters

  - credential: The `Credential`.
  - urlRequest: The `URLRequest`.

### refresh(\_:​for:​completion:​)

Refreshes the `Credential` and executes the `completion` closure with the `Result` once complete.

``` swift
func refresh(_ credential: Credential, for session: Session, completion: @escaping (Result<Credential, Error>) -> Void)
```

Refresh can be called in one of two ways. It can be called before the `Request` is actually executed due to
a `requiresRefresh` returning `true` during the adapt portion of the `Request` creation process. It can also
be triggered by a failed `Request` where the authentication server denied access due to an expired or
invalidated access token.

In the case of OAuth2, this method would use the refresh token of the `Credential` to generate a new
`Credential` using the authentication service. Once complete, the `completion` closure should be called with
the new `Credential`, or the error that occurred.

In general, if the refresh call fails with certain status codes from the authentication server (commonly a 401),
the refresh token in the `Credential` can no longer be used to generate a valid `Credential`. In these cases,
you will need to reauthenticate the user with their username / password.

Please note, these are just general examples of common use cases. They are not meant to solve your specific
authentication server challenges. Please work with your authentication server team to ensure your
`Authenticator` logic matches their expectations.

#### Parameters

  - credential: The `Credential` to refresh.
  - session: The `Session` requiring the refresh.
  - completion: The closure to be executed once the refresh is complete.

### didRequest(\_:​with:​failDueToAuthenticationError:​)

Determines whether the `URLRequest` failed due to an authentication error based on the `HTTPURLResponse`.

``` swift
func didRequest(_ urlRequest: URLRequest, with response: HTTPURLResponse, failDueToAuthenticationError error: Error) -> Bool
```

If the authentication server **CANNOT** invalidate credentials after they are issued, then simply return `false`
for this method. If the authentication server **CAN** invalidate credentials due to security breaches, then you
will need to work with your authentication server team to understand how to identify when this occurs.

In the case of OAuth2, where an authentication server can invalidate credentials, you will need to inspect the
`HTTPURLResponse` or possibly the `Error` for when this occurs. This is commonly handled by the authentication
server returning a 401 status code and some additional header to indicate an OAuth2 failure occurred.

It is very important to understand how your authentication server works to be able to implement this correctly.
For example, if your authentication server returns a 401 when an OAuth2 error occurs, and your downstream
service also returns a 401 when you are not authorized to perform that operation, how do you know which layer
of the backend returned you a 401? You do not want to trigger a refresh unless you know your authentication
server is actually the layer rejecting the request. Again, work with your authentication server team to understand
how to identify an OAuth2 401 error vs. a downstream 401 error to avoid endless refresh loops.

#### Parameters

  - urlRequest: The `URLRequest`.
  - response: The `HTTPURLResponse`.
  - error: The `Error`.

#### Returns

`true` if the `URLRequest` failed due to an authentication error, `false` otherwise.

### isRequest(\_:​authenticatedWith:​)

Determines whether the `URLRequest` is authenticated with the `Credential`.

``` swift
func isRequest(_ urlRequest: URLRequest, authenticatedWith credential: Credential) -> Bool
```

If the authentication server **CANNOT** invalidate credentials after they are issued, then simply return `true`
for this method. If the authentication server **CAN** invalidate credentials due to security breaches, then
read on.

When an authentication server can invalidate credentials, it means that you may have a non-expired credential
that appears to be valid, but will be rejected by the authentication server when used. Generally when this
happens, a number of requests are all sent when the application is foregrounded, and all of them will be
rejected by the authentication server in the order they are received. The first failed request will trigger a
refresh internally, which will update the credential, and then retry all the queued requests with the new
credential. However, it is possible that some of the original requests will not return from the authentication
server until the refresh has completed. This is where this method comes in.

When the authentication server rejects a credential, we need to check to make sure we haven't refreshed the
credential while the request was in flight. If it has already refreshed, then we don't need to trigger an
additional refresh. If it hasn't refreshed, then we need to refresh.

Now that it is understood how the result of this method is used in the refresh lifecyle, let's walk through how
to implement it. You should return `true` in this method if the `URLRequest` is authenticated in a way that
matches the values in the `Credential`. In the case of OAuth2, this would mean that the Bearer token in the
`Authorization` header of the `URLRequest` matches the access token in the `Credential`. If it matches, then we
know the `Credential` was used to authenticate the `URLRequest` and should return `true`. If the Bearer token
did not match the access token, then you should return `false`.

#### Parameters

  - urlRequest: The `URLRequest`.
  - credential: The `Credential`.

#### Returns

`true` if the `URLRequest` is authenticated with the `Credential`, `false` otherwise.

### Credential

The type of credential associated with the `Authenticator` instance.

``` swift
associatedtype Credential: AuthenticationCredential
```

### apply(\_:​to:​)

Applies the `Credential` to the `URLRequest`.

``` swift
func apply(_ credential: Credential, to urlRequest: inout URLRequest)
```

In the case of OAuth2, the access token of the `Credential` would be added to the `URLRequest` as a Bearer
token to the `Authorization` header.

#### Parameters

  - credential: The `Credential`.
  - urlRequest: The `URLRequest`.

### refresh(\_:​for:​completion:​)

Refreshes the `Credential` and executes the `completion` closure with the `Result` once complete.

``` swift
func refresh(_ credential: Credential, for session: Session, completion: @escaping (Result<Credential, Error>) -> Void)
```

Refresh can be called in one of two ways. It can be called before the `Request` is actually executed due to
a `requiresRefresh` returning `true` during the adapt portion of the `Request` creation process. It can also
be triggered by a failed `Request` where the authentication server denied access due to an expired or
invalidated access token.

In the case of OAuth2, this method would use the refresh token of the `Credential` to generate a new
`Credential` using the authentication service. Once complete, the `completion` closure should be called with
the new `Credential`, or the error that occurred.

In general, if the refresh call fails with certain status codes from the authentication server (commonly a 401),
the refresh token in the `Credential` can no longer be used to generate a valid `Credential`. In these cases,
you will need to reauthenticate the user with their username / password.

Please note, these are just general examples of common use cases. They are not meant to solve your specific
authentication server challenges. Please work with your authentication server team to ensure your
`Authenticator` logic matches their expectations.

#### Parameters

  - credential: The `Credential` to refresh.
  - session: The `Session` requiring the refresh.
  - completion: The closure to be executed once the refresh is complete.

### didRequest(\_:​with:​failDueToAuthenticationError:​)

Determines whether the `URLRequest` failed due to an authentication error based on the `HTTPURLResponse`.

``` swift
func didRequest(_ urlRequest: URLRequest, with response: HTTPURLResponse, failDueToAuthenticationError error: Error) -> Bool
```

If the authentication server **CANNOT** invalidate credentials after they are issued, then simply return `false`
for this method. If the authentication server **CAN** invalidate credentials due to security breaches, then you
will need to work with your authentication server team to understand how to identify when this occurs.

In the case of OAuth2, where an authentication server can invalidate credentials, you will need to inspect the
`HTTPURLResponse` or possibly the `Error` for when this occurs. This is commonly handled by the authentication
server returning a 401 status code and some additional header to indicate an OAuth2 failure occurred.

It is very important to understand how your authentication server works to be able to implement this correctly.
For example, if your authentication server returns a 401 when an OAuth2 error occurs, and your downstream
service also returns a 401 when you are not authorized to perform that operation, how do you know which layer
of the backend returned you a 401? You do not want to trigger a refresh unless you know your authentication
server is actually the layer rejecting the request. Again, work with your authentication server team to understand
how to identify an OAuth2 401 error vs. a downstream 401 error to avoid endless refresh loops.

#### Parameters

  - urlRequest: The `URLRequest`.
  - response: The `HTTPURLResponse`.
  - error: The `Error`.

#### Returns

`true` if the `URLRequest` failed due to an authentication error, `false` otherwise.

### isRequest(\_:​authenticatedWith:​)

Determines whether the `URLRequest` is authenticated with the `Credential`.

``` swift
func isRequest(_ urlRequest: URLRequest, authenticatedWith credential: Credential) -> Bool
```

If the authentication server **CANNOT** invalidate credentials after they are issued, then simply return `true`
for this method. If the authentication server **CAN** invalidate credentials due to security breaches, then
read on.

When an authentication server can invalidate credentials, it means that you may have a non-expired credential
that appears to be valid, but will be rejected by the authentication server when used. Generally when this
happens, a number of requests are all sent when the application is foregrounded, and all of them will be
rejected by the authentication server in the order they are received. The first failed request will trigger a
refresh internally, which will update the credential, and then retry all the queued requests with the new
credential. However, it is possible that some of the original requests will not return from the authentication
server until the refresh has completed. This is where this method comes in.

When the authentication server rejects a credential, we need to check to make sure we haven't refreshed the
credential while the request was in flight. If it has already refreshed, then we don't need to trigger an
additional refresh. If it hasn't refreshed, then we need to refresh.

Now that it is understood how the result of this method is used in the refresh lifecyle, let's walk through how
to implement it. You should return `true` in this method if the `URLRequest` is authenticated in a way that
matches the values in the `Credential`. In the case of OAuth2, this would mean that the Bearer token in the
`Authorization` header of the `URLRequest` matches the access token in the `Credential`. If it matches, then we
know the `Credential` was used to authenticate the `URLRequest` and should return `true`. If the Bearer token
did not match the access token, then you should return `false`.

#### Parameters

  - urlRequest: The `URLRequest`.
  - credential: The `Credential`.

#### Returns

`true` if the `URLRequest` is authenticated with the `Credential`, `false` otherwise.
