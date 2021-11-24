# DownloadRequest

Specific type of `Request` that manages an underlying `URLSessionDownloadTask`.

``` swift
open class DownloadRequest: Request 
```

## Inheritance

[`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request)

## Nested Type Aliases

### `DownloadFileDestination`

A closure executed once a download request has successfully completed in order to determine where to move the
temporary file written to during the download process. The closure takes two arguments:​ the temporary file URL
and the URL response, and returns a two arguments:​ the file URL where the temporary file should be moved and
the options defining how the file should be moved.

``` swift
public typealias DownloadFileDestination = (
        _ temporaryURL: URL,
        _ response: HTTPURLResponse)
        -> (destinationURL: URL, options: DownloadOptions)
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `DownloadFileDestination`

A closure executed once a download request has successfully completed in order to determine where to move the
temporary file written to during the download process. The closure takes two arguments:​ the temporary file URL
and the URL response, and returns a two arguments:​ the file URL where the temporary file should be moved and
the options defining how the file should be moved.

``` swift
public typealias DownloadFileDestination = (
        _ temporaryURL: URL,
        _ response: HTTPURLResponse)
        -> (destinationURL: URL, options: DownloadOptions)
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `DownloadFileDestination`

A closure executed once a download request has successfully completed in order to determine where to move the
temporary file written to during the download process. The closure takes two arguments:​ the temporary file URL
and the URL response, and returns a two arguments:​ the file URL where the temporary file should be moved and
the options defining how the file should be moved.

``` swift
public typealias DownloadFileDestination = (
        _ temporaryURL: URL,
        _ response: HTTPURLResponse)
        -> (destinationURL: URL, options: DownloadOptions)
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (
        _ request: URLRequest?,
        _ response: HTTPURLResponse,
        _ temporaryURL: URL?,
        _ destinationURL: URL?)
        -> ValidationResult
```

### `Destination`

A closure executed once a `DownloadRequest` has successfully completed in order to determine where to move the
temporary file written to during the download process. The closure takes two arguments:​ the temporary file URL
and the URL response, and returns a two arguments:​ the file URL where the temporary file should be moved and
the options defining how the file should be moved.

``` swift
public typealias Destination = (_ temporaryURL: URL,
                                    _ response: HTTPURLResponse) -> (destinationURL: URL, options: Options)
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Destination`

A closure executed once a `DownloadRequest` has successfully completed in order to determine where to move the
temporary file written to during the download process. The closure takes two arguments:​ the temporary file URL
and the URL response, and returns a two arguments:​ the file URL where the temporary file should be moved and
the options defining how the file should be moved.

``` swift
public typealias Destination = (_ temporaryURL: URL,
                                    _ response: HTTPURLResponse) -> (destinationURL: URL, options: Options)
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Destination`

A closure executed once a `DownloadRequest` has successfully completed in order to determine where to move the
temporary file written to during the download process. The closure takes two arguments:​ the temporary file URL
and the URL response, and returns a two arguments:​ the file URL where the temporary file should be moved and
the options defining how the file should be moved.

``` swift
public typealias Destination = (_ temporaryURL: URL,
                                    _ response: HTTPURLResponse) -> (destinationURL: URL, options: Options)
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a URL request, a URL response, a temporary URL and a
destination URL, and returns whether the request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?,
                                   _ response: HTTPURLResponse,
                                   _ fileURL: URL?)
        -> ValidationResult
```

## Properties

### `request`

The request sent or to be sent to the server.

``` swift
open override var request: URLRequest? 
```

### `resumeData`

The resume data of the underlying download task if available after a failure.

``` swift
open var resumeData: Data? 
```

### `progress`

The progress of downloading the response data from the server for the request.

``` swift
open var progress: Progress 
```

### `request`

The request sent or to be sent to the server.

``` swift
open override var request: URLRequest? 
```

### `resumeData`

The resume data of the underlying download task if available after a failure.

``` swift
open var resumeData: Data? 
```

### `progress`

The progress of downloading the response data from the server for the request.

``` swift
open var progress: Progress 
```

### `request`

The request sent or to be sent to the server.

``` swift
open override var request: URLRequest? 
```

### `resumeData`

The resume data of the underlying download task if available after a failure.

``` swift
open var resumeData: Data? 
```

### `progress`

The progress of downloading the response data from the server for the request.

``` swift
open var progress: Progress 
```

### `resumeData`

If the download is resumable and eventually cancelled, this value may be used to resume the download using the
`download(resumingWith data:​)` API.

``` swift
public var resumeData: Data? 
```

> 

### `fileURL`

If the download is successful, the `URL` where the file was downloaded.

``` swift
public var fileURL: URL? 
```

### `downloadable`

`Downloadable` value used for this instance.

``` swift
public let downloadable: Downloadable
```

### `resumeData`

If the download is resumable and eventually cancelled, this value may be used to resume the download using the
`download(resumingWith data:​)` API.

``` swift
public var resumeData: Data? 
```

> 

### `fileURL`

If the download is successful, the `URL` where the file was downloaded.

``` swift
public var fileURL: URL? 
```

### `downloadable`

`Downloadable` value used for this instance.

``` swift
public let downloadable: Downloadable
```

### `resumeData`

If the download is resumable and eventually cancelled, this value may be used to resume the download using the
`download(resumingWith data:​)` API.

``` swift
public var resumeData: Data? 
```

> 

### `fileURL`

If the download is successful, the `URL` where the file was downloaded.

``` swift
public var fileURL: URL? 
```

### `downloadable`

`Downloadable` value used for this instance.

``` swift
public let downloadable: Downloadable
```

## Methods

### `cancel()`

Cancels the request.

``` swift
open override func cancel() 
```

### `downloadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the `Request` as data is read from the server.

