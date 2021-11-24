# EventMonitor

Protocol outlining the lifetime events inside Alamofire. It includes both events received from the various
`URLSession` delegate protocols as well as various events from the lifetime of `Request` and its subclasses.

``` swift
public protocol EventMonitor 
```

## Default Implementations

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
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

### `urlSession(_:task:didReceive:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didReceive challenge: URLAuthenticationChallenge) 
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

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didSendBodyData bytesSent: Int64,
                           totalBytesSent: Int64,
                           totalBytesExpectedToSend: Int64) 
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

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
public func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
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

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           willPerformHTTPRedirection response: HTTPURLResponse,
                           newRequest request: URLRequest) 
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
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
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

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
public func urlSession(_ session: URLSession,
                           dataTask: URLSessionDataTask,
                           willCacheResponse proposedResponse: CachedURLResponse) 
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

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didResumeAtOffset fileOffset: Int64,
                           expectedTotalBytes: Int64) 
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

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didWriteData bytesWritten: Int64,
                           totalBytesWritten: Int64,
                           totalBytesExpectedToWrite: Int64) 
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

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didFinishDownloadingTo location: URL) 
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

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
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

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
public func request(_ request: DataRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        data: Data?,
                        withResult result: Request.ValidationResult) 
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
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
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

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        withResult result: Request.ValidationResult) 
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

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
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

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
public func request(_ request: DownloadRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        fileURL: URL?,
                        withResult result: Request.ValidationResult) 
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
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
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

### `urlSession(_:task:didReceive:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didReceive challenge: URLAuthenticationChallenge) 
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

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didSendBodyData bytesSent: Int64,
                           totalBytesSent: Int64,
                           totalBytesExpectedToSend: Int64) 
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

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
public func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
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

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           willPerformHTTPRedirection response: HTTPURLResponse,
                           newRequest request: URLRequest) 
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
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
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

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
public func urlSession(_ session: URLSession,
                           dataTask: URLSessionDataTask,
                           willCacheResponse proposedResponse: CachedURLResponse) 
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

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didResumeAtOffset fileOffset: Int64,
                           expectedTotalBytes: Int64) 
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

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didWriteData bytesWritten: Int64,
                           totalBytesWritten: Int64,
                           totalBytesExpectedToWrite: Int64) 
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

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didFinishDownloadingTo location: URL) 
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

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
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

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
public func request(_ request: DataRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        data: Data?,
                        withResult result: Request.ValidationResult) 
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
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
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

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        withResult result: Request.ValidationResult) 
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

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
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

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
public func request(_ request: DownloadRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        fileURL: URL?,
                        withResult result: Request.ValidationResult) 
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
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `queue`

The default queue on which `CompositeEventMonitor`s will call the `EventMonitor` methods. `.main` by default.

``` swift
public var queue: DispatchQueue 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
public func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
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

### `urlSession(_:task:didReceive:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didReceive challenge: URLAuthenticationChallenge) 
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

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didSendBodyData bytesSent: Int64,
                           totalBytesSent: Int64,
                           totalBytesExpectedToSend: Int64) 
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

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
public func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
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

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           willPerformHTTPRedirection response: HTTPURLResponse,
                           newRequest request: URLRequest) 
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
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
public func urlSession(_ session: URLSession,
                           task: URLSessionTask,
                           didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
public func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
public func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
public func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
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

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
public func urlSession(_ session: URLSession,
                           dataTask: URLSessionDataTask,
                           willCacheResponse proposedResponse: CachedURLResponse) 
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

### `urlSession(_:downloadTask:didResumeAtOffset:expectedTotalBytes:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didResumeAtOffset fileOffset: Int64,
                           expectedTotalBytes: Int64) 
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

