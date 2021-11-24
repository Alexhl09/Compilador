# SessionDelegate

Responsible for handling all delegate callbacks for the underlying session.

``` swift
open class SessionDelegate: NSObject 
```

## Inheritance

`NSObject`, `NSObject`, `NSObject`, `NSObject`, `NSObject`, `NSObject`, `URLSessionDataDelegate`, `URLSessionDataDelegate`, `URLSessionDataDelegate`, `URLSessionDataDelegate`, `URLSessionDataDelegate`, `URLSessionDataDelegate`, `URLSessionDelegate`, `URLSessionDelegate`, `URLSessionDelegate`, `URLSessionDelegate`, `URLSessionDelegate`, `URLSessionDelegate`, `URLSessionDownloadDelegate`, `URLSessionDownloadDelegate`, `URLSessionDownloadDelegate`, `URLSessionDownloadDelegate`, `URLSessionDownloadDelegate`, `URLSessionDownloadDelegate`, `URLSessionStreamDelegate`, `URLSessionStreamDelegate`, `URLSessionStreamDelegate`, `URLSessionStreamDelegate`, `URLSessionStreamDelegate`, `URLSessionStreamDelegate`, `URLSessionTaskDelegate`, `URLSessionTaskDelegate`, `URLSessionTaskDelegate`, `URLSessionTaskDelegate`, `URLSessionTaskDelegate`, `URLSessionTaskDelegate`

## Initializers

### `init()`

Initializes the `SessionDelegate` instance.

``` swift
public override init() 
```

#### Returns

The new `SessionDelegate` instance.

### `init()`

Initializes the `SessionDelegate` instance.

``` swift
public override init() 
```

#### Returns

The new `SessionDelegate` instance.

### `init()`

Initializes the `SessionDelegate` instance.

``` swift
public override init() 
```

#### Returns

The new `SessionDelegate` instance.

### `init(fileManager:)`

Creates an instance from the given `FileManager`.

``` swift
public init(fileManager: FileManager = .default) 
```

#### Parameters

  - fileManager: `FileManager` to use for underlying file management, such as moving downloaded files. `.default` by default.

### `init(fileManager:)`

Creates an instance from the given `FileManager`.

``` swift
public init(fileManager: FileManager = .default) 
```

#### Parameters

  - fileManager: `FileManager` to use for underlying file management, such as moving downloaded files. `.default` by default.

### `init(fileManager:)`

Creates an instance from the given `FileManager`.

``` swift
public init(fileManager: FileManager = .default) 
```

#### Parameters

  - fileManager: `FileManager` to use for underlying file management, such as moving downloaded files. `.default` by default.

## Properties

### `sessionDidBecomeInvalidWithError`

Overrides default behavior for URLSessionDelegate method `urlSession(_:​didBecomeInvalidWithError:​)`.

``` swift
open var sessionDidBecomeInvalidWithError: ((URLSession, Error?) -> Void)?
```

### `sessionDidReceiveChallenge`

Overrides default behavior for URLSessionDelegate method `urlSession(_:​didReceive:​completionHandler:​)`.

``` swift
open var sessionDidReceiveChallenge: ((URLSession, URLAuthenticationChallenge) -> (URLSession.AuthChallengeDisposition, URLCredential?))?
```

### `sessionDidReceiveChallengeWithCompletion`

Overrides all behavior for URLSessionDelegate method `urlSession(_:​didReceive:​completionHandler:​)` and requires the caller to call the `completionHandler`.

``` swift
open var sessionDidReceiveChallengeWithCompletion: ((URLSession, URLAuthenticationChallenge, (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) -> Void)?
```

### `sessionDidFinishEventsForBackgroundURLSession`

Overrides default behavior for URLSessionDelegate method `urlSessionDidFinishEvents(forBackgroundURLSession:​)`.

``` swift
open var sessionDidFinishEventsForBackgroundURLSession: ((URLSession) -> Void)?
```

### `taskWillPerformHTTPRedirection`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)`.

``` swift
open var taskWillPerformHTTPRedirection: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest) -> URLRequest?)?
```

### `taskWillPerformHTTPRedirectionWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskWillPerformHTTPRedirectionWithCompletion: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest, (URLRequest?) -> Void) -> Void)?
```

### `taskDidReceiveChallenge`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didReceive:​completionHandler:​)`.

``` swift
open var taskDidReceiveChallenge: ((URLSession, URLSessionTask, URLAuthenticationChallenge) -> (URLSession.AuthChallengeDisposition, URLCredential?))?
```

### `taskDidReceiveChallengeWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didReceive:​completionHandler:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskDidReceiveChallengeWithCompletion: ((URLSession, URLSessionTask, URLAuthenticationChallenge, (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) -> Void)?
```

### `taskNeedNewBodyStream`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​needNewBodyStream:​)`.

``` swift
open var taskNeedNewBodyStream: ((URLSession, URLSessionTask) -> InputStream?)?
```

### `taskNeedNewBodyStreamWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​needNewBodyStream:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskNeedNewBodyStreamWithCompletion: ((URLSession, URLSessionTask, (InputStream?) -> Void) -> Void)?
```

### `taskDidSendBodyData`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)`.

``` swift
open var taskDidSendBodyData: ((URLSession, URLSessionTask, Int64, Int64, Int64) -> Void)?
```

### `taskDidComplete`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didCompleteWithError:​)`.

``` swift
open var taskDidComplete: ((URLSession, URLSessionTask, Error?) -> Void)?
```

### `dataTaskDidReceiveResponse`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​completionHandler:​)`.

``` swift
open var dataTaskDidReceiveResponse: ((URLSession, URLSessionDataTask, URLResponse) -> URLSession.ResponseDisposition)?
```

### `dataTaskDidReceiveResponseWithCompletion`

Overrides all behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​completionHandler:​)` and
requires caller to call the `completionHandler`.

``` swift
open var dataTaskDidReceiveResponseWithCompletion: ((URLSession, URLSessionDataTask, URLResponse, (URLSession.ResponseDisposition) -> Void) -> Void)?
```

### `dataTaskDidBecomeDownloadTask`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didBecome:​)`.

``` swift
open var dataTaskDidBecomeDownloadTask: ((URLSession, URLSessionDataTask, URLSessionDownloadTask) -> Void)?
```

### `dataTaskDidReceiveData`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​)`.

``` swift
open var dataTaskDidReceiveData: ((URLSession, URLSessionDataTask, Data) -> Void)?
```

### `dataTaskWillCacheResponse`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)`.

``` swift
open var dataTaskWillCacheResponse: ((URLSession, URLSessionDataTask, CachedURLResponse) -> CachedURLResponse?)?
```

### `dataTaskWillCacheResponseWithCompletion`

Overrides all behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` and
requires caller to call the `completionHandler`.

``` swift
open var dataTaskWillCacheResponseWithCompletion: ((URLSession, URLSessionDataTask, CachedURLResponse, (CachedURLResponse?) -> Void) -> Void)?
```

### `downloadTaskDidFinishDownloadingToURL`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)`.

``` swift
open var downloadTaskDidFinishDownloadingToURL: ((URLSession, URLSessionDownloadTask, URL) -> Void)?
```

### `downloadTaskDidWriteData`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)`.

``` swift
open var downloadTaskDidWriteData: ((URLSession, URLSessionDownloadTask, Int64, Int64, Int64) -> Void)?
```

### `downloadTaskDidResumeAtOffset`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)`.

``` swift
open var downloadTaskDidResumeAtOffset: ((URLSession, URLSessionDownloadTask, Int64, Int64) -> Void)?
```

