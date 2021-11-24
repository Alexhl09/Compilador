# FileServer

FileServer is a struct simulating a web server behavior to serve files.
It is useful to interface a custom schema with `WKWebView` via `WKURLSchemeHandler` or
`WebView` via a custom `URLProtocol`.

``` swift
public class FileServer 
```

## Initializers

### `init(baseURL:)`

Initialize a FileServer instance with a base URL.

``` swift
public init(baseURL: URL) 
```

#### Parameters

  - baseURL: The base URL to use.

## Properties

### `baseURL`

The base URL of the server. Example:​ `http:​//www.example.com`.

``` swift
public let baseURL: URL
```

## Methods

### `register(provider:subPath:)`

Registers a `FileServerProvider` to a `FileServer` objects which can be used to provide content
to a local web page served by local content.

``` swift
@discardableResult
    public func register(provider: FileServerProvider, subPath: String = "/") -> Bool 
```

#### Parameters

  - provider: An object conforming to `FileServerProvider`.
  - subPath: The sub-path in which the `FileServerProvider` will be queried for content.

#### Returns

A boolean indicating if the registration succeeded or not.

### `data(for:)`

Returns the data for a given URL.

``` swift
public func data(for url: URL) -> Data? 
```

### `response(to:)`

Returns a tuple with a response and the given data.

``` swift
public func response(to request: URLRequest) -> (URLResponse, Data?) 
```

#### Parameters

  - request: The request coming from a web client.

#### Returns

The response and data which are going to be served to the client.