``` swift
@discardableResult
    open func downloadProgress(queue: DispatchQueue = DispatchQueue.main, closure: @escaping ProgressHandler) -> Self 
```

#### Parameters

  - queue: The dispatch queue to execute the closure on.
  - closure: The code to be executed periodically as data is read from the server.

#### Returns

The request.

### `suggestedDownloadDestination(for:in:)`

Creates a download file destination closure which uses the default file manager to move the temporary file to a
file URL in the first available directory with the specified search path directory and search path domain mask.

``` swift
open class func suggestedDownloadDestination(
        for directory: FileManager.SearchPathDirectory = .documentDirectory,
        in domain: FileManager.SearchPathDomainMask = .userDomainMask)
        -> DownloadFileDestination
```

#### Parameters

  - directory: The search path directory. `.DocumentDirectory` by default.
  - domain: The search path domain mask. `.UserDomainMask` by default.

#### Returns

A download file destination closure.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `cancel()`

Cancels the request.

``` swift
override open func cancel() 
```

### `cancel(createResumeData:)`

Cancels the request.

``` swift
open func cancel(createResumeData: Bool) 
```

#### Parameters

  - createResumeData: Determines whether resume data is created via the underlying download task or not.

### `downloadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the `Request` as data is read from the server.

``` swift
@discardableResult
    open func downloadProgress(queue: DispatchQueue = DispatchQueue.main, closure: @escaping ProgressHandler) -> Self 
```

#### Parameters

  - queue: The dispatch queue to execute the closure on.
  - closure: The code to be executed periodically as data is read from the server.

#### Returns

The request.

### `suggestedDownloadDestination(for:in:)`

Creates a download file destination closure which uses the default file manager to move the temporary file to a
file URL in the first available directory with the specified search path directory and search path domain mask.

``` swift
open class func suggestedDownloadDestination(
        for directory: FileManager.SearchPathDirectory = .documentDirectory,
        in domain: FileManager.SearchPathDomainMask = .userDomainMask)
        -> DownloadFileDestination
```

#### Parameters

  - directory: The search path directory. `.DocumentDirectory` by default.
  - domain: The search path domain mask. `.UserDomainMask` by default.

#### Returns

A download file destination closure.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `cancel()`

Cancels the request.

``` swift
override open func cancel() 
```

### `cancel(createResumeData:)`

Cancels the request.

``` swift
open func cancel(createResumeData: Bool) 
```

#### Parameters

  - createResumeData: Determines whether resume data is created via the underlying download task or not.

### `downloadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the `Request` as data is read from the server.

``` swift
@discardableResult
    open func downloadProgress(queue: DispatchQueue = DispatchQueue.main, closure: @escaping ProgressHandler) -> Self 
```

#### Parameters

  - queue: The dispatch queue to execute the closure on.
  - closure: The code to be executed periodically as data is read from the server.

#### Returns

The request.

### `suggestedDownloadDestination(for:in:)`

Creates a download file destination closure which uses the default file manager to move the temporary file to a
file URL in the first available directory with the specified search path directory and search path domain mask.

``` swift
open class func suggestedDownloadDestination(
        for directory: FileManager.SearchPathDirectory = .documentDirectory,
        in domain: FileManager.SearchPathDomainMask = .userDomainMask)
        -> DownloadFileDestination
```

#### Parameters

  - directory: The search path directory. `.DocumentDirectory` by default.
  - domain: The search path domain mask. `.UserDomainMask` by default.

#### Returns