### `streamTaskReadClosed`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​readClosedFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskReadClosed: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskWriteClosed`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​writeClosedFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskWriteClosed: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskBetterRouteDiscovered`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​betterRouteDiscoveredFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskBetterRouteDiscovered: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskDidBecomeInputAndOutputStreams`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​streamTask:​didBecome:​outputStream:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskDidBecomeInputAndOutputStreams: ((URLSession, URLSessionStreamTask, InputStream, OutputStream) -> Void)? 
```

</dd>
</dl>

### `sessionDidBecomeInvalidWithError`

Overrides default behavior for URLSessionDelegate method `urlSession(_:​didBecomeInvalidWithError:​)`.

``` swift
open var sessionDidBecomeInvalidWithError: ((URLSession, Error?) -> Void)?
```

### `sessionDidReceiveChallenge`

Overrides default behavior for URLSessionDelegate method `urlSession(_:​didReceive:​completionHandler:​)`.

``` swift
open var sessionDidReceiveChallenge: ((URLSession, URLAuthenticationChallenge) -> (URLSession.AuthChallengeDisposition, URLCredential?))?
```

### `sessionDidReceiveChallengeWithCompletion`

Overrides all behavior for URLSessionDelegate method `urlSession(_:​didReceive:​completionHandler:​)` and requires the caller to call the `completionHandler`.

``` swift
open var sessionDidReceiveChallengeWithCompletion: ((URLSession, URLAuthenticationChallenge, @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) -> Void)?
```

### `sessionDidFinishEventsForBackgroundURLSession`

Overrides default behavior for URLSessionDelegate method `urlSessionDidFinishEvents(forBackgroundURLSession:​)`.

``` swift
open var sessionDidFinishEventsForBackgroundURLSession: ((URLSession) -> Void)?
```

### `taskWillPerformHTTPRedirection`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)`.

``` swift
open var taskWillPerformHTTPRedirection: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest) -> URLRequest?)?
```

### `taskWillPerformHTTPRedirectionWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskWillPerformHTTPRedirectionWithCompletion: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest, @escaping (URLRequest?) -> Void) -> Void)?
```

### `taskDidReceiveChallenge`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didReceive:​completionHandler:​)`.

``` swift
open var taskDidReceiveChallenge: ((URLSession, URLSessionTask, URLAuthenticationChallenge) -> (URLSession.AuthChallengeDisposition, URLCredential?))?
```

### `taskDidReceiveChallengeWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didReceive:​completionHandler:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskDidReceiveChallengeWithCompletion: ((URLSession, URLSessionTask, URLAuthenticationChallenge, @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) -> Void)?
```

### `taskNeedNewBodyStream`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​needNewBodyStream:​)`.

``` swift
open var taskNeedNewBodyStream: ((URLSession, URLSessionTask) -> InputStream?)?
```

### `taskNeedNewBodyStreamWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​needNewBodyStream:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskNeedNewBodyStreamWithCompletion: ((URLSession, URLSessionTask, @escaping (InputStream?) -> Void) -> Void)?
```

### `taskDidSendBodyData`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)`.

``` swift
open var taskDidSendBodyData: ((URLSession, URLSessionTask, Int64, Int64, Int64) -> Void)?
```

### `taskDidComplete`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didCompleteWithError:​)`.

``` swift
open var taskDidComplete: ((URLSession, URLSessionTask, Error?) -> Void)?
```

### `dataTaskDidReceiveResponse`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​completionHandler:​)`.

``` swift
open var dataTaskDidReceiveResponse: ((URLSession, URLSessionDataTask, URLResponse) -> URLSession.ResponseDisposition)?
```

### `dataTaskDidReceiveResponseWithCompletion`

Overrides all behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​completionHandler:​)` and
requires caller to call the `completionHandler`.

``` swift
open var dataTaskDidReceiveResponseWithCompletion: ((URLSession, URLSessionDataTask, URLResponse, @escaping (URLSession.ResponseDisposition) -> Void) -> Void)?
```

### `dataTaskDidBecomeDownloadTask`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didBecome:​)`.

``` swift
open var dataTaskDidBecomeDownloadTask: ((URLSession, URLSessionDataTask, URLSessionDownloadTask) -> Void)?
```

### `dataTaskDidReceiveData`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​)`.

``` swift
open var dataTaskDidReceiveData: ((URLSession, URLSessionDataTask, Data) -> Void)?
```

### `dataTaskWillCacheResponse`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)`.

``` swift
open var dataTaskWillCacheResponse: ((URLSession, URLSessionDataTask, CachedURLResponse) -> CachedURLResponse?)?
```

### `dataTaskWillCacheResponseWithCompletion`

Overrides all behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` and
requires caller to call the `completionHandler`.

``` swift
open var dataTaskWillCacheResponseWithCompletion: ((URLSession, URLSessionDataTask, CachedURLResponse, @escaping (CachedURLResponse?) -> Void) -> Void)?
```

### `downloadTaskDidFinishDownloadingToURL`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)`.

