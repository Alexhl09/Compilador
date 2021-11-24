# CompositeEventMonitor

An `EventMonitor` which can contain multiple `EventMonitor`s and calls their methods on their queues.

``` swift
public final class CompositeEventMonitor: EventMonitor 
```

## Inheritance

[`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor)

## Properties

### `queue`

``` swift
public let queue 
```

### `queue`

``` swift
public let queue 
```

### `queue`

``` swift
public let queue 
```

## Methods

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didReceive challenge: URLAuthenticationChallenge) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didSendBodyData bytesSent: Int64,
                           totalBytesSent: Int64,
                           totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
public func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           willPerformHTTPRedirection response: HTTPURLResponse,
                           newRequest request: URLRequest) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
public func urlSession(_ session: URLSession,
                           dataTask: URLSessionDataTask,
                           willCacheResponse proposedResponse: CachedURLResponse) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didResumeAtOffset fileOffset: Int64,
                           expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didWriteData bytesWritten: Int64,
                           totalBytesWritten: Int64,
                           totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didFinishDownloadingTo location: URL) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
public func request(_ request: DataRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        data: Data?,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
```

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
public func request(_ request: DownloadRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        fileURL: URL?,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didReceive challenge: URLAuthenticationChallenge) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didSendBodyData bytesSent: Int64,
                           totalBytesSent: Int64,
                           totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
public func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           willPerformHTTPRedirection response: HTTPURLResponse,
                           newRequest request: URLRequest) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
public func urlSession(_ session: URLSession,
                           dataTask: URLSessionDataTask,
                           willCacheResponse proposedResponse: CachedURLResponse) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didResumeAtOffset fileOffset: Int64,
                           expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didWriteData bytesWritten: Int64,
                           totalBytesWritten: Int64,
                           totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didFinishDownloadingTo location: URL) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
public func request(_ request: DataRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        data: Data?,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
```

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
public func request(_ request: DownloadRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        fileURL: URL?,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didReceive challenge: URLAuthenticationChallenge) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didSendBodyData bytesSent: Int64,
                           totalBytesSent: Int64,
                           totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
public func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           willPerformHTTPRedirection response: HTTPURLResponse,
                           newRequest request: URLRequest) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
public func urlSession(_ session: URLSession,
                           dataTask: URLSessionDataTask,
                           willCacheResponse proposedResponse: CachedURLResponse) 
```

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didResumeAtOffset fileOffset: Int64,
                           expectedTotalBytes: Int64) 
```

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didWriteData bytesWritten: Int64,
                           totalBytesWritten: Int64,
                           totalBytesExpectedToWrite: Int64) 
```

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didFinishDownloadingTo location: URL) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
public func request(_ request: DataRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        data: Data?,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
```

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
public func request(_ request: DownloadRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        fileURL: URL?,
                        withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```