A download file destination closure.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DefaultDownloadResponse) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<T: DownloadResponseSerializerProtocol>(
        queue: DispatchQueue? = nil,
        responseSerializer: T,
        completionHandler: @escaping (DownloadResponse<T.SerializedObject>) -> Void)
        -> Self
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination url.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `dataResponseSerializer()`

Creates a response serializer that returns the associated data as-is.

``` swift
public static func dataResponseSerializer() -> DownloadResponseSerializer<Data> 
```

#### Returns

A data response serializer.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(
        queue: DispatchQueue? = nil,
        completionHandler: @escaping (DownloadResponse<Data>) -> Void)
        -> Self
```

#### Parameters

  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `stringResponseSerializer(encoding:)`

Creates a response serializer that returns a result string type initialized from the response data with
the specified string encoding.

``` swift
public static func stringResponseSerializer(encoding: String.Encoding? = nil) -> DownloadResponseSerializer<String> 
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.

#### Returns

A string response serializer.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:encoding:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(
        queue: DispatchQueue? = nil,
        encoding: String.Encoding? = nil,
        completionHandler: @escaping (DownloadResponse<String>) -> Void)
        -> Self
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `jsonResponseSerializer(options:)`

Creates a response serializer that returns a JSON object result type constructed from the response data using
`JSONSerialization` with the specified reading options.

``` swift
public static func jsonResponseSerializer(
        options: JSONSerialization.ReadingOptions = .allowFragments)
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.

#### Returns

A JSON object response serializer.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(
        queue: DispatchQueue? = nil,
        options: JSONSerialization.ReadingOptions = .allowFragments,
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `propertyListResponseSerializer(options:)`

Creates a response serializer that returns an object constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func propertyListResponseSerializer(
        options: PropertyListSerialization.ReadOptions = [])
        -> DownloadResponseSerializer<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.

#### Returns

A property list object response serializer.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responsePropertyList(queue:options:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func responsePropertyList(
        queue: DispatchQueue? = nil,
        options: PropertyListSerialization.ReadOptions = [],
        completionHandler: @escaping (DownloadResponse<Any>) -> Void)
        -> Self
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - validation: A closure to validate the request.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - range: The range of acceptable status codes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `suggestedDownloadDestination(for:in:options:)`

Creates a download file destination closure which uses the default file manager to move the temporary file to a
file URL in the first available directory with the specified search path directory and search path domain mask.

``` swift
public class func suggestedDownloadDestination(for directory: FileManager.SearchPathDirectory = .documentDirectory,
                                                   in domain: FileManager.SearchPathDomainMask = .userDomainMask,
                                                   options: Options = []) -> Destination 
```

#### Parameters

  - directory: The search path directory. `.documentDirectory` by default.
  - domain: The search path domain mask. `.userDomainMask` by default.
  - options: `DownloadRequest.Options` used when moving the downloaded file to its destination. None by default.

#### Returns

The `Destination` closure.

### `task(forResumeData:using:)`

Creates a `URLSessionTask` from the provided resume data.

``` swift
public func task(forResumeData data: Data, using session: URLSession) -> URLSessionTask 
```

#### Parameters

  - data: `Data` used to resume the download.
  - session: `URLSession` used to create the `URLSessionTask`.

#### Returns

The `URLSessionTask` created.

### `cancel()`

Cancels the instance. Once cancelled, a `DownloadRequest` can no longer be resumed or suspended.

``` swift
@discardableResult
    override public func cancel() -> Self 
```

> 

#### Returns

The instance.

### `cancel(producingResumeData:)`

Cancels the instance, optionally producing resume data. Once cancelled, a `DownloadRequest` can no longer be
resumed or suspended.

``` swift
@discardableResult
    public func cancel(producingResumeData shouldProduceResumeData: Bool) -> Self 
```

> 

#### Returns

The instance.

### `cancel(byProducingResumeData:)`

Cancels the instance while producing resume data. Once cancelled, a `DownloadRequest` can no longer be resumed
or suspended.

``` swift
@discardableResult
    public func cancel(byProducingResumeData completionHandler: @escaping (_ data: Data?) -> Void) -> Self 
```

> 

#### Parameters

  - completionHandler: The completion handler that is called when the download has been successfully cancelled. It is not guaranteed to be called on a particular queue, so you may want use an appropriate queue to perform your work.

#### Returns

The instance.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

> 

#### Parameters

  - validation: `Validation` closure to validate the response.

#### Returns

The instance.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `suggestedDownloadDestination(for:in:options:)`

Creates a download file destination closure which uses the default file manager to move the temporary file to a
file URL in the first available directory with the specified search path directory and search path domain mask.

``` swift
public class func suggestedDownloadDestination(for directory: FileManager.SearchPathDirectory = .documentDirectory,
                                                   in domain: FileManager.SearchPathDomainMask = .userDomainMask,
                                                   options: Options = []) -> Destination 
