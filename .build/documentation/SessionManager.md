# SessionManager

Responsible for creating and managing `Request` objects, as well as their underlying `NSURLSession`.

``` swift
open class SessionManager 
```

## Initializers

### `init(configuration:delegate:serverTrustPolicyManager:)`

Creates an instance with the specified `configuration`, `delegate` and `serverTrustPolicyManager`.

``` swift
public init(
        configuration: URLSessionConfiguration = URLSessionConfiguration.default,
        delegate: SessionDelegate = SessionDelegate(),
        serverTrustPolicyManager: ServerTrustPolicyManager? = nil)
```

#### Parameters

  - configuration: The configuration used to construct the managed session. `URLSessionConfiguration.default` by default.
  - delegate: The delegate used when initializing the session. `SessionDelegate()` by default.
  - serverTrustPolicyManager: The server trust policy manager to use for evaluating all server trust challenges. `nil` by default.

#### Returns

The new `SessionManager` instance.

### `init?(session:delegate:serverTrustPolicyManager:)`

Creates an instance with the specified `session`, `delegate` and `serverTrustPolicyManager`.

``` swift
public init?(
        session: URLSession,
        delegate: SessionDelegate,
        serverTrustPolicyManager: ServerTrustPolicyManager? = nil)
```

#### Parameters

  - session: The URL session.
  - delegate: The delegate of the URL session. Must equal the URL session's delegate.
  - serverTrustPolicyManager: The server trust policy manager to use for evaluating all server trust challenges. `nil` by default.

#### Returns

The new `SessionManager` instance if the URL session's delegate matches; `nil` otherwise.

### `init(configuration:delegate:serverTrustPolicyManager:)`

Creates an instance with the specified `configuration`, `delegate` and `serverTrustPolicyManager`.

``` swift
public init(
        configuration: URLSessionConfiguration = URLSessionConfiguration.default,
        delegate: SessionDelegate = SessionDelegate(),
        serverTrustPolicyManager: ServerTrustPolicyManager? = nil)
```

#### Parameters

  - configuration: The configuration used to construct the managed session. `URLSessionConfiguration.default` by default.
  - delegate: The delegate used when initializing the session. `SessionDelegate()` by default.
  - serverTrustPolicyManager: The server trust policy manager to use for evaluating all server trust challenges. `nil` by default.

#### Returns

The new `SessionManager` instance.

### `init?(session:delegate:serverTrustPolicyManager:)`

Creates an instance with the specified `session`, `delegate` and `serverTrustPolicyManager`.

``` swift
public init?(
        session: URLSession,
        delegate: SessionDelegate,
        serverTrustPolicyManager: ServerTrustPolicyManager? = nil)
```

#### Parameters

  - session: The URL session.
  - delegate: The delegate of the URL session. Must equal the URL session's delegate.
  - serverTrustPolicyManager: The server trust policy manager to use for evaluating all server trust challenges. `nil` by default.

#### Returns

The new `SessionManager` instance if the URL session's delegate matches; `nil` otherwise.

### `init(configuration:delegate:serverTrustPolicyManager:)`

Creates an instance with the specified `configuration`, `delegate` and `serverTrustPolicyManager`.

``` swift
public init(
        configuration: URLSessionConfiguration = URLSessionConfiguration.default,
        delegate: SessionDelegate = SessionDelegate(),
        serverTrustPolicyManager: ServerTrustPolicyManager? = nil)
```

#### Parameters

  - configuration: The configuration used to construct the managed session. `URLSessionConfiguration.default` by default.
  - delegate: The delegate used when initializing the session. `SessionDelegate()` by default.
  - serverTrustPolicyManager: The server trust policy manager to use for evaluating all server trust challenges. `nil` by default.

#### Returns

The new `SessionManager` instance.

### `init?(session:delegate:serverTrustPolicyManager:)`

Creates an instance with the specified `session`, `delegate` and `serverTrustPolicyManager`.

``` swift
public init?(
        session: URLSession,
        delegate: SessionDelegate,
        serverTrustPolicyManager: ServerTrustPolicyManager? = nil)
```