### `urlSession(_:downloadTask:didWriteData:totalBytesWritten:totalBytesExpectedToWrite:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didWriteData bytesWritten: Int64,
                           totalBytesWritten: Int64,
                           totalBytesExpectedToWrite: Int64) 
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

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
public func urlSession(_ session: URLSession,
                           downloadTask: URLSessionDownloadTask,
                           didFinishDownloadingTo location: URL) 
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

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
public func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
public func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
public func request(_ request: Request,
                        didAdaptInitialRequest initialRequest: URLRequest,
                        to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
public func request(_ request: Request,
                        didFailToAdaptURLRequest initialRequest: URLRequest,
                        withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateURLRequest:)`

``` swift
public func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didCreateTask:)`

``` swift
public func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didGatherMetrics:)`

``` swift
public func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
public func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `request(_:didCompleteTask:with:)`

``` swift
public func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestIsRetrying(_:)`

``` swift
public func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
public func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
public func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `requestDidSuspend(_:)`

``` swift
public func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `requestDidCancel(_:)`

``` swift
public func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
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

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
public func request(_ request: DataRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        data: Data?,
                        withResult result: Request.ValidationResult) 
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
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) 
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

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        withResult result: Request.ValidationResult) 
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

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didParseStream:)`

``` swift
public func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didCreateUploadable:)`

``` swift
public func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
public func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didProvideInputStream:)`

``` swift
public func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
public func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
public func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
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

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
public func request(_ request: DownloadRequest,
                        didValidateRequest urlRequest: URLRequest?,
                        response: HTTPURLResponse,
                        fileURL: URL?,
                        withResult result: Request.ValidationResult) 
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
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

### `request(_:didParseResponse:)`

``` swift
public func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>) 
```

## Requirements

### queue

The `DispatchQueue` onto which Alamofire's root `CompositeEventMonitor` will dispatch events. `.main` by default.

``` swift
var queue: DispatchQueue 
```

### urlSession(\_:​didBecomeInvalidWithError:​)

Event called during `URLSessionDelegate`'s `urlSession(_:​didBecomeInvalidWithError:​)` method.

``` swift
func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?)
```

### urlSession(\_:​task:​didReceive:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didReceive:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge)
```

### urlSession(\_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    task: URLSessionTask,
                    didSendBodyData bytesSent: Int64,
                    totalBytesSent: Int64,
                    totalBytesExpectedToSend: Int64)
```

### urlSession(\_:​taskNeedsNewBodyStream:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​needNewBodyStream:​)` method.

``` swift
func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask)
```

### urlSession(\_:​task:​willPerformHTTPRedirection:​newRequest:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    task: URLSessionTask,
                    willPerformHTTPRedirection response: HTTPURLResponse,
                    newRequest request: URLRequest)
```

### urlSession(\_:​task:​didFinishCollecting:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didFinishCollecting:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics)
```

### urlSession(\_:​task:​didCompleteWithError:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didCompleteWithError:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?)
```

### urlSession(\_:​taskIsWaitingForConnectivity:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​taskIsWaitingForConnectivity:​)` method.

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask)
```

### urlSession(\_:​dataTask:​didReceive:​)

Event called during `URLSessionDataDelegate`'s `urlSession(_:​dataTask:​didReceive:​)` method.

``` swift
func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data)
```

### urlSession(\_:​dataTask:​willCacheResponse:​)

Event called during `URLSessionDataDelegate`'s `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse)
```

### urlSession(\_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    downloadTask: URLSessionDownloadTask,
                    didResumeAtOffset fileOffset: Int64,
                    expectedTotalBytes: Int64)
```

### urlSession(\_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    downloadTask: URLSessionDownloadTask,
                    didWriteData bytesWritten: Int64,
                    totalBytesWritten: Int64,
                    totalBytesExpectedToWrite: Int64)
```

### urlSession(\_:​downloadTask:​didFinishDownloadingTo:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)` method.

``` swift
func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL)
```

### request(\_:​didCreateInitialURLRequest:​)

Event called when a `URLRequest` is first created for a `Request`. If a `RequestAdapter` is active, the
`URLRequest` will be adapted before being issued.