``` swift
open var downloadTaskDidFinishDownloadingToURL: ((URLSession, URLSessionDownloadTask, URL) -> Void)?
```

### `downloadTaskDidWriteData`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)`.

``` swift
open var downloadTaskDidWriteData: ((URLSession, URLSessionDownloadTask, Int64, Int64, Int64) -> Void)?
```

### `downloadTaskDidResumeAtOffset`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)`.

``` swift
open var downloadTaskDidResumeAtOffset: ((URLSession, URLSessionDownloadTask, Int64, Int64) -> Void)?
```

### `streamTaskReadClosed`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​readClosedFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskReadClosed: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskWriteClosed`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​writeClosedFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskWriteClosed: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskBetterRouteDiscovered`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​betterRouteDiscoveredFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskBetterRouteDiscovered: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskDidBecomeInputAndOutputStreams`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​streamTask:​didBecome:​outputStream:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskDidBecomeInputAndOutputStreams: ((URLSession, URLSessionStreamTask, InputStream, OutputStream) -> Void)? 
```

</dd>
</dl>

### `sessionDidBecomeInvalidWithError`

Overrides default behavior for URLSessionDelegate method `urlSession(_:​didBecomeInvalidWithError:​)`.

``` swift
open var sessionDidBecomeInvalidWithError: ((URLSession, Error?) -> Void)?
```

### `sessionDidReceiveChallenge`

Overrides default behavior for URLSessionDelegate method `urlSession(_:​didReceive:​completionHandler:​)`.

``` swift
open var sessionDidReceiveChallenge: ((URLSession, URLAuthenticationChallenge) -> (URLSession.AuthChallengeDisposition, URLCredential?))?
```

### `sessionDidReceiveChallengeWithCompletion`

Overrides all behavior for URLSessionDelegate method `urlSession(_:​didReceive:​completionHandler:​)` and requires the caller to call the `completionHandler`.

``` swift
open var sessionDidReceiveChallengeWithCompletion: ((URLSession, URLAuthenticationChallenge, @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) -> Void)?
```

### `sessionDidFinishEventsForBackgroundURLSession`

Overrides default behavior for URLSessionDelegate method `urlSessionDidFinishEvents(forBackgroundURLSession:​)`.

``` swift
open var sessionDidFinishEventsForBackgroundURLSession: ((URLSession) -> Void)?
```

### `taskWillPerformHTTPRedirection`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)`.

``` swift
open var taskWillPerformHTTPRedirection: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest) -> URLRequest?)?
```

### `taskWillPerformHTTPRedirectionWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskWillPerformHTTPRedirectionWithCompletion: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest, @escaping (URLRequest?) -> Void) -> Void)?
```

### `taskDidReceiveChallenge`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didReceive:​completionHandler:​)`.

``` swift
open var taskDidReceiveChallenge: ((URLSession, URLSessionTask, URLAuthenticationChallenge) -> (URLSession.AuthChallengeDisposition, URLCredential?))?
```

### `taskDidReceiveChallengeWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didReceive:​completionHandler:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskDidReceiveChallengeWithCompletion: ((URLSession, URLSessionTask, URLAuthenticationChallenge, @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) -> Void)?
```

### `taskNeedNewBodyStream`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​needNewBodyStream:​)`.

``` swift
open var taskNeedNewBodyStream: ((URLSession, URLSessionTask) -> InputStream?)?
```

### `taskNeedNewBodyStreamWithCompletion`

Overrides all behavior for URLSessionTaskDelegate method `urlSession(_:​task:​needNewBodyStream:​)` and
requires the caller to call the `completionHandler`.

``` swift
open var taskNeedNewBodyStreamWithCompletion: ((URLSession, URLSessionTask, @escaping (InputStream?) -> Void) -> Void)?
```

### `taskDidSendBodyData`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)`.

``` swift
open var taskDidSendBodyData: ((URLSession, URLSessionTask, Int64, Int64, Int64) -> Void)?
```

### `taskDidComplete`

Overrides default behavior for URLSessionTaskDelegate method `urlSession(_:​task:​didCompleteWithError:​)`.