#### Parameters

  - session: The URL session.
  - delegate: The delegate of the URL session. Must equal the URL session's delegate.
  - serverTrustPolicyManager: The server trust policy manager to use for evaluating all server trust challenges. `nil` by default.

#### Returns

The new `SessionManager` instance if the URL session's delegate matches; `nil` otherwise.

## Properties

### `` `default` ``

A default instance of `SessionManager`, used by top-level Alamofire request methods, and suitable for use
directly for any ad hoc requests.

``` swift
open static let `default`: SessionManager 
```

### `defaultHTTPHeaders`

Creates default values for the "Accept-Encoding", "Accept-Language" and "User-Agent" headers.

``` swift
open static let defaultHTTPHeaders: HTTPHeaders 
```

### `multipartFormDataEncodingMemoryThreshold`

Default memory threshold used when encoding `MultipartFormData` in bytes.

``` swift
open static let multipartFormDataEncodingMemoryThreshold: UInt64 = 10_000_000
```

### `session`

The underlying session.

``` swift
open let session: URLSession
```

### `delegate`

The session delegate handling all the task and session delegate callbacks.

``` swift
open let delegate: SessionDelegate
```

### `startRequestsImmediately`

Whether to start requests immediately after being constructed. `true` by default.

``` swift
open var startRequestsImmediately: Bool = true
```

### `adapter`

The request adapter called each time a new request is created.

``` swift
open var adapter: RequestAdapter?
```

### `retrier`

The request retrier called each time a request encounters an error to determine whether to retry the request.

``` swift
open var retrier: RequestRetrier? 
```

### `backgroundCompletionHandler`

The background completion handler closure provided by the UIApplicationDelegate
`application:​handleEventsForBackgroundURLSession:​completionHandler:​` method. By setting the background
completion handler, the SessionDelegate `sessionDidFinishEventsForBackgroundURLSession` closure implementation
will automatically call the handler.

``` swift
open var backgroundCompletionHandler: (() -> Void)?
```

If you need to handle your own events before the handler is called, then you need to override the
SessionDelegate `sessionDidFinishEventsForBackgroundURLSession` and manually call the handler when finished.

`nil` by default.

### `` `default` ``

A default instance of `SessionManager`, used by top-level Alamofire request methods, and suitable for use
directly for any ad hoc requests.

``` swift
public static let `default`: SessionManager 
```

### `defaultHTTPHeaders`

Creates default values for the "Accept-Encoding", "Accept-Language" and "User-Agent" headers.

``` swift
public static let defaultHTTPHeaders: HTTPHeaders 
```

### `multipartFormDataEncodingMemoryThreshold`

Default memory threshold used when encoding `MultipartFormData` in bytes.

``` swift
public static let multipartFormDataEncodingMemoryThreshold: UInt64 = 10_000_000
```

### `session`

The underlying session.

``` swift
public let session: URLSession
```

### `delegate`

The session delegate handling all the task and session delegate callbacks.

``` swift
public let delegate: SessionDelegate
```

### `startRequestsImmediately`

Whether to start requests immediately after being constructed. `true` by default.

``` swift
open var startRequestsImmediately: Bool = true
```

### `adapter`

The request adapter called each time a new request is created.

``` swift
open var adapter: RequestAdapter?
```

### `retrier`

The request retrier called each time a request encounters an error to determine whether to retry the request.

``` swift
open var retrier: RequestRetrier? 
```

### `backgroundCompletionHandler`

The background completion handler closure provided by the UIApplicationDelegate
`application:​handleEventsForBackgroundURLSession:​completionHandler:​` method. By setting the background
completion handler, the SessionDelegate `sessionDidFinishEventsForBackgroundURLSession` closure implementation
will automatically call the handler.

``` swift
open var backgroundCompletionHandler: (() -> Void)?
```

If you need to handle your own events before the handler is called, then you need to override the
SessionDelegate `sessionDidFinishEventsForBackgroundURLSession` and manually call the handler when finished.