``` swift
func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest)
```

### request(\_:​didFailToCreateURLRequestWithError:​)

Event called when the attempt to create a `URLRequest` from a `Request`'s original `URLRequestConvertible` value fails.

``` swift
func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError)
```

### request(\_:​didAdaptInitialRequest:​to:​)

Event called when a `RequestAdapter` adapts the `Request`'s initial `URLRequest`.

``` swift
func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest)
```

### request(\_:​didFailToAdaptURLRequest:​withError:​)

Event called when a `RequestAdapter` fails to adapt the `Request`'s initial `URLRequest`.

``` swift
func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError)
```

### request(\_:​didCreateURLRequest:​)

Event called when a final `URLRequest` is created for a `Request`.

``` swift
func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest)
```

### request(\_:​didCreateTask:​)

Event called when a `URLSessionTask` subclass instance is created for a `Request`.

``` swift
func request(_ request: Request, didCreateTask task: URLSessionTask)
```

### request(\_:​didGatherMetrics:​)

Event called when a `Request` receives a `URLSessionTaskMetrics` value.

``` swift
func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics)
```

### request(\_:​didFailTask:​earlyWithError:​)

Event called when a `Request` fails due to an error created by Alamofire. e.g. When certificate pinning fails.

``` swift
func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError)
```

### request(\_:​didCompleteTask:​with:​)

Event called when a `Request`'s task completes, possibly with an error. A `Request` may receive this event
multiple times if it is retried.

``` swift
func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?)
```

### requestIsRetrying(\_:​)

Event called when a `Request` is about to be retried.

``` swift
func requestIsRetrying(_ request: Request)
```

### requestDidFinish(\_:​)

Event called when a `Request` finishes and response serializers are being called.

``` swift
func requestDidFinish(_ request: Request)
```

### requestDidResume(\_:​)

Event called when a `Request` receives a `resume` call.

``` swift
func requestDidResume(_ request: Request)
```

### request(\_:​didResumeTask:​)

Event called when a `Request`'s associated `URLSessionTask` is resumed.

``` swift
func request(_ request: Request, didResumeTask task: URLSessionTask)
```

### requestDidSuspend(\_:​)

Event called when a `Request` receives a `suspend` call.

``` swift
func requestDidSuspend(_ request: Request)
```

### request(\_:​didSuspendTask:​)

Event called when a `Request`'s associated `URLSessionTask` is suspended.

``` swift
func request(_ request: Request, didSuspendTask task: URLSessionTask)
```

### requestDidCancel(\_:​)

Event called when a `Request` receives a `cancel` call.

``` swift
func requestDidCancel(_ request: Request)
```

### request(\_:​didCancelTask:​)

Event called when a `Request`'s associated `URLSessionTask` is cancelled.

``` swift
func request(_ request: Request, didCancelTask task: URLSessionTask)
```

### request(\_:​didValidateRequest:​response:​data:​withResult:​)

Event called when a `DataRequest` calls a `Validation`.

``` swift
func request(_ request: DataRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 data: Data?,
                 withResult result: Request.ValidationResult)
```

### request(\_:​didParseResponse:​)

Event called when a `DataRequest` creates a `DataResponse<Data?>` value without calling a `ResponseSerializer`.

``` swift
func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>)
```

### request(\_:​didParseResponse:​)

Event called when a `DataRequest` calls a `ResponseSerializer` and creates a generic `DataResponse<Value, AFError>`.

``` swift
func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>)
```

### request(\_:​didValidateRequest:​response:​withResult:​)

Event called when a `DataStreamRequest` calls a `Validation` closure.

``` swift
func request(_ request: DataStreamRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 withResult result: Request.ValidationResult)
```

#### Parameters

  - request: `DataStreamRequest` which is calling the `Validation`.
  - urlRequest: `URLRequest` of the request being validated.
  - response: `HTTPURLResponse` of the request being validated.
  - result: Produced `ValidationResult`.