``` swift
open var taskDidComplete: ((URLSession, URLSessionTask, Error?) -> Void)?
```

### `dataTaskDidReceiveResponse`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​completionHandler:​)`.

``` swift
open var dataTaskDidReceiveResponse: ((URLSession, URLSessionDataTask, URLResponse) -> URLSession.ResponseDisposition)?
```

### `dataTaskDidReceiveResponseWithCompletion`

Overrides all behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​completionHandler:​)` and
requires caller to call the `completionHandler`.

``` swift
open var dataTaskDidReceiveResponseWithCompletion: ((URLSession, URLSessionDataTask, URLResponse, @escaping (URLSession.ResponseDisposition) -> Void) -> Void)?
```

### `dataTaskDidBecomeDownloadTask`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didBecome:​)`.

``` swift
open var dataTaskDidBecomeDownloadTask: ((URLSession, URLSessionDataTask, URLSessionDownloadTask) -> Void)?
```

### `dataTaskDidReceiveData`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​didReceive:​)`.

``` swift
open var dataTaskDidReceiveData: ((URLSession, URLSessionDataTask, Data) -> Void)?
```

### `dataTaskWillCacheResponse`

Overrides default behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)`.

``` swift
open var dataTaskWillCacheResponse: ((URLSession, URLSessionDataTask, CachedURLResponse) -> CachedURLResponse?)?
```

### `dataTaskWillCacheResponseWithCompletion`

Overrides all behavior for URLSessionDataDelegate method `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` and
requires caller to call the `completionHandler`.

``` swift
open var dataTaskWillCacheResponseWithCompletion: ((URLSession, URLSessionDataTask, CachedURLResponse, @escaping (CachedURLResponse?) -> Void) -> Void)?
```

### `downloadTaskDidFinishDownloadingToURL`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)`.

``` swift
open var downloadTaskDidFinishDownloadingToURL: ((URLSession, URLSessionDownloadTask, URL) -> Void)?
```

### `downloadTaskDidWriteData`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)`.

``` swift
open var downloadTaskDidWriteData: ((URLSession, URLSessionDownloadTask, Int64, Int64, Int64) -> Void)?
```

### `downloadTaskDidResumeAtOffset`

Overrides default behavior for URLSessionDownloadDelegate method `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)`.

``` swift
open var downloadTaskDidResumeAtOffset: ((URLSession, URLSessionDownloadTask, Int64, Int64) -> Void)?
```

### `streamTaskReadClosed`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​readClosedFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskReadClosed: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskWriteClosed`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​writeClosedFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskWriteClosed: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskBetterRouteDiscovered`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​betterRouteDiscoveredFor:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskBetterRouteDiscovered: ((URLSession, URLSessionStreamTask) -> Void)? 
```

</dd>
</dl>

### `streamTaskDidBecomeInputAndOutputStreams`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Overrides default behavior for URLSessionStreamDelegate method `urlSession(_:​streamTask:​didBecome:​outputStream:​)`.

``` swift
@available(iOS 9.0, macOS 10.11, tvOS 9.0, *)
    open var streamTaskDidBecomeInputAndOutputStreams: ((URLSession, URLSessionStreamTask, InputStream, OutputStream) -> Void)? 
```

</dd>
</dl>

## Methods

### `responds(to:)`

Returns a `Bool` indicating whether the `SessionDelegate` implements or inherits a method that can respond
to a specified message.

``` swift
open override func responds(to selector: Selector) -> Bool 
```

#### Parameters

  - selector: A selector that identifies a message.

#### Returns

`true` if the receiver implements or inherits a method that can respond to selector, otherwise `false`.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `responds(to:)`

Returns a `Bool` indicating whether the `SessionDelegate` implements or inherits a method that can respond
to a specified message.

``` swift
open override func responds(to selector: Selector) -> Bool 
```

#### Parameters

  - selector: A selector that identifies a message.

#### Returns

`true` if the receiver implements or inherits a method that can respond to selector, otherwise `false`.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `responds(to:)`

Returns a `Bool` indicating whether the `SessionDelegate` implements or inherits a method that can respond
to a specified message.

``` swift
open override func responds(to selector: Selector) -> Bool 
```

#### Parameters

  - selector: A selector that identifies a message.

#### Returns

`true` if the receiver implements or inherits a method that can respond to selector, otherwise `false`.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didBecomeInvalidWithError:)`