`nil` by default.

### `` `default` ``

A default instance of `SessionManager`, used by top-level Alamofire request methods, and suitable for use
directly for any ad hoc requests.

``` swift
public static let `default`: SessionManager 
```

### `defaultHTTPHeaders`

Creates default values for the "Accept-Encoding", "Accept-Language" and "User-Agent" headers.

``` swift
public static let defaultHTTPHeaders: HTTPHeaders 
```

### `multipartFormDataEncodingMemoryThreshold`

Default memory threshold used when encoding `MultipartFormData` in bytes.

``` swift
public static let multipartFormDataEncodingMemoryThreshold: UInt64 = 10_000_000
```

### `session`

The underlying session.

``` swift
public let session: URLSession
```

### `delegate`

The session delegate handling all the task and session delegate callbacks.

``` swift
public let delegate: SessionDelegate
```

### `startRequestsImmediately`

Whether to start requests immediately after being constructed. `true` by default.

``` swift
open var startRequestsImmediately: Bool = true
```

### `adapter`

The request adapter called each time a new request is created.

``` swift
open var adapter: RequestAdapter?
```

### `retrier`

The request retrier called each time a request encounters an error to determine whether to retry the request.

``` swift
open var retrier: RequestRetrier? 
```

### `backgroundCompletionHandler`

The background completion handler closure provided by the UIApplicationDelegate
`application:​handleEventsForBackgroundURLSession:​completionHandler:​` method. By setting the background
completion handler, the SessionDelegate `sessionDidFinishEventsForBackgroundURLSession` closure implementation
will automatically call the handler.

``` swift
open var backgroundCompletionHandler: (() -> Void)?
```

If you need to handle your own events before the handler is called, then you need to override the
SessionDelegate `sessionDidFinishEventsForBackgroundURLSession` and manually call the handler when finished.

`nil` by default.

## Methods

### `request(_:method:parameters:encoding:headers:)`

Creates a `DataRequest` to retrieve the contents of the specified `url`, `method`, `parameters`, `encoding`
and `headers`.

``` swift
@discardableResult
    open func request(
        _ url: URLConvertible,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders? = nil)
        -> DataRequest
```

#### Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:)`

Creates a `DataRequest` to retrieve the contents of a URL based on the specified `urlRequest`.

``` swift
open func request(_ urlRequest: URLRequestConvertible) -> DataRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - urlRequest: The URL request.

#### Returns

The created `DataRequest`.

### `download(_:method:parameters:encoding:headers:to:)`

Creates a `DownloadRequest` to retrieve the contents the specified `url`, `method`, `parameters`, `encoding`,
`headers` and save them to the `destination`.

``` swift
@discardableResult
    open func download(
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

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:to:)`

Creates a `DownloadRequest` to retrieve the contents of a URL based on the specified `urlRequest` and save
them to the `destination`.

``` swift
@discardableResult
    open func download(
        _ urlRequest: URLRequestConvertible,
        to destination: DownloadRequest.DownloadFileDestination? = nil)
        -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - urlRequest: The URL request
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(resumingWith:to:)`

Creates a `DownloadRequest` from the `resumeData` produced from a previous request cancellation to retrieve
the contents of the original request and save them to the `destination`.

``` swift
@discardableResult
    open func download(
        resumingWith resumeData: Data,
        to destination: DownloadRequest.DownloadFileDestination? = nil)
        -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

On the latest release of all the Apple platforms (iOS 10, macOS 10.12, tvOS 10, watchOS 3), `resumeData` is broken
on background URL session configurations. There's an underlying bug in the `resumeData` generation logic where the
data is written incorrectly and will always fail to resume the download. For more information about the bug and
possible workarounds, please refer to the following Stack Overflow post:

  - http://stackoverflow.com/a/39347461/1342462

#### Parameters

  - resumeData: The resume data. This is an opaque data blob produced by `URLSessionDownloadTask` when a task is cancelled. See `URLSession -downloadTask(withResumeData:)` for additional information.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `file`.

