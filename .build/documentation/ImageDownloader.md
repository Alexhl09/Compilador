# ImageDownloader

The `ImageDownloader` class is responsible for downloading images in parallel on a prioritized queue. Incoming
downloads are added to the front or back of the queue depending on the download prioritization. Each downloaded
image is cached in the underlying `NSURLCache` as well as the in-memory image cache that supports image filters.
By default, any download request with a cached image equivalent in the image cache will automatically be served the
cached image representation. Additional advanced features include supporting multiple image filters and completion
handlers for a single request.

``` swift
open class ImageDownloader 
```

## Nested Type Aliases

### `CompletionHandler`

The completion handler closure used when an image download completes.

``` swift
public typealias CompletionHandler = (AFIDataResponse<Image>) -> Void
```

### `ProgressHandler`

The progress handler closure called periodically during an image download.

``` swift
public typealias ProgressHandler = DataRequest.ProgressHandler
```

## Initializers

### `init(configuration:downloadPrioritization:maximumActiveDownloads:imageCache:)`

Initializes the `ImageDownloader` instance with the given configuration, download prioritization, maximum active
download count and image cache.

``` swift
public init(configuration: URLSessionConfiguration = ImageDownloader.defaultURLSessionConfiguration(),
                downloadPrioritization: DownloadPrioritization = .fifo,
                maximumActiveDownloads: Int = 4,
                imageCache: ImageRequestCache? = AutoPurgingImageCache()) 
```

#### Parameters

  - configuration: The `URLSessionConfiguration` to use to create the underlying Alamofire `SessionManager` instance.
  - downloadPrioritization: The download prioritization of the download queue. `.fifo` by default.
  - maximumActiveDownloads: The maximum number of active downloads allowed at any given time.
  - imageCache: The image cache used to store all downloaded images in.

#### Returns

The new `ImageDownloader` instance.

### `init(session:downloadPrioritization:maximumActiveDownloads:imageCache:)`

Initializes the `ImageDownloader` instance with the given session manager, download prioritization, maximum
active download count and image cache.

``` swift
public init(session: Session,
                downloadPrioritization: DownloadPrioritization = .fifo,
                maximumActiveDownloads: Int = 4,
                imageCache: ImageRequestCache? = AutoPurgingImageCache()) 
```

#### Parameters

  - session: The Alamofire `Session` instance to handle all download requests.
  - downloadPrioritization: The download prioritization of the download queue. `.fifo` by default.
  - maximumActiveDownloads: The maximum number of active downloads allowed at any given time.
  - imageCache: The image cache used to store all downloaded images in.

#### Returns

The new `ImageDownloader` instance.

## Properties

### `imageCache`

The image cache used to store all downloaded images in.

``` swift
public let imageCache: ImageRequestCache?
```

### `credential`

The credential used for authenticating each download request.

``` swift
open private(set) var credential: URLCredential?
```

### `imageResponseSerializer`

Response serializer used to convert the image data to UIImage.

``` swift
public var imageResponseSerializer 
```

### `session`

The underlying Alamofire `Session` instance used to handle all download requests.

``` swift
public let session: Session
```

### `` `default` ``

The default instance of `ImageDownloader` initialized with default values.

``` swift
public static let `default` 
```

## Methods

### `defaultURLSessionConfiguration()`

Creates a default `URLSessionConfiguration` with common usage parameter values.

``` swift
open class func defaultURLSessionConfiguration() -> URLSessionConfiguration 
```

#### Returns

The default `URLSessionConfiguration` instance.

### `defaultURLCache()`

Creates a default `URLCache` with common usage parameter values.

``` swift
open class func defaultURLCache() -> URLCache 
```

#### Returns

The default `URLCache` instance.

### `addAuthentication(user:password:persistence:)`

Associates an HTTP Basic Auth credential with all future download requests.

``` swift
open func addAuthentication(user: String,
                                password: String,
                                persistence: URLCredential.Persistence = .forSession) 
```

#### Parameters

  - user: The user.
  - password: The password.
  - persistence: The URL credential persistence. `.forSession` by default.

### `addAuthentication(usingCredential:)`

