# ClosureEventMonitor

`EventMonitor` that allows optional closures to be set to receive events.

``` swift
open class ClosureEventMonitor: EventMonitor 
```

## Inheritance

[`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor), [`EventMonitor`](/EventMonitor)

## Initializers

### `init(queue:)`

Creates an instance using the provided queue.

``` swift
public init(queue: DispatchQueue = .main) 
```

#### Parameters

  - queue: `DispatchQueue` on which events will fired. `.main` by default.

### `init(queue:)`

Creates an instance using the provided queue.

``` swift
public init(queue: DispatchQueue = .main) 
```

#### Parameters

  - queue: `DispatchQueue` on which events will fired. `.main` by default.

### `init(queue:)`

Creates an instance using the provided queue.

``` swift
public init(queue: DispatchQueue = .main) 
```

#### Parameters

  - queue: `DispatchQueue` on which events will fired. `.main` by default.

## Properties

### `sessionDidBecomeInvalidWithError`

Closure called on the `urlSession(_:​didBecomeInvalidWithError:​)` event.

``` swift
open var sessionDidBecomeInvalidWithError: ((URLSession, Error?) -> Void)?
```

### `taskDidReceiveChallenge`

Closure called on the `urlSession(_:​task:​didReceive:​completionHandler:​)`.

``` swift
open var taskDidReceiveChallenge: ((URLSession, URLSessionTask, URLAuthenticationChallenge) -> Void)?
```

### `taskDidSendBodyData`

Closure that receives `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)` event.

``` swift
open var taskDidSendBodyData: ((URLSession, URLSessionTask, Int64, Int64, Int64) -> Void)?
```

### `taskNeedNewBodyStream`

Closure called on the `urlSession(_:​task:​needNewBodyStream:​)` event.

``` swift
open var taskNeedNewBodyStream: ((URLSession, URLSessionTask) -> Void)?
```

### `taskWillPerformHTTPRedirection`

Closure called on the `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` event.

``` swift
open var taskWillPerformHTTPRedirection: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest) -> Void)?
```

### `taskDidFinishCollectingMetrics`

Closure called on the `urlSession(_:​task:​didFinishCollecting:​)` event.

``` swift
open var taskDidFinishCollectingMetrics: ((URLSession, URLSessionTask, URLSessionTaskMetrics) -> Void)?
```

### `taskDidComplete`

Closure called on the `urlSession(_:​task:​didCompleteWithError:​)` event.

``` swift
open var taskDidComplete: ((URLSession, URLSessionTask, Error?) -> Void)?
```

### `taskIsWaitingForConnectivity`

Closure called on the `urlSession(_:​taskIsWaitingForConnectivity:​)` event.

``` swift
open var taskIsWaitingForConnectivity: ((URLSession, URLSessionTask) -> Void)?
```

### `dataTaskDidReceiveData`

Closure that receives the `urlSession(_:​dataTask:​didReceive:​)` event.

``` swift
open var dataTaskDidReceiveData: ((URLSession, URLSessionDataTask, Data) -> Void)?
```

### `dataTaskWillCacheResponse`

Closure called on the `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` event.

``` swift
open var dataTaskWillCacheResponse: ((URLSession, URLSessionDataTask, CachedURLResponse) -> Void)?
```

### `downloadTaskDidFinishDownloadingToURL`

Closure called on the `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)` event.

``` swift
open var downloadTaskDidFinishDownloadingToURL: ((URLSession, URLSessionDownloadTask, URL) -> Void)?
```

### `downloadTaskDidWriteData`

Closure called on the `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)`
event.

``` swift
open var downloadTaskDidWriteData: ((URLSession, URLSessionDownloadTask, Int64, Int64, Int64) -> Void)?
```

### `downloadTaskDidResumeAtOffset`

Closure called on the `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)` event.

``` swift
open var downloadTaskDidResumeAtOffset: ((URLSession, URLSessionDownloadTask, Int64, Int64) -> Void)?
```

### `requestDidCreateInitialURLRequest`

Closure called on the `request(_:​didCreateInitialURLRequest:​)` event.

``` swift
open var requestDidCreateInitialURLRequest: ((Request, URLRequest) -> Void)?
```

### `requestDidFailToCreateURLRequestWithError`

Closure called on the `request(_:​didFailToCreateURLRequestWithError:​)` event.

``` swift
open var requestDidFailToCreateURLRequestWithError: ((Request, AFError) -> Void)?
```

### `requestDidAdaptInitialRequestToAdaptedRequest`

Closure called on the `request(_:​didAdaptInitialRequest:​to:​)` event.

``` swift
open var requestDidAdaptInitialRequestToAdaptedRequest: ((Request, URLRequest, URLRequest) -> Void)?
```

### `requestDidFailToAdaptURLRequestWithError`

Closure called on the `request(_:​didFailToAdaptURLRequest:​withError:​)` event.

``` swift
open var requestDidFailToAdaptURLRequestWithError: ((Request, URLRequest, AFError) -> Void)?
```

### `requestDidCreateURLRequest`

Closure called on the `request(_:​didCreateURLRequest:​)` event.

``` swift
open var requestDidCreateURLRequest: ((Request, URLRequest) -> Void)?
```

### `requestDidCreateTask`

Closure called on the `request(_:​didCreateTask:​)` event.

``` swift
open var requestDidCreateTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidGatherMetrics`

Closure called on the `request(_:​didGatherMetrics:​)` event.

``` swift
open var requestDidGatherMetrics: ((Request, URLSessionTaskMetrics) -> Void)?
```

### `requestDidFailTaskEarlyWithError`

Closure called on the `request(_:​didFailTask:​earlyWithError:​)` event.

``` swift
open var requestDidFailTaskEarlyWithError: ((Request, URLSessionTask, AFError) -> Void)?
```

### `requestDidCompleteTaskWithError`

Closure called on the `request(_:​didCompleteTask:​with:​)` event.

``` swift
open var requestDidCompleteTaskWithError: ((Request, URLSessionTask, AFError?) -> Void)?
```

### `requestIsRetrying`

Closure called on the `requestIsRetrying(_:​)` event.

``` swift
open var requestIsRetrying: ((Request) -> Void)?
```

### `requestDidFinish`

Closure called on the `requestDidFinish(_:​)` event.

``` swift
open var requestDidFinish: ((Request) -> Void)?
```

### `requestDidResume`

Closure called on the `requestDidResume(_:​)` event.

``` swift
open var requestDidResume: ((Request) -> Void)?
```

### `requestDidResumeTask`

Closure called on the `request(_:​didResumeTask:​)` event.

``` swift
open var requestDidResumeTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidSuspend`

Closure called on the `requestDidSuspend(_:​)` event.

``` swift
open var requestDidSuspend: ((Request) -> Void)?
```

### `requestDidSuspendTask`

Closure called on the `request(_:​didSuspendTask:​)` event.

``` swift
open var requestDidSuspendTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidCancel`

Closure called on the `requestDidCancel(_:​)` event.

``` swift
open var requestDidCancel: ((Request) -> Void)?
```

### `requestDidCancelTask`

Closure called on the `request(_:​didCancelTask:​)` event.

``` swift
open var requestDidCancelTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidValidateRequestResponseDataWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​data:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseDataWithResult: ((DataRequest, URLRequest?, HTTPURLResponse, Data?, Request.ValidationResult) -> Void)?
```

### `requestDidParseResponse`

Closure called on the `request(_:​didParseResponse:​)` event.

``` swift
open var requestDidParseResponse: ((DataRequest, DataResponse<Data?, AFError>) -> Void)?
```

### `requestDidValidateRequestResponseWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseWithResult: ((DataStreamRequest, URLRequest?, HTTPURLResponse, Request.ValidationResult) -> Void)?
```

### `requestDidCreateUploadable`

Closure called on the `request(_:​didCreateUploadable:​)` event.

``` swift
open var requestDidCreateUploadable: ((UploadRequest, UploadRequest.Uploadable) -> Void)?
```

### `requestDidFailToCreateUploadableWithError`

Closure called on the `request(_:​didFailToCreateUploadableWithError:​)` event.

``` swift
open var requestDidFailToCreateUploadableWithError: ((UploadRequest, AFError) -> Void)?
```

### `requestDidProvideInputStream`

Closure called on the `request(_:​didProvideInputStream:​)` event.

``` swift
open var requestDidProvideInputStream: ((UploadRequest, InputStream) -> Void)?
```

### `requestDidFinishDownloadingUsingTaskWithResult`

Closure called on the `request(_:​didFinishDownloadingUsing:​with:​)` event.

``` swift
open var requestDidFinishDownloadingUsingTaskWithResult: ((DownloadRequest, URLSessionTask, Result<URL, AFError>) -> Void)?
```

### `requestDidCreateDestinationURL`

Closure called on the `request(_:​didCreateDestinationURL:​)` event.

``` swift
open var requestDidCreateDestinationURL: ((DownloadRequest, URL) -> Void)?
```

### `requestDidValidateRequestResponseFileURLWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​temporaryURL:​destinationURL:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseFileURLWithResult: ((DownloadRequest, URLRequest?, HTTPURLResponse, URL?, Request.ValidationResult) -> Void)?
```

### `requestDidParseDownloadResponse`

Closure called on the `request(_:​didParseResponse:​)` event.

``` swift
open var requestDidParseDownloadResponse: ((DownloadRequest, DownloadResponse<URL?, AFError>) -> Void)?
```

### `queue`

``` swift
public let queue: DispatchQueue
```

### `sessionDidBecomeInvalidWithError`

Closure called on the `urlSession(_:​didBecomeInvalidWithError:​)` event.

``` swift
open var sessionDidBecomeInvalidWithError: ((URLSession, Error?) -> Void)?
```

### `taskDidReceiveChallenge`

Closure called on the `urlSession(_:​task:​didReceive:​completionHandler:​)`.

``` swift
open var taskDidReceiveChallenge: ((URLSession, URLSessionTask, URLAuthenticationChallenge) -> Void)?
```

### `taskDidSendBodyData`

Closure that receives `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)` event.

``` swift
open var taskDidSendBodyData: ((URLSession, URLSessionTask, Int64, Int64, Int64) -> Void)?
```

### `taskNeedNewBodyStream`

Closure called on the `urlSession(_:​task:​needNewBodyStream:​)` event.

``` swift
open var taskNeedNewBodyStream: ((URLSession, URLSessionTask) -> Void)?
```

### `taskWillPerformHTTPRedirection`

Closure called on the `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` event.

``` swift
open var taskWillPerformHTTPRedirection: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest) -> Void)?
```

### `taskDidFinishCollectingMetrics`

Closure called on the `urlSession(_:​task:​didFinishCollecting:​)` event.

``` swift
open var taskDidFinishCollectingMetrics: ((URLSession, URLSessionTask, URLSessionTaskMetrics) -> Void)?
```

### `taskDidComplete`

Closure called on the `urlSession(_:​task:​didCompleteWithError:​)` event.

``` swift
open var taskDidComplete: ((URLSession, URLSessionTask, Error?) -> Void)?
```

### `taskIsWaitingForConnectivity`

Closure called on the `urlSession(_:​taskIsWaitingForConnectivity:​)` event.

``` swift
open var taskIsWaitingForConnectivity: ((URLSession, URLSessionTask) -> Void)?
```

### `dataTaskDidReceiveData`

Closure that receives the `urlSession(_:​dataTask:​didReceive:​)` event.

``` swift
open var dataTaskDidReceiveData: ((URLSession, URLSessionDataTask, Data) -> Void)?
```

### `dataTaskWillCacheResponse`

Closure called on the `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` event.

``` swift
open var dataTaskWillCacheResponse: ((URLSession, URLSessionDataTask, CachedURLResponse) -> Void)?
```

### `downloadTaskDidFinishDownloadingToURL`

Closure called on the `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)` event.

``` swift
open var downloadTaskDidFinishDownloadingToURL: ((URLSession, URLSessionDownloadTask, URL) -> Void)?
```

### `downloadTaskDidWriteData`

Closure called on the `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)`
event.

``` swift
open var downloadTaskDidWriteData: ((URLSession, URLSessionDownloadTask, Int64, Int64, Int64) -> Void)?
```

### `downloadTaskDidResumeAtOffset`

Closure called on the `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)` event.

``` swift
open var downloadTaskDidResumeAtOffset: ((URLSession, URLSessionDownloadTask, Int64, Int64) -> Void)?
```

### `requestDidCreateInitialURLRequest`

Closure called on the `request(_:​didCreateInitialURLRequest:​)` event.

``` swift
open var requestDidCreateInitialURLRequest: ((Request, URLRequest) -> Void)?
```

### `requestDidFailToCreateURLRequestWithError`

Closure called on the `request(_:​didFailToCreateURLRequestWithError:​)` event.

``` swift
open var requestDidFailToCreateURLRequestWithError: ((Request, AFError) -> Void)?
```

### `requestDidAdaptInitialRequestToAdaptedRequest`

Closure called on the `request(_:​didAdaptInitialRequest:​to:​)` event.

``` swift
open var requestDidAdaptInitialRequestToAdaptedRequest: ((Request, URLRequest, URLRequest) -> Void)?
```

### `requestDidFailToAdaptURLRequestWithError`

Closure called on the `request(_:​didFailToAdaptURLRequest:​withError:​)` event.

``` swift
open var requestDidFailToAdaptURLRequestWithError: ((Request, URLRequest, AFError) -> Void)?
```

### `requestDidCreateURLRequest`

Closure called on the `request(_:​didCreateURLRequest:​)` event.

``` swift
open var requestDidCreateURLRequest: ((Request, URLRequest) -> Void)?
```

### `requestDidCreateTask`

Closure called on the `request(_:​didCreateTask:​)` event.

``` swift
open var requestDidCreateTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidGatherMetrics`

Closure called on the `request(_:​didGatherMetrics:​)` event.

``` swift
open var requestDidGatherMetrics: ((Request, URLSessionTaskMetrics) -> Void)?
```

### `requestDidFailTaskEarlyWithError`

Closure called on the `request(_:​didFailTask:​earlyWithError:​)` event.

``` swift
open var requestDidFailTaskEarlyWithError: ((Request, URLSessionTask, AFError) -> Void)?
```

### `requestDidCompleteTaskWithError`

Closure called on the `request(_:​didCompleteTask:​with:​)` event.

``` swift
open var requestDidCompleteTaskWithError: ((Request, URLSessionTask, AFError?) -> Void)?
```

### `requestIsRetrying`

Closure called on the `requestIsRetrying(_:​)` event.

``` swift
open var requestIsRetrying: ((Request) -> Void)?
```

### `requestDidFinish`

Closure called on the `requestDidFinish(_:​)` event.

``` swift
open var requestDidFinish: ((Request) -> Void)?
```

### `requestDidResume`

Closure called on the `requestDidResume(_:​)` event.

``` swift
open var requestDidResume: ((Request) -> Void)?
```

### `requestDidResumeTask`

Closure called on the `request(_:​didResumeTask:​)` event.

``` swift
open var requestDidResumeTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidSuspend`

Closure called on the `requestDidSuspend(_:​)` event.

``` swift
open var requestDidSuspend: ((Request) -> Void)?
```

### `requestDidSuspendTask`

Closure called on the `request(_:​didSuspendTask:​)` event.

``` swift
open var requestDidSuspendTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidCancel`

Closure called on the `requestDidCancel(_:​)` event.

``` swift
open var requestDidCancel: ((Request) -> Void)?
```

### `requestDidCancelTask`

Closure called on the `request(_:​didCancelTask:​)` event.

``` swift
open var requestDidCancelTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidValidateRequestResponseDataWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​data:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseDataWithResult: ((DataRequest, URLRequest?, HTTPURLResponse, Data?, Request.ValidationResult) -> Void)?
```

### `requestDidParseResponse`

Closure called on the `request(_:​didParseResponse:​)` event.

``` swift
open var requestDidParseResponse: ((DataRequest, DataResponse<Data?, AFError>) -> Void)?
```

### `requestDidValidateRequestResponseWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseWithResult: ((DataStreamRequest, URLRequest?, HTTPURLResponse, Request.ValidationResult) -> Void)?
```

### `requestDidCreateUploadable`

Closure called on the `request(_:​didCreateUploadable:​)` event.

``` swift
open var requestDidCreateUploadable: ((UploadRequest, UploadRequest.Uploadable) -> Void)?
```

### `requestDidFailToCreateUploadableWithError`

Closure called on the `request(_:​didFailToCreateUploadableWithError:​)` event.

``` swift
open var requestDidFailToCreateUploadableWithError: ((UploadRequest, AFError) -> Void)?
```

### `requestDidProvideInputStream`

Closure called on the `request(_:​didProvideInputStream:​)` event.

``` swift
open var requestDidProvideInputStream: ((UploadRequest, InputStream) -> Void)?
```

### `requestDidFinishDownloadingUsingTaskWithResult`

Closure called on the `request(_:​didFinishDownloadingUsing:​with:​)` event.

``` swift
open var requestDidFinishDownloadingUsingTaskWithResult: ((DownloadRequest, URLSessionTask, Result<URL, AFError>) -> Void)?
```

### `requestDidCreateDestinationURL`

Closure called on the `request(_:​didCreateDestinationURL:​)` event.

``` swift
open var requestDidCreateDestinationURL: ((DownloadRequest, URL) -> Void)?
```

### `requestDidValidateRequestResponseFileURLWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​temporaryURL:​destinationURL:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseFileURLWithResult: ((DownloadRequest, URLRequest?, HTTPURLResponse, URL?, Request.ValidationResult) -> Void)?
```

### `requestDidParseDownloadResponse`

Closure called on the `request(_:​didParseResponse:​)` event.

``` swift
open var requestDidParseDownloadResponse: ((DownloadRequest, DownloadResponse<URL?, AFError>) -> Void)?
```

### `queue`

``` swift
public let queue: DispatchQueue
```

### `sessionDidBecomeInvalidWithError`

Closure called on the `urlSession(_:​didBecomeInvalidWithError:​)` event.

``` swift
open var sessionDidBecomeInvalidWithError: ((URLSession, Error?) -> Void)?
```

### `taskDidReceiveChallenge`

Closure called on the `urlSession(_:​task:​didReceive:​completionHandler:​)`.

``` swift
open var taskDidReceiveChallenge: ((URLSession, URLSessionTask, URLAuthenticationChallenge) -> Void)?
```

### `taskDidSendBodyData`

Closure that receives `urlSession(_:​task:​didSendBodyData:​totalBytesSent:​totalBytesExpectedToSend:​)` event.

``` swift
open var taskDidSendBodyData: ((URLSession, URLSessionTask, Int64, Int64, Int64) -> Void)?
```

### `taskNeedNewBodyStream`

Closure called on the `urlSession(_:​task:​needNewBodyStream:​)` event.

``` swift
open var taskNeedNewBodyStream: ((URLSession, URLSessionTask) -> Void)?
```

### `taskWillPerformHTTPRedirection`

Closure called on the `urlSession(_:​task:​willPerformHTTPRedirection:​newRequest:​completionHandler:​)` event.

``` swift
open var taskWillPerformHTTPRedirection: ((URLSession, URLSessionTask, HTTPURLResponse, URLRequest) -> Void)?
```

### `taskDidFinishCollectingMetrics`

Closure called on the `urlSession(_:​task:​didFinishCollecting:​)` event.

``` swift
open var taskDidFinishCollectingMetrics: ((URLSession, URLSessionTask, URLSessionTaskMetrics) -> Void)?
```

### `taskDidComplete`

Closure called on the `urlSession(_:​task:​didCompleteWithError:​)` event.

``` swift
open var taskDidComplete: ((URLSession, URLSessionTask, Error?) -> Void)?
```

### `taskIsWaitingForConnectivity`

Closure called on the `urlSession(_:​taskIsWaitingForConnectivity:​)` event.

``` swift
open var taskIsWaitingForConnectivity: ((URLSession, URLSessionTask) -> Void)?
```

### `dataTaskDidReceiveData`

Closure that receives the `urlSession(_:​dataTask:​didReceive:​)` event.

``` swift
open var dataTaskDidReceiveData: ((URLSession, URLSessionDataTask, Data) -> Void)?
```

### `dataTaskWillCacheResponse`

Closure called on the `urlSession(_:​dataTask:​willCacheResponse:​completionHandler:​)` event.

``` swift
open var dataTaskWillCacheResponse: ((URLSession, URLSessionDataTask, CachedURLResponse) -> Void)?
```

### `downloadTaskDidFinishDownloadingToURL`

Closure called on the `urlSession(_:​downloadTask:​didFinishDownloadingTo:​)` event.

``` swift
open var downloadTaskDidFinishDownloadingToURL: ((URLSession, URLSessionDownloadTask, URL) -> Void)?
```

### `downloadTaskDidWriteData`

Closure called on the `urlSession(_:​downloadTask:​didWriteData:​totalBytesWritten:​totalBytesExpectedToWrite:​)`
event.

``` swift
open var downloadTaskDidWriteData: ((URLSession, URLSessionDownloadTask, Int64, Int64, Int64) -> Void)?
```

### `downloadTaskDidResumeAtOffset`

Closure called on the `urlSession(_:​downloadTask:​didResumeAtOffset:​expectedTotalBytes:​)` event.

``` swift
open var downloadTaskDidResumeAtOffset: ((URLSession, URLSessionDownloadTask, Int64, Int64) -> Void)?
```

### `requestDidCreateInitialURLRequest`

Closure called on the `request(_:​didCreateInitialURLRequest:​)` event.

``` swift
open var requestDidCreateInitialURLRequest: ((Request, URLRequest) -> Void)?
```

### `requestDidFailToCreateURLRequestWithError`

Closure called on the `request(_:​didFailToCreateURLRequestWithError:​)` event.

``` swift
open var requestDidFailToCreateURLRequestWithError: ((Request, AFError) -> Void)?
```

### `requestDidAdaptInitialRequestToAdaptedRequest`

Closure called on the `request(_:​didAdaptInitialRequest:​to:​)` event.

``` swift
open var requestDidAdaptInitialRequestToAdaptedRequest: ((Request, URLRequest, URLRequest) -> Void)?
```

### `requestDidFailToAdaptURLRequestWithError`

Closure called on the `request(_:​didFailToAdaptURLRequest:​withError:​)` event.

``` swift
open var requestDidFailToAdaptURLRequestWithError: ((Request, URLRequest, AFError) -> Void)?
```

### `requestDidCreateURLRequest`

Closure called on the `request(_:​didCreateURLRequest:​)` event.

``` swift
open var requestDidCreateURLRequest: ((Request, URLRequest) -> Void)?
```

### `requestDidCreateTask`

Closure called on the `request(_:​didCreateTask:​)` event.

``` swift
open var requestDidCreateTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidGatherMetrics`

Closure called on the `request(_:​didGatherMetrics:​)` event.

``` swift
open var requestDidGatherMetrics: ((Request, URLSessionTaskMetrics) -> Void)?
```

### `requestDidFailTaskEarlyWithError`

Closure called on the `request(_:​didFailTask:​earlyWithError:​)` event.

``` swift
open var requestDidFailTaskEarlyWithError: ((Request, URLSessionTask, AFError) -> Void)?
```

### `requestDidCompleteTaskWithError`

Closure called on the `request(_:​didCompleteTask:​with:​)` event.

``` swift
open var requestDidCompleteTaskWithError: ((Request, URLSessionTask, AFError?) -> Void)?
```

### `requestIsRetrying`

Closure called on the `requestIsRetrying(_:​)` event.

``` swift
open var requestIsRetrying: ((Request) -> Void)?
```

### `requestDidFinish`

Closure called on the `requestDidFinish(_:​)` event.

``` swift
open var requestDidFinish: ((Request) -> Void)?
```

### `requestDidResume`

Closure called on the `requestDidResume(_:​)` event.

``` swift
open var requestDidResume: ((Request) -> Void)?
```

### `requestDidResumeTask`

Closure called on the `request(_:​didResumeTask:​)` event.

``` swift
open var requestDidResumeTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidSuspend`

Closure called on the `requestDidSuspend(_:​)` event.

``` swift
open var requestDidSuspend: ((Request) -> Void)?
```

### `requestDidSuspendTask`

Closure called on the `request(_:​didSuspendTask:​)` event.

``` swift
open var requestDidSuspendTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidCancel`

Closure called on the `requestDidCancel(_:​)` event.

``` swift
open var requestDidCancel: ((Request) -> Void)?
```

### `requestDidCancelTask`

Closure called on the `request(_:​didCancelTask:​)` event.

``` swift
open var requestDidCancelTask: ((Request, URLSessionTask) -> Void)?
```

### `requestDidValidateRequestResponseDataWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​data:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseDataWithResult: ((DataRequest, URLRequest?, HTTPURLResponse, Data?, Request.ValidationResult) -> Void)?
```

### `requestDidParseResponse`

Closure called on the `request(_:​didParseResponse:​)` event.

``` swift
open var requestDidParseResponse: ((DataRequest, DataResponse<Data?, AFError>) -> Void)?
```

### `requestDidValidateRequestResponseWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseWithResult: ((DataStreamRequest, URLRequest?, HTTPURLResponse, Request.ValidationResult) -> Void)?
```

### `requestDidCreateUploadable`

Closure called on the `request(_:​didCreateUploadable:​)` event.

``` swift
open var requestDidCreateUploadable: ((UploadRequest, UploadRequest.Uploadable) -> Void)?
```

### `requestDidFailToCreateUploadableWithError`

Closure called on the `request(_:​didFailToCreateUploadableWithError:​)` event.

``` swift
open var requestDidFailToCreateUploadableWithError: ((UploadRequest, AFError) -> Void)?
```

### `requestDidProvideInputStream`

Closure called on the `request(_:​didProvideInputStream:​)` event.

``` swift
open var requestDidProvideInputStream: ((UploadRequest, InputStream) -> Void)?
```

### `requestDidFinishDownloadingUsingTaskWithResult`

Closure called on the `request(_:​didFinishDownloadingUsing:​with:​)` event.

``` swift
open var requestDidFinishDownloadingUsingTaskWithResult: ((DownloadRequest, URLSessionTask, Result<URL, AFError>) -> Void)?
```

### `requestDidCreateDestinationURL`

Closure called on the `request(_:​didCreateDestinationURL:​)` event.

``` swift
open var requestDidCreateDestinationURL: ((DownloadRequest, URL) -> Void)?
```

### `requestDidValidateRequestResponseFileURLWithResult`

Closure called on the `request(_:​didValidateRequest:​response:​temporaryURL:​destinationURL:​withResult:​)` event.

``` swift
open var requestDidValidateRequestResponseFileURLWithResult: ((DownloadRequest, URLRequest?, HTTPURLResponse, URL?, Request.ValidationResult) -> Void)?
```

### `requestDidParseDownloadResponse`

Closure called on the `request(_:​didParseResponse:​)` event.

``` swift
open var requestDidParseDownloadResponse: ((DownloadRequest, DownloadResponse<URL?, AFError>) -> Void)?
```

### `queue`

``` swift
public let queue: DispatchQueue
```

## Methods

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse) 
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

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
open func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
open func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
open func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
open func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
open func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
open func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
open func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
open func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
open func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
open func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
open func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
open func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
open func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
open func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
open func request(_ request: DataRequest,
                      didValidateRequest urlRequest: URLRequest?,
                      response: HTTPURLResponse,
                      data: Data?,
                      withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
open func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest, didValidateRequest urlRequest: URLRequest?, response: HTTPURLResponse, withResult result: Request.ValidationResult) 
```