### request(\_:​didParseStream:​)

Event called when a `DataStreamSerializer` produces a value from streamed `Data`.

``` swift
func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>)
```

#### Parameters

  - request: `DataStreamRequest` for which the value was serialized.
  - result: `Result` of the serialization attempt.

### request(\_:​didCreateUploadable:​)

Event called when an `UploadRequest` creates its `Uploadable` value, indicating the type of upload it represents.

``` swift
func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable)
```

### request(\_:​didFailToCreateUploadableWithError:​)

Event called when an `UploadRequest` failed to create its `Uploadable` value due to an error.

``` swift
func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError)
```

### request(\_:​didProvideInputStream:​)

Event called when an `UploadRequest` provides the `InputStream` from its `Uploadable` value. This only occurs if
the `InputStream` does not wrap a `Data` value or file `URL`.

``` swift
func request(_ request: UploadRequest, didProvideInputStream stream: InputStream)
```

### request(\_:​didFinishDownloadingUsing:​with:​)

Event called when a `DownloadRequest`'s `URLSessionDownloadTask` finishes and the temporary file has been moved.

``` swift
func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>)
```

### request(\_:​didCreateDestinationURL:​)

Event called when a `DownloadRequest`'s `Destination` closure is called and creates the destination URL the
downloaded file will be moved to.

``` swift
func request(_ request: DownloadRequest, didCreateDestinationURL url: URL)
```

### request(\_:​didValidateRequest:​response:​fileURL:​withResult:​)

Event called when a `DownloadRequest` calls a `Validation`.

``` swift
func request(_ request: DownloadRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 fileURL: URL?,
                 withResult result: Request.ValidationResult)
```

### request(\_:​didParseResponse:​)

Event called when a `DownloadRequest` creates a `DownloadResponse<URL?, AFError>` without calling a `ResponseSerializer`.

``` swift
func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>)
```

### request(\_:​didParseResponse:​)

Event called when a `DownloadRequest` calls a `DownloadResponseSerializer` and creates a generic `DownloadResponse<Value, AFError>`

``` swift
func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>)
```

### queue

The `DispatchQueue` onto which Alamofire's root `CompositeEventMonitor` will dispatch events. `.main` by default.

``` swift
var queue: DispatchQueue 
```

### urlSession(\_:​didBecomeInvalidWithError:​)

Event called during `URLSessionDelegate`'s `urlSession(_:​didBecomeInvalidWithError:​)` method.

``` swift
func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?)
```

### urlSession(\_:​task:​didReceive:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didReceive:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge)
```

### urlSession(\_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    task: URLSessionTask,
                    didSendBodyData bytesSent: Int64,
                    totalBytesSent: Int64,
                    totalBytesExpectedToSend: Int64)
```

### urlSession(\_:​taskNeedsNewBodyStream:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​needNewBodyStream:​)` method.

``` swift
func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask)
```

### urlSession(\_:​task:​willPerformHTTPRedirection:​newRequest:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    task: URLSessionTask,
                    willPerformHTTPRedirection response: HTTPURLResponse,
                    newRequest request: URLRequest)
```

### urlSession(\_:​task:​didFinishCollecting:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didFinishCollecting:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics)
```

### urlSession(\_:​task:​didCompleteWithError:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didCompleteWithError:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?)
```

### urlSession(\_:​taskIsWaitingForConnectivity:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​taskIsWaitingForConnectivity:​)` method.

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask)
```

### urlSession(\_:​dataTask:​didReceive:​)

Event called during `URLSessionDataDelegate`'s `urlSession(_:​dataTask:​didReceive:​)` method.

``` swift
func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data)
```

### urlSession(\_:​dataTask:​willCacheResponse:​)

Event called during `URLSessionDataDelegate`'s `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse)
```

### urlSession(\_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    downloadTask: URLSessionDownloadTask,
                    didResumeAtOffset fileOffset: Int64,
                    expectedTotalBytes: Int64)
```