Associates the specified credential with all future download requests.

``` swift
open func addAuthentication(usingCredential credential: URLCredential) 
```

#### Parameters

  - credential: The credential.

### `download(_:cacheKey:receiptID:serializer:filter:progress:progressQueue:completion:)`

Creates a download request using the internal Alamofire `SessionManager` instance for the specified URL request.

``` swift
@discardableResult
    open func download(_ urlRequest: URLRequestConvertible,
                       cacheKey: String? = nil,
                       receiptID: String = UUID().uuidString,
                       serializer: ImageResponseSerializer? = nil,
                       filter: ImageFilter? = nil,
                       progress: ProgressHandler? = nil,
                       progressQueue: DispatchQueue = DispatchQueue.main,
                       completion: CompletionHandler? = nil)
        -> RequestReceipt? 
```

If the same download request is already in the queue or currently being downloaded, the filter and completion
handler are appended to the already existing request. Once the request completes, all filters and completion
handlers attached to the request are executed in the order they were added. Additionally, any filters attached
to the request with the same identifiers are only executed once. The resulting image is then passed into each
completion handler paired with the filter.

You should not attempt to directly cancel the `request` inside the request receipt since other callers may be
relying on the completion of that request. Instead, you should call `cancelRequestForRequestReceipt` with the
returned request receipt to allow the `ImageDownloader` to optimize the cancellation on behalf of all active
callers.

#### Parameters

  - urlRequest: The URL request.
  - cacheKey: An optional key used to identify the image in the cache. Defaults to `nil`.
  - receiptID: The `identifier` for the `RequestReceipt` returned. Defaults to a new, randomly generated UUID.
  - serializer: Image response serializer used to convert the image data to `UIImage`. Defaults to `nil` which will fall back to the instance `imageResponseSerializer`.
  - filter: The image filter to apply to the image after the download is complete. Defaults to `nil`.
  - progress: The closure to be executed periodically during the lifecycle of the request. Defaults to `nil`.
  - progressQueue: The dispatch queue to call the progress closure on. Defaults to the main queue.
  - completion: The closure called when the download request is complete. Defaults to `nil`.

#### Returns

The request receipt for the download request if available. `nil` if the image is stored in the image cache and the URL request cache policy allows the cache to be used.

### `download(_:filter:progress:progressQueue:completion:)`

Creates a download request using the internal Alamofire `SessionManager` instance for each specified URL request.

``` swift
@discardableResult
    open func download(_ urlRequests: [URLRequestConvertible],
                       filter: ImageFilter? = nil,
                       progress: ProgressHandler? = nil,
                       progressQueue: DispatchQueue = DispatchQueue.main,
                       completion: CompletionHandler? = nil)
        -> [RequestReceipt] 
```

For each request, if the same download request is already in the queue or currently being downloaded, the
filter and completion handler are appended to the already existing request. Once the request completes, all
filters and completion handlers attached to the request are executed in the order they were added.
Additionally, any filters attached to the request with the same identifiers are only executed once. The
resulting image is then passed into each completion handler paired with the filter.

You should not attempt to directly cancel any of the `request`s inside the request receipts array since other
callers may be relying on the completion of that request. Instead, you should call
`cancelRequestForRequestReceipt` with the returned request receipt to allow the `ImageDownloader` to optimize
the cancellation on behalf of all active callers.

  - parameter filter         The image filter to apply to the image after each download is complete.

#### Parameters

  - urlRequests: The URL requests.
  - progress: The closure to be executed periodically during the lifecycle of the request. Defaults to `nil`.
  - progressQueue: The dispatch queue to call the progress closure on. Defaults to the main queue.
  - completion: The closure called when each download request is complete.

#### Returns

The request receipts for the download requests if available. If an image is stored in the image cache and the URL request cache policy allows the cache to be used, a receipt will not be returned for that request.

### `cancelRequest(with:)`

Cancels the request contained inside the receipt calls the completion handler with a request cancelled error.

``` swift
open func cancelRequest(with requestReceipt: RequestReceipt) 
```

#### Parameters

  - requestReceipt: The request receipt to cancel.