### `request(_:didCreateUploadable:)`

``` swift
open func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
open func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
open func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
open func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
open func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
open func request(_ request: DownloadRequest,
                      didValidateRequest urlRequest: URLRequest?,
                      response: HTTPURLResponse,
                      fileURL: URL?,
                      withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
open func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse) 
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

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
open func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
open func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
open func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
open func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
open func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
open func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
open func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
open func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
open func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
open func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
open func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
open func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
open func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
open func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
open func request(_ request: DataRequest,
                      didValidateRequest urlRequest: URLRequest?,
                      response: HTTPURLResponse,
                      data: Data?,
                      withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
open func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest, didValidateRequest urlRequest: URLRequest?, response: HTTPURLResponse, withResult result: Request.ValidationResult) 
```

### `request(_:didCreateUploadable:)`

``` swift
open func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
open func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
open func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
open func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
open func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
open func request(_ request: DownloadRequest,
                      didValidateRequest urlRequest: URLRequest?,
                      response: HTTPURLResponse,
                      fileURL: URL?,
                      withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
open func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```

### `urlSession(_:didBecomeInvalidWithError:)`

``` swift
open func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?) 
```

### `urlSession(_:task:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didReceive challenge: URLAuthenticationChallenge) 
```

### `urlSession(_:task:didSendBodyData:totalBytesSent:totalBytesExpectedToSend:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         didSendBodyData bytesSent: Int64,
                         totalBytesSent: Int64,
                         totalBytesExpectedToSend: Int64) 