### urlSession(\_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    downloadTask: URLSessionDownloadTask,
                    didWriteData bytesWritten: Int64,
                    totalBytesWritten: Int64,
                    totalBytesExpectedToWrite: Int64)
```

### urlSession(\_:​downloadTask:​didFinishDownloadingTo:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)` method.

``` swift
func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL)
```

### request(\_:​didCreateInitialURLRequest:​)

Event called when a `URLRequest` is first created for a `Request`. If a `RequestAdapter` is active, the
`URLRequest` will be adapted before being issued.

``` swift
func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest)
```

### request(\_:​didFailToCreateURLRequestWithError:​)

Event called when the attempt to create a `URLRequest` from a `Request`'s original `URLRequestConvertible` value fails.

``` swift
func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError)
```

### request(\_:​didAdaptInitialRequest:​to:​)

Event called when a `RequestAdapter` adapts the `Request`'s initial `URLRequest`.

``` swift
func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest)
```

### request(\_:​didFailToAdaptURLRequest:​withError:​)

Event called when a `RequestAdapter` fails to adapt the `Request`'s initial `URLRequest`.

``` swift
func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError)
```

### request(\_:​didCreateURLRequest:​)

Event called when a final `URLRequest` is created for a `Request`.

``` swift
func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest)
```

### request(\_:​didCreateTask:​)

Event called when a `URLSessionTask` subclass instance is created for a `Request`.

``` swift
func request(_ request: Request, didCreateTask task: URLSessionTask)
```

### request(\_:​didGatherMetrics:​)

Event called when a `Request` receives a `URLSessionTaskMetrics` value.

``` swift
func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics)
```

### request(\_:​didFailTask:​earlyWithError:​)

Event called when a `Request` fails due to an error created by Alamofire. e.g. When certificate pinning fails.

``` swift
func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError)
```

### request(\_:​didCompleteTask:​with:​)

Event called when a `Request`'s task completes, possibly with an error. A `Request` may receive this event
multiple times if it is retried.

``` swift
func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?)
```

### requestIsRetrying(\_:​)

Event called when a `Request` is about to be retried.

``` swift
func requestIsRetrying(_ request: Request)
```

### requestDidFinish(\_:​)

Event called when a `Request` finishes and response serializers are being called.

``` swift
func requestDidFinish(_ request: Request)
```

### requestDidResume(\_:​)

Event called when a `Request` receives a `resume` call.

``` swift
func requestDidResume(_ request: Request)
```

### request(\_:​didResumeTask:​)

Event called when a `Request`'s associated `URLSessionTask` is resumed.

``` swift
func request(_ request: Request, didResumeTask task: URLSessionTask)
```

### requestDidSuspend(\_:​)

Event called when a `Request` receives a `suspend` call.

``` swift
func requestDidSuspend(_ request: Request)
```

### request(\_:​didSuspendTask:​)

Event called when a `Request`'s associated `URLSessionTask` is suspended.

``` swift
func request(_ request: Request, didSuspendTask task: URLSessionTask)
```

### requestDidCancel(\_:​)

Event called when a `Request` receives a `cancel` call.

``` swift
func requestDidCancel(_ request: Request)
```

### request(\_:​didCancelTask:​)

Event called when a `Request`'s associated `URLSessionTask` is cancelled.

``` swift
func request(_ request: Request, didCancelTask task: URLSessionTask)
```

### request(\_:​didValidateRequest:​response:​data:​withResult:​)

Event called when a `DataRequest` calls a `Validation`.

``` swift
func request(_ request: DataRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 data: Data?,
                 withResult result: Request.ValidationResult)
```

### request(\_:​didParseResponse:​)

Event called when a `DataRequest` creates a `DataResponse<Data?>` value without calling a `ResponseSerializer`.

``` swift
func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>)
```