Tells the delegate that the session has been invalidated.

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

#### Parameters

  - session: The session object that was invalidated.
  - error: The error that caused invalidation, or nil if the invalidation was explicit.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:didReceive:completionHandler:)`

Requests credentials from the delegate in response to a session-level authentication request from the
remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task that requested authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSessionDidFinishEvents(forBackgroundURLSession:)`

<dl>
<dt><code>!os(macOS)</code></dt>
<dd>

Tells the delegate that all messages enqueued for a session have been delivered.

``` swift
open func urlSessionDidFinishEvents(forBackgroundURLSession session: URLSession) 
```

#### Parameters

  - session: The session that no longer has any outstanding requests.

</dd>
</dl>

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

Tells the delegate that the remote server requested an HTTP redirect.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        willPerformHTTPRedirection response: HTTPURLResponse,
        newRequest request: URLRequest,
        completionHandler: @escaping (URLRequest?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request resulted in a redirect.
  - task: The task whose request resulted in a redirect.
  - response: An object containing the server’s response to the original request.
  - request: A URL request object filled out with the new location.
  - completionHandler: A closure that your handler should call with either the value of the request parameter, a modified URL request object, or NULL to refuse the redirect and return the body of the redirect response.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:didReceive:completionHandler:)`

Requests credentials from the delegate in response to an authentication request from the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void)
```

#### Parameters

  - session: The session containing the task whose request requires authentication.
  - task: The task whose request requires authentication.
  - challenge: An object that contains the request for authentication.
  - completionHandler: A handler that your delegate method must call providing the disposition and credential.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:needNewBodyStream:)`

Tells the delegate when a task requires a new request body stream to send to the remote server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        needNewBodyStream completionHandler: @escaping (InputStream?) -> Void)
```

#### Parameters

  - session: The session containing the task that needs a new body stream.
  - task: The task that needs a new body stream.
  - completionHandler: A completion handler that your delegate method should call with the new body stream.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

Periodically informs the delegate of the progress of sending body content to the server.

``` swift
open func urlSession(
        _ session: URLSession,
        task: URLSessionTask,
        didSendBodyData bytesSent: Int64,
        totalBytesSent: Int64,
        totalBytesExpectedToSend: Int64)
```

#### Parameters

  - session: The session containing the data task.
  - task: The data task.
  - bytesSent: The number of bytes sent since the last time this delegate method was called.
  - totalBytesSent: The total number of bytes sent so far.
  - totalBytesExpectedToSend: The expected length of the body data.

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didFinishCollecting:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the session finished collecting metrics for the task.

``` swift
@available(iOS 10.0, macOS 10.12, tvOS 10.0, *)
    @objc(URLSession:task:didFinishCollectingMetrics:)
    open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

#### Parameters

  - session: The session collecting the metrics.
  - task: The task whose metrics have been collected.
  - metrics: The collected metrics.

</dd>
</dl>

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:task:didCompleteWithError:)`

Tells the delegate that the task finished transferring data.

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

#### Parameters

  - session: The session containing the task whose request finished transferring data.
  - task: The task whose request finished transferring data.
  - error: If an error occurred, an error object indicating how the transfer failed, otherwise nil.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didReceive:completionHandler:)`

Tells the delegate that the data task received the initial reply (headers) from the server.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didReceive response: URLResponse,
        completionHandler: @escaping (URLSession.ResponseDisposition) -> Void)
```

#### Parameters

  - session: The session containing the data task that received an initial reply.
  - dataTask: The data task that received an initial reply.
  - response: A URL response object populated with headers.
  - completionHandler: A completion handler that your code calls to continue the transfer, passing a constant to indicate whether the transfer should continue as a data task or should become a download task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didBecome:)`

Tells the delegate that the data task was changed to a download task.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        didBecome downloadTask: URLSessionDownloadTask)
```