```

### `urlSession(_:taskNeedsNewBodyStream:)`

``` swift
open func urlSession(_ session: URLSession, taskNeedsNewBodyStream task: URLSessionTask) 
```

### `urlSession(_:task:willPerformHTTPRedirection:newRequest:)`

``` swift
open func urlSession(_ session: URLSession,
                         task: URLSessionTask,
                         willPerformHTTPRedirection response: HTTPURLResponse,
                         newRequest request: URLRequest) 
```

### `urlSession(_:task:didFinishCollecting:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didFinishCollecting metrics: URLSessionTaskMetrics) 
```

### `urlSession(_:task:didCompleteWithError:)`

``` swift
open func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) 
```

### `urlSession(_:taskIsWaitingForConnectivity:)`

``` swift
open func urlSession(_ session: URLSession, taskIsWaitingForConnectivity task: URLSessionTask) 
```

### `urlSession(_:dataTask:didReceive:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) 
```

### `urlSession(_:dataTask:willCacheResponse:)`

``` swift
open func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, willCacheResponse proposedResponse: CachedURLResponse) 
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

### `urlSession(_:downloadTask:didFinishDownloadingTo:)`

``` swift
open func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) 
```

### `request(_:didCreateInitialURLRequest:)`

``` swift
open func request(_ request: Request, didCreateInitialURLRequest urlRequest: URLRequest) 
```