### request(\_:​didParseResponse:​)

Event called when a `DataRequest` calls a `ResponseSerializer` and creates a generic `DataResponse<Value, AFError>`.

``` swift
func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>)
```

### request(\_:​didValidateRequest:​response:​withResult:​)

Event called when a `DataStreamRequest` calls a `Validation` closure.

``` swift
func request(_ request: DataStreamRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 withResult result: Request.ValidationResult)
```

#### Parameters

  - request: `DataStreamRequest` which is calling the `Validation`.
  - urlRequest: `URLRequest` of the request being validated.
  - response: `HTTPURLResponse` of the request being validated.
  - result: Produced `ValidationResult`.

### request(\_:​didParseStream:​)

Event called when a `DataStreamSerializer` produces a value from streamed `Data`.

``` swift
func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>)
```

#### Parameters

  - request: `DataStreamRequest` for which the value was serialized.
  - result: `Result` of the serialization attempt.

### request(\_:​didCreateUploadable:​)

Event called when an `UploadRequest` creates its `Uploadable` value, indicating the type of upload it represents.

``` swift
func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable)
```

### request(\_:​didFailToCreateUploadableWithError:​)

Event called when an `UploadRequest` failed to create its `Uploadable` value due to an error.

``` swift
func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError)
```

### request(\_:​didProvideInputStream:​)

Event called when an `UploadRequest` provides the `InputStream` from its `Uploadable` value. This only occurs if
the `InputStream` does not wrap a `Data` value or file `URL`.

``` swift
func request(_ request: UploadRequest, didProvideInputStream stream: InputStream)
```

### request(\_:​didFinishDownloadingUsing:​with:​)

Event called when a `DownloadRequest`'s `URLSessionDownloadTask` finishes and the temporary file has been moved.

``` swift
func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>)
```

### request(\_:​didCreateDestinationURL:​)

Event called when a `DownloadRequest`'s `Destination` closure is called and creates the destination URL the
downloaded file will be moved to.

``` swift
func request(_ request: DownloadRequest, didCreateDestinationURL url: URL)
```

### request(\_:​didValidateRequest:​response:​fileURL:​withResult:​)

Event called when a `DownloadRequest` calls a `Validation`.

``` swift
func request(_ request: DownloadRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 fileURL: URL?,
                 withResult result: Request.ValidationResult)
```

### request(\_:​didParseResponse:​)

Event called when a `DownloadRequest` creates a `DownloadResponse<URL?, AFError>` without calling a `ResponseSerializer`.

``` swift
func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>)
```

### request(\_:​didParseResponse:​)

Event called when a `DownloadRequest` calls a `DownloadResponseSerializer` and creates a generic `DownloadResponse<Value, AFError>`

``` swift
func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>)
```

### queue

The `DispatchQueue` onto which Alamofire's root `CompositeEventMonitor` will dispatch events. `.main` by default.

``` swift
var queue: DispatchQueue 
```

### urlSession(\_:​didBecomeInvalidWithError:​)

Event called during `URLSessionDelegate`'s `urlSession(_:​didBecomeInvalidWithError:​)` method.

``` swift
func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?)
```

### urlSession(\_:​task:​didReceive:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didReceive:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge)
```

### urlSession(\_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    task: URLSessionTask,
                    didSendBodyData bytesSent: Int64,
                    totalBytesSent: Int64,
                    totalBytesExpectedToSend: Int64)
```

### urlSession(\_:​taskNeedsNewBodyStream:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​needNewBodyStream:​)` method.

``` swift
func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask)
```

### urlSession(\_:​task:​willPerformHTTPRedirection:​newRequest:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    task: URLSessionTask,
                    willPerformHTTPRedirection response: HTTPURLResponse,
                    newRequest request: URLRequest)
```

### urlSession(\_:​task:​didFinishCollecting:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didFinishCollecting:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics)
```

