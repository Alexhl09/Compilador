# download(\_:to:)

Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
specified `urlRequest` and save them to the `destination`.

``` swift
@discardableResult
public func download(
    _ urlRequest: URLRequestConvertible,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

## Parameters

  - urlRequest: The URL request.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.

# download(\_:to:)

Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
specified `urlRequest` and save them to the `destination`.

``` swift
@discardableResult
public func download(
    _ urlRequest: URLRequestConvertible,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

## Parameters

  - urlRequest: The URL request.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.

# download(\_:to:)

Creates a `DownloadRequest` using the default `SessionManager` to retrieve the contents of a URL based on the
specified `urlRequest` and save them to the `destination`.

``` swift
@discardableResult
public func download(
    _ urlRequest: URLRequestConvertible,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

## Parameters

  - urlRequest: The URL request.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.