### `request(_:didFailToCreateURLRequestWithError:)`

``` swift
open func request(_ request: Request, didFailToCreateURLRequestWithError error: AFError) 
```

### `request(_:didAdaptInitialRequest:to:)`

``` swift
open func request(_ request: Request, didAdaptInitialRequest initialRequest: URLRequest, to adaptedRequest: URLRequest) 
```

### `request(_:didFailToAdaptURLRequest:withError:)`

``` swift
open func request(_ request: Request, didFailToAdaptURLRequest initialRequest: URLRequest, withError error: AFError) 
```

### `request(_:didCreateURLRequest:)`

``` swift
open func request(_ request: Request, didCreateURLRequest urlRequest: URLRequest) 
```

### `request(_:didCreateTask:)`

``` swift
open func request(_ request: Request, didCreateTask task: URLSessionTask) 
```

### `request(_:didGatherMetrics:)`

``` swift
open func request(_ request: Request, didGatherMetrics metrics: URLSessionTaskMetrics) 
```

### `request(_:didFailTask:earlyWithError:)`

``` swift
open func request(_ request: Request, didFailTask task: URLSessionTask, earlyWithError error: AFError) 
```

### `request(_:didCompleteTask:with:)`

``` swift
open func request(_ request: Request, didCompleteTask task: URLSessionTask, with error: AFError?) 
```