```

#### Parameters

  - directory: The search path directory. `.documentDirectory` by default.
  - domain: The search path domain mask. `.userDomainMask` by default.
  - options: `DownloadRequest.Options` used when moving the downloaded file to its destination. None by default.

#### Returns

The `Destination` closure.

### `task(forResumeData:using:)`

Creates a `URLSessionTask` from the provided resume data.

``` swift
public func task(forResumeData data: Data, using session: URLSession) -> URLSessionTask 
```

#### Parameters

  - data: `Data` used to resume the download.
  - session: `URLSession` used to create the `URLSessionTask`.

#### Returns

The `URLSessionTask` created.

### `cancel()`

Cancels the instance. Once cancelled, a `DownloadRequest` can no longer be resumed or suspended.

``` swift
@discardableResult
    override public func cancel() -> Self 
```

> 

#### Returns

The instance.

### `cancel(producingResumeData:)`

Cancels the instance, optionally producing resume data. Once cancelled, a `DownloadRequest` can no longer be
resumed or suspended.

``` swift
@discardableResult
    public func cancel(producingResumeData shouldProduceResumeData: Bool) -> Self 
```

> 

#### Returns

The instance.

### `cancel(byProducingResumeData:)`

Cancels the instance while producing resume data. Once cancelled, a `DownloadRequest` can no longer be resumed
or suspended.

``` swift
@discardableResult
    public func cancel(byProducingResumeData completionHandler: @escaping (_ data: Data?) -> Void) -> Self 
```

> 

#### Parameters

  - completionHandler: The completion handler that is called when the download has been successfully cancelled. It is not guaranteed to be called on a particular queue, so you may want use an appropriate queue to perform your work.

#### Returns

The instance.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

> 

#### Parameters

  - validation: `Validation` closure to validate the response.

#### Returns

The instance.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `ResponseSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: ResponseSerializer, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `ResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishResponse(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance using the given `DownloadResponseSerializerProtocol` and
`DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishResponse<Serializer: DownloadResponseSerializerProtocol, T>(using serializer: Serializer, on queue: DispatchQueue = .main) -> DownloadResponsePublisher<T>
        where Serializer.SerializedObject == T 