### urlSession(\_:​task:​didCompleteWithError:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​task:​didCompleteWithError:​)` method.

``` swift
func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?)
```

### urlSession(\_:​taskIsWaitingForConnectivity:​)

Event called during `URLSessionTaskDelegate`'s `urlSession(_:​taskIsWaitingForConnectivity:​)` method.

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask)
```

### urlSession(\_:​dataTask:​didReceive:​)

Event called during `URLSessionDataDelegate`'s `urlSession(_:​dataTask:​didReceive:​)` method.

``` swift
func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data)
```

### urlSession(\_:​dataTask:​willCacheResponse:​)

Event called during `URLSessionDataDelegate`'s `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` method.

``` swift
func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse)
```

### urlSession(\_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    downloadTask: URLSessionDownloadTask,
                    didResumeAtOffset fileOffset: Int64,
                    expectedTotalBytes: Int64)
```

### urlSession(\_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)` method.

``` swift
func urlSession(_ session: URLSession,
                    downloadTask: URLSessionDownloadTask,
                    didWriteData bytesWritten: Int64,
                    totalBytesWritten: Int64,
                    totalBytesExpectedToWrite: Int64)
```

### urlSession(\_:​downloadTask:​didFinishDownloadingTo:​)

Event called during `URLSessionDownloadDelegate`'s `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)` method.

``` swift
func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL)
```

### request(\_:​didCreateInitialURLRequest:​)

Event called when a `URLRequest` is first created for a `Request`. If a `RequestAdapter` is active, the
`URLRequest` will be adapted before being issued.

``` swift
func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest)
```

### request(\_:​didFailToCreateURLRequestWithError:​)

Event called when the attempt to create a `URLRequest` from a `Request`'s original `URLRequestConvertible` value fails.

``` swift
func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError)
```

### request(\_:​didAdaptInitialRequest:​to:​)

Event called when a `RequestAdapter` adapts the `Request`'s initial `URLRequest`.

``` swift
func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest)
```

### request(\_:​didFailToAdaptURLRequest:​withError:​)

Event called when a `RequestAdapter` fails to adapt the `Request`'s initial `URLRequest`.

``` swift
func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError)
```

### request(\_:​didCreateURLRequest:​)

Event called when a final `URLRequest` is created for a `Request`.

``` swift
func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest)
```

### request(\_:​didCreateTask:​)

Event called when a `URLSessionTask` subclass instance is created for a `Request`.

``` swift
func request(_ request: Request, didCreateTask task: URLSessionTask)
```

### request(\_:​didGatherMetrics:​)

Event called when a `Request` receives a `URLSessionTaskMetrics` value.

``` swift
func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics)
```

### request(\_:​didFailTask:​earlyWithError:​)

Event called when a `Request` fails due to an error created by Alamofire. e.g. When certificate pinning fails.

``` swift
func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError)
```

### request(\_:​didCompleteTask:​with:​)

Event called when a `Request`'s task completes, possibly with an error. A `Request` may receive this event
multiple times if it is retried.

``` swift
func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?)
```

### requestIsRetrying(\_:​)

Event called when a `Request` is about to be retried.

``` swift
func requestIsRetrying(_ request: Request)
```

### requestDidFinish(\_:​)

Event called when a `Request` finishes and response serializers are being called.

``` swift
func requestDidFinish(_ request: Request)
```

### requestDidResume(\_:​)

Event called when a `Request` receives a `resume` call.

``` swift
func requestDidResume(_ request: Request)
```

### request(\_:​didResumeTask:​)

Event called when a `Request`'s associated `URLSessionTask` is resumed.

``` swift
func request(_ request: Request, didResumeTask task: URLSessionTask)
```

### requestDidSuspend(\_:​)

Event called when a `Request` receives a `suspend` call.

``` swift
func requestDidSuspend(_ request: Request)
```

### request(\_:​didSuspendTask:​)

Event called when a `Request`'s associated `URLSessionTask` is suspended.