### `requestIsRetrying(_:)`

``` swift
open func requestIsRetrying(_ request: Request) 
```

### `requestDidFinish(_:)`

``` swift
open func requestDidFinish(_ request: Request) 
```

### `requestDidResume(_:)`

``` swift
open func requestDidResume(_ request: Request) 
```

### `request(_:didResumeTask:)`

``` swift
public func request(_ request: Request, didResumeTask task: URLSessionTask) 
```

### `requestDidSuspend(_:)`

``` swift
open func requestDidSuspend(_ request: Request) 
```

### `request(_:didSuspendTask:)`

``` swift
public func request(_ request: Request, didSuspendTask task: URLSessionTask) 
```

### `requestDidCancel(_:)`

``` swift
open func requestDidCancel(_ request: Request) 
```

### `request(_:didCancelTask:)`

``` swift
public func request(_ request: Request, didCancelTask task: URLSessionTask) 
```

### `request(_:didValidateRequest:response:data:withResult:)`

``` swift
open func request(_ request: DataRequest,
                      didValidateRequest urlRequest: URLRequest?,
                      response: HTTPURLResponse,
                      data: Data?,
                      withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
open func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) 
```

### `request(_:didValidateRequest:response:withResult:)`

``` swift
public func request(_ request: DataStreamRequest, didValidateRequest urlRequest: URLRequest?, response: HTTPURLResponse, withResult result: Request.ValidationResult) 
```

