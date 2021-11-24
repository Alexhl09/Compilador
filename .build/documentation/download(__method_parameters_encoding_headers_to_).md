# download(\_:method:parameters:encoding:headers:to:)

Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
`method`, `parameters`, `encoding`, `headers` and save them to the `destination`.

``` swift
@discardableResult
public func download(
    _ url: URLConvertible,
    method: HTTPMethod = .get,
    parameters: Parameters? = nil,
    encoding: ParameterEncoding = URLEncoding.default,
    headers: HTTPHeaders? = nil,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

## Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.

# download(\_:method:parameters:encoding:headers:to:)

Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
`method`, `parameters`, `encoding`, `headers` and save them to the `destination`.

``` swift
@discardableResult
public func download(
    _ url: URLConvertible,
    method: HTTPMethod = .get,
    parameters: Parameters? = nil,
    encoding: ParameterEncoding = URLEncoding.default,
    headers: HTTPHeaders? = nil,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

## Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.

# download(\_:method:parameters:encoding:headers:to:)

Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of the specified `url`,
`method`, `parameters`, `encoding`, `headers` and save them to the `destination`.

``` swift
@discardableResult
public func download(
    _ url: URLConvertible,
    method: HTTPMethod = .get,
    parameters: Parameters? = nil,
    encoding: ParameterEncoding = URLEncoding.default,
    headers: HTTPHeaders? = nil,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

## Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.