``` swift
func request(_ request: Request, didSuspendTask task: URLSessionTask)
```

### requestDidCancel(\_:​)

Event called when a `Request` receives a `cancel` call.

``` swift
func requestDidCancel(_ request: Request)
```

### request(\_:​didCancelTask:​)

Event called when a `Request`'s associated `URLSessionTask` is cancelled.

``` swift
func request(_ request: Request, didCancelTask task: URLSessionTask)
```

### request(\_:​didValidateRequest:​response:​data:​withResult:​)

Event called when a `DataRequest` calls a `Validation`.

``` swift
func request(_ request: DataRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 data: Data?,
                 withResult result: Request.ValidationResult)
```

### request(\_:​didParseResponse:​)

Event called when a `DataRequest` creates a `DataResponse<Data?>` value without calling a `ResponseSerializer`.

``` swift
func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>)
```

### request(\_:​didParseResponse:​)

Event called when a `DataRequest` calls a `ResponseSerializer` and creates a generic `DataResponse<Value, AFError>`.

``` swift
func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>)
```

### request(\_:​didValidateRequest:​response:​withResult:​)

Event called when a `DataStreamRequest` calls a `Validation` closure.

``` swift
func request(_ request: DataStreamRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 withResult result: Request.ValidationResult)
```

#### Parameters

  - request: `DataStreamRequest` which is calling the `Validation`.
  - urlRequest: `URLRequest` of the request being validated.
  - response: `HTTPURLResponse` of the request being validated.
  - result: Produced `ValidationResult`.

### request(\_:​didParseStream:​)

Event called when a `DataStreamSerializer` produces a value from streamed `Data`.

``` swift
func request<Value>(_ request: DataStreamRequest, didParseStream result: Result<Value, AFError>)
```

#### Parameters

  - request: `DataStreamRequest` for which the value was serialized.
  - result: `Result` of the serialization attempt.

### request(\_:​didCreateUploadable:​)

Event called when an `UploadRequest` creates its `Uploadable` value, indicating the type of upload it represents.

``` swift
func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable)
```

### request(\_:​didFailToCreateUploadableWithError:​)

Event called when an `UploadRequest` failed to create its `Uploadable` value due to an error.

``` swift
func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError)
```

### request(\_:​didProvideInputStream:​)

Event called when an `UploadRequest` provides the `InputStream` from its `Uploadable` value. This only occurs if
the `InputStream` does not wrap a `Data` value or file `URL`.

``` swift
func request(_ request: UploadRequest, didProvideInputStream stream: InputStream)
```

### request(\_:​didFinishDownloadingUsing:​with:​)

Event called when a `DownloadRequest`'s `URLSessionDownloadTask` finishes and the temporary file has been moved.

``` swift
func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>)
```

### request(\_:​didCreateDestinationURL:​)

Event called when a `DownloadRequest`'s `Destination` closure is called and creates the destination URL the
downloaded file will be moved to.

``` swift
func request(_ request: DownloadRequest, didCreateDestinationURL url: URL)
```

### request(\_:​didValidateRequest:​response:​fileURL:​withResult:​)

Event called when a `DownloadRequest` calls a `Validation`.

``` swift
func request(_ request: DownloadRequest,
                 didValidateRequest urlRequest: URLRequest?,
                 response: HTTPURLResponse,
                 fileURL: URL?,
                 withResult result: Request.ValidationResult)
```

### request(\_:​didParseResponse:​)

Event called when a `DownloadRequest` creates a `DownloadResponse<URL?, AFError>` without calling a `ResponseSerializer`.

``` swift
func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>)
```

### request(\_:​didParseResponse:​)

Event called when a `DownloadRequest` calls a `DownloadResponseSerializer` and creates a generic `DownloadResponse<Value, AFError>`

``` swift
func request<Value>(_ request: DownloadRequest, didParseResponse response: DownloadResponse<Value, AFError>)
```