### `request(_:didCreateUploadable:)`

``` swift
open func request(_ request: UploadRequest, didCreateUploadable uploadable: UploadRequest.Uploadable) 
```

### `request(_:didFailToCreateUploadableWithError:)`

``` swift
open func request(_ request: UploadRequest, didFailToCreateUploadableWithError error: AFError) 
```

### `request(_:didProvideInputStream:)`

``` swift
open func request(_ request: UploadRequest, didProvideInputStream stream: InputStream) 
```

### `request(_:didFinishDownloadingUsing:with:)`

``` swift
open func request(_ request: DownloadRequest, didFinishDownloadingUsing task: URLSessionTask, with result: Result<URL, AFError>) 
```

### `request(_:didCreateDestinationURL:)`

``` swift
open func request(_ request: DownloadRequest, didCreateDestinationURL url: URL) 
```

### `request(_:didValidateRequest:response:fileURL:withResult:)`

``` swift
open func request(_ request: DownloadRequest,
                      didValidateRequest urlRequest: URLRequest?,
                      response: HTTPURLResponse,
                      fileURL: URL?,
                      withResult result: Request.ValidationResult) 
```

### `request(_:didParseResponse:)`

``` swift
open func request(_ request: DownloadRequest, didParseResponse response: DownloadResponse<URL?, AFError>) 
```