#### Parameters

  - session: The session containing the task that was replaced by a download task.
  - dataTask: The data task that was replaced by a download task.
  - downloadTask: The new download task that replaced the data task.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:didReceive:)`

Tells the delegate that the data task has received some of the expected data.

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

#### Parameters

  - session: The session containing the data task that provided data.
  - dataTask: The data task that provided data.
  - data: A data object containing the transferred data.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

Asks the delegate whether the data (or upload) task should store the response in the cache.

``` swift
open func urlSession(
        _ session: URLSession,
        dataTask: URLSessionDataTask,
        willCacheResponse proposedResponse: CachedURLResponse,
        completionHandler: @escaping (CachedURLResponse?) -> Void)
```

#### Parameters

  - session: The session containing the data (or upload) task.
  - dataTask: The data (or upload) task.
  - proposedResponse: The default caching behavior. This behavior is determined based on the current caching policy and the values of certain received headers, such as the Pragma and Cache-Control headers.
  - completionHandler: A block that your handler must call, providing either the original proposed response, a modified version of that response, or NULL to prevent caching the response. If your delegate implements this method, it must call this completion handler; otherwise, your app leaks memory.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

Tells the delegate that a download task has finished downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didFinishDownloadingTo location: URL)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that finished.
  - location: A file URL for the temporary file. Because the file is temporary, you must either open the file for reading or move it to a permanent location in your app’s sandbox container directory before returning from this delegate method.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

Periodically informs the delegate about the download’s progress.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didWriteData bytesWritten: Int64,
        totalBytesWritten: Int64,
        totalBytesExpectedToWrite: Int64)
```

#### Parameters

  - session: The session containing the download task.
  - downloadTask: The download task.
  - bytesWritten: The number of bytes transferred since the last time this delegate method was called.
  - totalBytesWritten: The total number of bytes transferred so far.
  - totalBytesExpectedToWrite: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is `NSURLSessionTransferSizeUnknown`.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

Tells the delegate that the download task has resumed downloading.

``` swift
open func urlSession(
        _ session: URLSession,
        downloadTask: URLSessionDownloadTask,
        didResumeAtOffset fileOffset: Int64,
        expectedTotalBytes: Int64)
```

#### Parameters

  - session: The session containing the download task that finished.
  - downloadTask: The download task that resumed. See explanation in the discussion.
  - fileOffset: If the file's cache policy or last modified date prevents reuse of the existing content, then this value is zero. Otherwise, this value is an integer representing the number of bytes on disk that do not need to be retrieved again.
  - expectedTotalBytes: The expected length of the file, as provided by the Content-Length header. If this header was not provided, the value is NSURLSessionTransferSizeUnknown.

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:readClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the read side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, readClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:writeClosedFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the write side of the connection has been closed.

``` swift
open func urlSession(_ session: URLSession, writeClosedFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:betterRouteDiscoveredFor:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the system has determined that a better route to the host is available.

``` swift
open func urlSession(_ session: URLSession, betterRouteDiscoveredFor streamTask: URLSessionStreamTask) 
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:streamTask:didBecome:outputStream:)`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

Tells the delegate that the stream task has been completed and provides the unopened stream objects.

``` swift
open func urlSession(
        _ session: URLSession,
        streamTask: URLSessionStreamTask,
        didBecome inputStream: InputStream,
        outputStream: OutputStream)
```

#### Parameters

  - session: The session.
  - streamTask: The stream task.
  - inputStream: The new input stream.
  - outputStream: The new output stream.

</dd>
</dl>

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didReceive:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didReceive challenge: URLAuthenticationChallenge,
                         completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:needNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         needNewBodyStream completionHandler: @escaping (InputStream?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest,
                         completionHandler: @escaping (URLRequest?) -> Void) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:dataTask:willCacheResponse:completionHandler:)`

``` swift
open func urlSession(_ session: URLSession,
                         dataTask: URLSessionDataTask,
                         willCacheResponse proposedResponse: CachedURLResponse,
                         completionHandler: @escaping (CachedURLResponse?) -> Void) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didResumeAtOffset fileOffset: Int64,
                         expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
open func urlSession(_ session: URLSession,
                         downloadTask: URLSessionDownloadTask,
                         didWriteData bytesWritten: Int64,
                         totalBytesWritten: Int64,
                         totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```