```

#### Parameters

  - serializer: `DownloadResponseSerializer` used to serialize the response `Data` from disk.
  - queue: `DispatchQueue` on which the `DownloadResponse` will be published.`.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishData(queue:preprocessor:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DataResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main,
                            preprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                            emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                            emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishString(queue:preprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `StringResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main,
                              preprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                              encoding: String.Encoding? = nil,
                              emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                              emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) -> DownloadResponsePublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - encoding: `String.Encoding` to parse the response. `nil` by default, in which case the encoding will be determined by the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:preprocessor:decoder:emptyResponseCodes:emptyResponseMethods:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataResponsePublisher` for this instance and uses a `DecodableResponseSerializer` to serialize the
response.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               preprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                               decoder: DataDecoder = JSONDecoder(),
                                               emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                               emptyResponseMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods) -> DownloadResponsePublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode response `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataResponse` will be published. `.main` by default.
  - preprocessor: `DataPreprocessor` which filters the `Data` before serialization. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` instance used to decode response `Data`. `JSONDecoder()` by default.
  - emptyResponseCodes: `Set<Int>` of HTTP status codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: `Set<HTTPMethod>` of `HTTPMethod`s for which empty responses are allowed, regardless of status code. `[.head]` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `publishUnserialized(on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DownloadResponsePublisher` for this instance which does not serialize the response before publishing.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishUnserialized(on queue: DispatchQueue = .main) -> DownloadResponsePublisher<URL?> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DownloadResponse` will be published. `.main` by default.

#### Returns

The `DownloadResponsePublisher`.

</dd>
</dl>

### `suggestedDownloadDestination(for:in:options:)`

Creates a download file destination closure which uses the default file manager to move the temporary file to a
file URL in the first available directory with the specified search path directory and search path domain mask.

``` swift
public class func suggestedDownloadDestination(for directory: FileManager.SearchPathDirectory = .documentDirectory,
                                                   in domain: FileManager.SearchPathDomainMask = .userDomainMask,
                                                   options: Options = []) -> Destination 
```

#### Parameters

  - directory: The search path directory. `.documentDirectory` by default.
  - domain: The search path domain mask. `.userDomainMask` by default.
  - options: `DownloadRequest.Options` used when moving the downloaded file to its destination. None by default.

#### Returns

The `Destination` closure.

### `task(forResumeData:using:)`

Creates a `URLSessionTask` from the provided resume data.

``` swift
public func task(forResumeData data: Data, using session: URLSession) -> URLSessionTask 
```

#### Parameters

  - data: `Data` used to resume the download.
  - session: `URLSession` used to create the `URLSessionTask`.

#### Returns

The `URLSessionTask` created.

### `cancel()`

Cancels the instance. Once cancelled, a `DownloadRequest` can no longer be resumed or suspended.

``` swift
@discardableResult
    override public func cancel() -> Self 
```

> 

#### Returns

The instance.

### `cancel(producingResumeData:)`

Cancels the instance, optionally producing resume data. Once cancelled, a `DownloadRequest` can no longer be
resumed or suspended.

``` swift
@discardableResult
    public func cancel(producingResumeData shouldProduceResumeData: Bool) -> Self 
```

> 

#### Returns

The instance.

### `cancel(byProducingResumeData:)`

Cancels the instance while producing resume data. Once cancelled, a `DownloadRequest` can no longer be resumed
or suspended.

``` swift
@discardableResult
    public func cancel(byProducingResumeData completionHandler: @escaping (_ data: Data?) -> Void) -> Self 
```

> 

#### Parameters

  - completionHandler: The completion handler that is called when the download has been successfully cancelled. It is not guaranteed to be called on a particular queue, so you may want use an appropriate queue to perform your work.

#### Returns

The instance.

### `validate(_:)`

Validates the request, using the specified closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

> 

#### Parameters

  - validation: `Validation` closure to validate the response.

#### Returns

The instance.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response(queue: DispatchQueue = .main,
                         completionHandler: @escaping (AFDownloadResponse<URL?>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `response(queue:responseSerializer:completionHandler:)`

Adds a handler to be called once the request has finished.

``` swift
@discardableResult
    public func response<Serializer: DownloadResponseSerializerProtocol>(queue: DispatchQueue = .main,
                                                                         responseSerializer: Serializer,
                                                                         completionHandler: @escaping (AFDownloadResponse<Serializer.SerializedObject>) -> Void)
        -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - responseSerializer: The response serializer responsible for serializing the request, response, and data contained in the destination `URL`.
  - completionHandler: The code to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseData(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DataResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseData(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods,
                             completionHandler: @escaping (AFDownloadResponse<Data>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is called. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseString(queue:dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `StringResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseString(queue: DispatchQueue = .main,
                               dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                               encoding: String.Encoding? = nil,
                               emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                               emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods,
                               completionHandler: @escaping (AFDownloadResponse<String>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseJSON(queue:dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:completionHandler:)`

Adds a handler using a `JSONResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseJSON(queue: DispatchQueue = .main,
                             dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                             emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                             emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                             options: JSONSerialization.ReadingOptions = .allowFragments,
                             completionHandler: @escaping (AFDownloadResponse<Any>) -> Void) -> Self 
```

#### Parameters

  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `responseDecodable(of:queue:dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:completionHandler:)`

Adds a handler using a `DecodableResponseSerializer` to be called once the request has finished.

``` swift
@discardableResult
    public func responseDecodable<T: Decodable>(of type: T.Type = T.self,
                                                queue: DispatchQueue = .main,
                                                dataPreprocessor: DataPreprocessor = DecodableResponseSerializer<T>.defaultDataPreprocessor,
                                                decoder: DataDecoder = JSONDecoder(),
                                                emptyResponseCodes: Set<Int> = DecodableResponseSerializer<T>.defaultEmptyResponseCodes,
                                                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer<T>.defaultEmptyRequestMethods,
                                                completionHandler: @escaping (AFDownloadResponse<T>) -> Void) -> Self 
```

#### Parameters

  - type: `Decodable` type to decode from response data.
  - queue: The queue on which the completion handler is dispatched. `.main` by default.
  - dataPreprocessor: `DataPreprocessor` which processes the received `Data` before calling the `completionHandler`. `PassthroughPreprocessor()` by default.
  - decoder: `DataDecoder` to use to decode the response. `JSONDecoder()` by default.
  - encoding: The string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: HTTP status codes for which empty responses are always valid. `[204, 205]` by default.
  - emptyRequestMethods: `HTTPMethod`s for which empty responses are always valid. `[.head]` by default.
  - options: `JSONSerialization.ReadingOptions` used when parsing the response. `.allowFragments` by default.
  - completionHandler: A closure to be executed once the request has finished.

#### Returns

The request.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The request.