``` swift
@discardableResult
    open func upload(
        _ fileURL: URL,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - file: The file to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates a `UploadRequest` from the specified `urlRequest` for uploading the `file`.

``` swift
@discardableResult
    open func upload(_ fileURL: URL, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - file: The file to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `data`.

``` swift
@discardableResult
    open func upload(
        _ data: Data,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - data: The data to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates an `UploadRequest` from the specified `urlRequest` for uploading the `data`.

``` swift
@discardableResult
    open func upload(_ data: Data, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - data: The data to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `stream`.

``` swift
@discardableResult
    open func upload(
        _ stream: InputStream,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - stream: The stream to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates an `UploadRequest` from the specified `urlRequest` for uploading the `stream`.

``` swift
@discardableResult
    open func upload(_ stream: InputStream, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - stream: The stream to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:usingThreshold:to:method:headers:encodingCompletion:)`

Encodes `multipartFormData` using `encodingMemoryThreshold` and calls `encodingCompletion` with new
`UploadRequest` using the `url`, `method` and `headers`.

``` swift
open func upload(
        multipartFormData: @escaping (MultipartFormData) -> Void,
        usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil,
        encodingCompletion: ((MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.

### `upload(multipartFormData:usingThreshold:with:encodingCompletion:)`

Encodes `multipartFormData` using `encodingMemoryThreshold` and calls `encodingCompletion` with new
`UploadRequest` using the `urlRequest`.

``` swift
open func upload(
        multipartFormData: @escaping (MultipartFormData) -> Void,
        usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
        with urlRequest: URLRequestConvertible,
        encodingCompletion: ((MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - urlRequest: The URL request.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.

### `stream(withHostName:port:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `StreamRequest` for bidirectional streaming using the `hostname` and `port`.

``` swift
@discardableResult
    @available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open func stream(withHostName hostName: String, port: Int) -> StreamRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - hostName: The hostname of the server to connect to.
  - port: The port of the server to connect to.

#### Returns

The created `StreamRequest`.

</dd>
</dl>

### `stream(with:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `StreamRequest` for bidirectional streaming using the `netService`.

``` swift
@discardableResult
    @available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open func stream(with netService: NetService) -> StreamRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - netService: The net service used to identify the endpoint.

#### Returns

The created `StreamRequest`.

</dd>
</dl>

### `request(_:method:parameters:encoding:headers:)`

Creates a `DataRequest` to retrieve the contents of the specified `url`, `method`, `parameters`, `encoding`
and `headers`.

``` swift
@discardableResult
    open func request(
        _ url: URLConvertible,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders? = nil)
        -> DataRequest
```

#### Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:)`

Creates a `DataRequest` to retrieve the contents of a URL based on the specified `urlRequest`.

``` swift
@discardableResult
    open func request(_ urlRequest: URLRequestConvertible) -> DataRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - urlRequest: The URL request.

#### Returns

The created `DataRequest`.

### `download(_:method:parameters:encoding:headers:to:)`

Creates a `DownloadRequest` to retrieve the contents the specified `url`, `method`, `parameters`, `encoding`,
`headers` and save them to the `destination`.

``` swift
@discardableResult
    open func download(
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

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:to:)`

Creates a `DownloadRequest` to retrieve the contents of a URL based on the specified `urlRequest` and save
them to the `destination`.

``` swift
@discardableResult
    open func download(
        _ urlRequest: URLRequestConvertible,
        to destination: DownloadRequest.DownloadFileDestination? = nil)
        -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - urlRequest: The URL request
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(resumingWith:to:)`

Creates a `DownloadRequest` from the `resumeData` produced from a previous request cancellation to retrieve
the contents of the original request and save them to the `destination`.

``` swift
@discardableResult
    open func download(
        resumingWith resumeData: Data,
        to destination: DownloadRequest.DownloadFileDestination? = nil)
        -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

On the latest release of all the Apple platforms (iOS 10, macOS 10.12, tvOS 10, watchOS 3), `resumeData` is broken
on background URL session configurations. There's an underlying bug in the `resumeData` generation logic where the
data is written incorrectly and will always fail to resume the download. For more information about the bug and
possible workarounds, please refer to the following Stack Overflow post:

  - http://stackoverflow.com/a/39347461/1342462

#### Parameters

  - resumeData: The resume data. This is an opaque data blob produced by `URLSessionDownloadTask` when a task is cancelled. See `URLSession -downloadTask(withResumeData:)` for additional information.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `file`.

``` swift
@discardableResult
    open func upload(
        _ fileURL: URL,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - file: The file to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates a `UploadRequest` from the specified `urlRequest` for uploading the `file`.

``` swift
@discardableResult
    open func upload(_ fileURL: URL, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - file: The file to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `data`.

``` swift
@discardableResult
    open func upload(
        _ data: Data,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - data: The data to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates an `UploadRequest` from the specified `urlRequest` for uploading the `data`.

``` swift
@discardableResult
    open func upload(_ data: Data, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - data: The data to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `stream`.

``` swift
@discardableResult
    open func upload(
        _ stream: InputStream,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - stream: The stream to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates an `UploadRequest` from the specified `urlRequest` for uploading the `stream`.

``` swift
@discardableResult
    open func upload(_ stream: InputStream, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - stream: The stream to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:usingThreshold:to:method:headers:queue:encodingCompletion:)`

Encodes `multipartFormData` using `encodingMemoryThreshold` and calls `encodingCompletion` with new
`UploadRequest` using the `url`, `method` and `headers`.

``` swift
open func upload(
        multipartFormData: @escaping (MultipartFormData) -> Void,
        usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil,
        queue: DispatchQueue? = nil,
        encodingCompletion: ((MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.

### `upload(multipartFormData:usingThreshold:with:queue:encodingCompletion:)`

Encodes `multipartFormData` using `encodingMemoryThreshold` and calls `encodingCompletion` with new
`UploadRequest` using the `urlRequest`.

``` swift
open func upload(
        multipartFormData: @escaping (MultipartFormData) -> Void,
        usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
        with urlRequest: URLRequestConvertible,
        queue: DispatchQueue? = nil,
        encodingCompletion: ((MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - urlRequest: The URL request.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.

### `stream(withHostName:port:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `StreamRequest` for bidirectional streaming using the `hostname` and `port`.

``` swift
@discardableResult
    @available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open func stream(withHostName hostName: String, port: Int) -> StreamRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - hostName: The hostname of the server to connect to.
  - port: The port of the server to connect to.

#### Returns

The created `StreamRequest`.

</dd>
</dl>

### `stream(with:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `StreamRequest` for bidirectional streaming using the `netService`.

``` swift
@discardableResult
    @available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open func stream(with netService: NetService) -> StreamRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - netService: The net service used to identify the endpoint.

#### Returns

The created `StreamRequest`.

</dd>
</dl>

### `request(_:method:parameters:encoding:headers:)`

Creates a `DataRequest` to retrieve the contents of the specified `url`, `method`, `parameters`, `encoding`
and `headers`.

``` swift
@discardableResult
    open func request(
        _ url: URLConvertible,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders? = nil)
        -> DataRequest
```

#### Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:)`

Creates a `DataRequest` to retrieve the contents of a URL based on the specified `urlRequest`.

``` swift
@discardableResult
    open func request(_ urlRequest: URLRequestConvertible) -> DataRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - urlRequest: The URL request.

#### Returns

The created `DataRequest`.

### `download(_:method:parameters:encoding:headers:to:)`

Creates a `DownloadRequest` to retrieve the contents the specified `url`, `method`, `parameters`, `encoding`,
`headers` and save them to the `destination`.

``` swift
@discardableResult
    open func download(
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

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - url: The URL.
  - method: The HTTP method. `.get` by default.
  - parameters: The parameters. `nil` by default.
  - encoding: The parameter encoding. `URLEncoding.default` by default.
  - headers: The HTTP headers. `nil` by default.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:to:)`

Creates a `DownloadRequest` to retrieve the contents of a URL based on the specified `urlRequest` and save
them to the `destination`.

``` swift
@discardableResult
    open func download(
        _ urlRequest: URLRequestConvertible,
        to destination: DownloadRequest.DownloadFileDestination? = nil)
        -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - urlRequest: The URL request
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(resumingWith:to:)`

Creates a `DownloadRequest` from the `resumeData` produced from a previous request cancellation to retrieve
the contents of the original request and save them to the `destination`.

``` swift
@discardableResult
    open func download(
        resumingWith resumeData: Data,
        to destination: DownloadRequest.DownloadFileDestination? = nil)
        -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

On the latest release of all the Apple platforms (iOS 10, macOS 10.12, tvOS 10, watchOS 3), `resumeData` is broken
on background URL session configurations. There's an underlying bug in the `resumeData` generation logic where the
data is written incorrectly and will always fail to resume the download. For more information about the bug and
possible workarounds, please refer to the following Stack Overflow post:

  - http://stackoverflow.com/a/39347461/1342462

#### Parameters

  - resumeData: The resume data. This is an opaque data blob produced by `URLSessionDownloadTask` when a task is cancelled. See `URLSession -downloadTask(withResumeData:)` for additional information.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `file`.

``` swift
@discardableResult
    open func upload(
        _ fileURL: URL,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - file: The file to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates a `UploadRequest` from the specified `urlRequest` for uploading the `file`.

``` swift
@discardableResult
    open func upload(_ fileURL: URL, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - file: The file to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `data`.

``` swift
@discardableResult
    open func upload(
        _ data: Data,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - data: The data to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates an `UploadRequest` from the specified `urlRequest` for uploading the `data`.

``` swift
@discardableResult
    open func upload(_ data: Data, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - data: The data to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:)`

Creates an `UploadRequest` from the specified `url`, `method` and `headers` for uploading the `stream`.

``` swift
@discardableResult
    open func upload(
        _ stream: InputStream,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil)
        -> UploadRequest
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - stream: The stream to upload.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:)`

Creates an `UploadRequest` from the specified `urlRequest` for uploading the `stream`.

``` swift
@discardableResult
    open func upload(_ stream: InputStream, with urlRequest: URLRequestConvertible) -> UploadRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - stream: The stream to upload.
  - urlRequest: The URL request.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:usingThreshold:to:method:headers:queue:encodingCompletion:)`

Encodes `multipartFormData` using `encodingMemoryThreshold` and calls `encodingCompletion` with new
`UploadRequest` using the `url`, `method` and `headers`.

``` swift
open func upload(
        multipartFormData: @escaping (MultipartFormData) -> Void,
        usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil,
        queue: DispatchQueue? = nil,
        encodingCompletion: ((MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.

### `upload(multipartFormData:usingThreshold:with:queue:encodingCompletion:)`

Encodes `multipartFormData` using `encodingMemoryThreshold` and calls `encodingCompletion` with new
`UploadRequest` using the `urlRequest`.

``` swift
open func upload(
        multipartFormData: @escaping (MultipartFormData) -> Void,
        usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
        with urlRequest: URLRequestConvertible,
        queue: DispatchQueue? = nil,
        encodingCompletion: ((MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - urlRequest: The URL request.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.

### `stream(withHostName:port:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `StreamRequest` for bidirectional streaming using the `hostname` and `port`.

``` swift
@discardableResult
    @available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open func stream(withHostName hostName: String, port: Int) -> StreamRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - hostName: The hostname of the server to connect to.
  - port: The port of the server to connect to.

#### Returns

The created `StreamRequest`.

</dd>
</dl>

### `stream(with:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Creates a `StreamRequest` for bidirectional streaming using the `netService`.

``` swift
@discardableResult
    @available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open func stream(with netService: NetService) -> StreamRequest 
```

If `startRequestsImmediately` is `true`, the request will have `resume()` called before being returned.

#### Parameters

  - netService: The net service used to identify the endpoint.

#### Returns

The created `StreamRequest`.

</dd>
</dl>
