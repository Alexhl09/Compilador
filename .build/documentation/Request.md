# Request

Responsible for sending a request and receiving the response and associated data from the server, as well as
managing its underlying `URLSessionTask`.

``` swift
open class Request 
```

## Inheritance

`CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `Equatable`, `Equatable`, `Equatable`, `Equatable`, `Equatable`, `Equatable`, `Hashable`, `Hashable`, `Hashable`, `Hashable`, `Hashable`, `Hashable`

## Nested Type Aliases

### `ProgressHandler`

A closure executed when monitoring upload or download progress of a request.

``` swift
public typealias ProgressHandler = (Progress) -> Void
```

### `ProgressHandler`

A closure executed when monitoring upload or download progress of a request.

``` swift
public typealias ProgressHandler = (Progress) -> Void
```

### `ProgressHandler`

A closure executed when monitoring upload or download progress of a request.

``` swift
public typealias ProgressHandler = (Progress) -> Void
```

### `ProgressHandler`

Closure type executed when monitoring the upload or download progress of a request.

``` swift
public typealias ProgressHandler = (Progress) -> Void
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ProgressHandler`

Closure type executed when monitoring the upload or download progress of a request.

``` swift
public typealias ProgressHandler = (Progress) -> Void
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ProgressHandler`

Closure type executed when monitoring the upload or download progress of a request.

``` swift
public typealias ProgressHandler = (Progress) -> Void
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

### `ValidationResult`

Used to represent whether a validation succeeded or failed.

``` swift
public typealias ValidationResult = Result<Void, Error>
```

## Properties

### `delegate`

The delegate for the underlying task.

``` swift
open internal(set) var delegate: TaskDelegate 
```

### `task`

The underlying task.

``` swift
open var task: URLSessionTask? 
```

### `session`

The session belonging to the underlying task.

``` swift
open let session: URLSession
```

### `request`

The request sent or to be sent to the server.

``` swift
open var request: URLRequest? 
```

### `response`

The response received from the server, if any.

``` swift
open var response: HTTPURLResponse? 
```

### `retryCount`

The number of times the request has been retried.

``` swift
open internal(set) var retryCount: UInt = 0
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `delegate`

The delegate for the underlying task.

``` swift
open internal(set) var delegate: TaskDelegate 
```

### `task`

The underlying task.

``` swift
open var task: URLSessionTask? 
```

### `session`

The session belonging to the underlying task.

``` swift
public let session: URLSession
```

### `request`

The request sent or to be sent to the server.

``` swift
open var request: URLRequest? 
```

### `response`

The response received from the server, if any.

``` swift
open var response: HTTPURLResponse? 
```

### `retryCount`

The number of times the request has been retried.

``` swift
open internal(set) var retryCount: UInt = 0
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `delegate`

The delegate for the underlying task.

``` swift
open internal(set) var delegate: TaskDelegate 
```

### `task`

The underlying task.

``` swift
open var task: URLSessionTask? 
```

### `session`

The session belonging to the underlying task.

``` swift
public let session: URLSession
```

### `request`

The request sent or to be sent to the server.

``` swift
open var request: URLRequest? 
```

### `response`

The response received from the server, if any.

``` swift
open var response: HTTPURLResponse? 
```

### `retryCount`

The number of times the request has been retried.

``` swift
open internal(set) var retryCount: UInt = 0
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the HTTP method and URL, as
well as the response status code if a response has been received.

``` swift
open var description: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, in the form of a cURL command.

``` swift
open var debugDescription: String 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `id`

`UUID` providing a unique identifier for the `Request`, used in the `Hashable` and `Equatable` conformances.

``` swift
public let id: UUID
```

### `underlyingQueue`

The serial queue for all internal async actions.

``` swift
public let underlyingQueue: DispatchQueue
```

### `serializationQueue`

The queue used for all serialization actions. By default it's a serial queue that targets `underlyingQueue`.

``` swift
public let serializationQueue: DispatchQueue
```

### `eventMonitor`

`EventMonitor` used for event callbacks.

``` swift
public let eventMonitor: EventMonitor?
```

### `interceptor`

The `Request`'s interceptor.

``` swift
public let interceptor: RequestInterceptor?
```

### `delegate`

The `Request`'s delegate.

``` swift
public private(set) weak var delegate: RequestDelegate?
```

### `state`

`State` of the `Request`.

``` swift
public var state: State 
```

### `isInitialized`

Returns whether `state` is `.initialized`.

``` swift
public var isInitialized: Bool 
```

### `isResumed`

Returns whether `state is `.resumed\`.

``` swift
public var isResumed: Bool 
```

### `isSuspended`

Returns whether `state` is `.suspended`.

``` swift
public var isSuspended: Bool 
```

### `isCancelled`

Returns whether `state` is `.cancelled`.

``` swift
public var isCancelled: Bool 
```

### `isFinished`

Returns whether `state` is `.finished`.

``` swift
public var isFinished: Bool 
```

### `uploadProgress`

`Progress` of the upload of the body of the executed `URLRequest`. Reset to `0` if the `Request` is retried.

``` swift
public let uploadProgress 
```

### `downloadProgress`

`Progress` of the download of any response data. Reset to `0` if the `Request` is retried.

``` swift
public let downloadProgress 
```

### `redirectHandler`

`RedirectHandler` set on the instance.

``` swift
public private(set) var redirectHandler: RedirectHandler? 
```

### `cachedResponseHandler`

`CachedResponseHandler` set on the instance.

``` swift
public private(set) var cachedResponseHandler: CachedResponseHandler? 
```

### `credential`

`URLCredential` used for authentication challenges. Created by calling one of the `authenticate` methods.

``` swift
public private(set) var credential: URLCredential? 
```

### `requests`

All `URLRequests` created on behalf of the `Request`, including original and adapted requests.

``` swift
public var requests: [URLRequest] 
```

### `firstRequest`

First `URLRequest` created on behalf of the `Request`. May not be the first one actually executed.

``` swift
public var firstRequest: URLRequest? 
```

### `lastRequest`

Last `URLRequest` created on behalf of the `Request`.

``` swift
public var lastRequest: URLRequest? 
```

### `request`

Current `URLRequest` created on behalf of the `Request`.

``` swift
public var request: URLRequest? 
```

### `performedRequests`

`URLRequest`s from all of the `URLSessionTask`s executed on behalf of the `Request`. May be different from
`requests` due to `URLSession` manipulation.

``` swift
public var performedRequests: [URLRequest] 
```

### `response`

`HTTPURLResponse` received from the server, if any. If the `Request` was retried, this is the response of the
last `URLSessionTask`.

``` swift
public var response: HTTPURLResponse? 
```

### `tasks`

All `URLSessionTask`s created on behalf of the `Request`.

``` swift
public var tasks: [URLSessionTask] 
```

### `firstTask`

First `URLSessionTask` created on behalf of the `Request`.

``` swift
public var firstTask: URLSessionTask? 
```

### `lastTask`

Last `URLSessionTask` crated on behalf of the `Request`.

``` swift
public var lastTask: URLSessionTask? 
```

### `task`

Current `URLSessionTask` created on behalf of the `Request`.

``` swift
public var task: URLSessionTask? 
```

### `allMetrics`

All `URLSessionTaskMetrics` gathered on behalf of the `Request`. Should correspond to the `tasks` created.

``` swift
public var allMetrics: [URLSessionTaskMetrics] 
```

### `firstMetrics`

First `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var firstMetrics: URLSessionTaskMetrics? 
```

### `lastMetrics`

Last `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var lastMetrics: URLSessionTaskMetrics? 
```

### `metrics`

Current `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

### `retryCount`

Number of times the `Request` has been retried.

``` swift
public var retryCount: Int 
```

### `error`

`Error` returned from Alamofire internally, from the network request directly, or any validators executed.

``` swift
public fileprivate(set) var error: AFError? 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `id`

`UUID` providing a unique identifier for the `Request`, used in the `Hashable` and `Equatable` conformances.

``` swift
public let id: UUID
```

### `underlyingQueue`

The serial queue for all internal async actions.

``` swift
public let underlyingQueue: DispatchQueue
```

### `serializationQueue`

The queue used for all serialization actions. By default it's a serial queue that targets `underlyingQueue`.

``` swift
public let serializationQueue: DispatchQueue
```

### `eventMonitor`

`EventMonitor` used for event callbacks.

``` swift
public let eventMonitor: EventMonitor?
```

### `interceptor`

The `Request`'s interceptor.

``` swift
public let interceptor: RequestInterceptor?
```

### `delegate`

The `Request`'s delegate.

``` swift
public private(set) weak var delegate: RequestDelegate?
```

### `state`

`State` of the `Request`.

``` swift
public var state: State 
```

### `isInitialized`

Returns whether `state` is `.initialized`.

``` swift
public var isInitialized: Bool 
```

### `isResumed`

Returns whether `state is `.resumed\`.

``` swift
public var isResumed: Bool 
```

### `isSuspended`

Returns whether `state` is `.suspended`.

``` swift
public var isSuspended: Bool 
```

### `isCancelled`

Returns whether `state` is `.cancelled`.

``` swift
public var isCancelled: Bool 
```

### `isFinished`

Returns whether `state` is `.finished`.

``` swift
public var isFinished: Bool 
```

### `uploadProgress`

`Progress` of the upload of the body of the executed `URLRequest`. Reset to `0` if the `Request` is retried.

``` swift
public let uploadProgress 
```

### `downloadProgress`

`Progress` of the download of any response data. Reset to `0` if the `Request` is retried.

``` swift
public let downloadProgress 
```

### `redirectHandler`

`RedirectHandler` set on the instance.

``` swift
public private(set) var redirectHandler: RedirectHandler? 
```

### `cachedResponseHandler`

`CachedResponseHandler` set on the instance.

``` swift
public private(set) var cachedResponseHandler: CachedResponseHandler? 
```

### `credential`

`URLCredential` used for authentication challenges. Created by calling one of the `authenticate` methods.

``` swift
public private(set) var credential: URLCredential? 
```

### `requests`

All `URLRequests` created on behalf of the `Request`, including original and adapted requests.

``` swift
public var requests: [URLRequest] 
```

### `firstRequest`

First `URLRequest` created on behalf of the `Request`. May not be the first one actually executed.

``` swift
public var firstRequest: URLRequest? 
```

### `lastRequest`

Last `URLRequest` created on behalf of the `Request`.

``` swift
public var lastRequest: URLRequest? 
```

### `request`

Current `URLRequest` created on behalf of the `Request`.

``` swift
public var request: URLRequest? 
```

### `performedRequests`

`URLRequest`s from all of the `URLSessionTask`s executed on behalf of the `Request`. May be different from
`requests` due to `URLSession` manipulation.

``` swift
public var performedRequests: [URLRequest] 
```

### `response`

`HTTPURLResponse` received from the server, if any. If the `Request` was retried, this is the response of the
last `URLSessionTask`.

``` swift
public var response: HTTPURLResponse? 
```

### `tasks`

All `URLSessionTask`s created on behalf of the `Request`.

``` swift
public var tasks: [URLSessionTask] 
```

### `firstTask`

First `URLSessionTask` created on behalf of the `Request`.

``` swift
public var firstTask: URLSessionTask? 
```

### `lastTask`

Last `URLSessionTask` crated on behalf of the `Request`.

``` swift
public var lastTask: URLSessionTask? 
```

### `task`

Current `URLSessionTask` created on behalf of the `Request`.

``` swift
public var task: URLSessionTask? 
```

### `allMetrics`

All `URLSessionTaskMetrics` gathered on behalf of the `Request`. Should correspond to the `tasks` created.

``` swift
public var allMetrics: [URLSessionTaskMetrics] 
```

### `firstMetrics`

First `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var firstMetrics: URLSessionTaskMetrics? 
```

### `lastMetrics`

Last `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var lastMetrics: URLSessionTaskMetrics? 
```

### `metrics`

Current `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

### `retryCount`

Number of times the `Request` has been retried.

``` swift
public var retryCount: Int 
```

### `error`

`Error` returned from Alamofire internally, from the network request directly, or any validators executed.

``` swift
public fileprivate(set) var error: AFError? 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didResumeNotification`

Posted when a `Request` is resumed. The `Notification` contains the resumed `Request`.

``` swift
static let didResumeNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didSuspendNotification`

Posted when a `Request` is suspended. The `Notification` contains the suspended `Request`.

``` swift
static let didSuspendNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didCancelNotification`

Posted when a `Request` is cancelled. The `Notification` contains the cancelled `Request`.

``` swift
static let didCancelNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didFinishNotification`

Posted when a `Request` is finished. The `Notification` contains the completed `Request`.

``` swift
static let didFinishNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didResumeTaskNotification`

Posted when a `URLSessionTask` is resumed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didResumeTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didSuspendTaskNotification`

Posted when a `URLSessionTask` is suspended. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didSuspendTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCancelTaskNotification`

Posted when a `URLSessionTask` is cancelled. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCancelTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `didCompleteTaskNotification`

Posted when a `URLSessionTask` is completed. The `Notification` contains the `Request` associated with the `URLSessionTask`.

``` swift
static let didCompleteTaskNotification 
```

### `id`

`UUID` providing a unique identifier for the `Request`, used in the `Hashable` and `Equatable` conformances.

``` swift
public let id: UUID
```

### `underlyingQueue`

The serial queue for all internal async actions.

``` swift
public let underlyingQueue: DispatchQueue
```

### `serializationQueue`

The queue used for all serialization actions. By default it's a serial queue that targets `underlyingQueue`.

``` swift
public let serializationQueue: DispatchQueue
```

### `eventMonitor`

`EventMonitor` used for event callbacks.

``` swift
public let eventMonitor: EventMonitor?
```

### `interceptor`

The `Request`'s interceptor.

``` swift
public let interceptor: RequestInterceptor?
```

### `delegate`

The `Request`'s delegate.

``` swift
public private(set) weak var delegate: RequestDelegate?
```

### `state`

`State` of the `Request`.

``` swift
public var state: State 
```

### `isInitialized`

Returns whether `state` is `.initialized`.

``` swift
public var isInitialized: Bool 
```

### `isResumed`

Returns whether `state is `.resumed\`.

``` swift
public var isResumed: Bool 
```

### `isSuspended`

Returns whether `state` is `.suspended`.

``` swift
public var isSuspended: Bool 
```

### `isCancelled`

Returns whether `state` is `.cancelled`.

``` swift
public var isCancelled: Bool 
```

### `isFinished`

Returns whether `state` is `.finished`.

``` swift
public var isFinished: Bool 
```

### `uploadProgress`

`Progress` of the upload of the body of the executed `URLRequest`. Reset to `0` if the `Request` is retried.

``` swift
public let uploadProgress 
```

### `downloadProgress`

`Progress` of the download of any response data. Reset to `0` if the `Request` is retried.

``` swift
public let downloadProgress 
```

### `redirectHandler`

`RedirectHandler` set on the instance.

``` swift
public private(set) var redirectHandler: RedirectHandler? 
```

### `cachedResponseHandler`

`CachedResponseHandler` set on the instance.

``` swift
public private(set) var cachedResponseHandler: CachedResponseHandler? 
```

### `credential`

`URLCredential` used for authentication challenges. Created by calling one of the `authenticate` methods.

``` swift
public private(set) var credential: URLCredential? 
```

### `requests`

All `URLRequests` created on behalf of the `Request`, including original and adapted requests.

``` swift
public var requests: [URLRequest] 
```

### `firstRequest`

First `URLRequest` created on behalf of the `Request`. May not be the first one actually executed.

``` swift
public var firstRequest: URLRequest? 
```

### `lastRequest`

Last `URLRequest` created on behalf of the `Request`.

``` swift
public var lastRequest: URLRequest? 
```

### `request`

Current `URLRequest` created on behalf of the `Request`.

``` swift
public var request: URLRequest? 
```

### `performedRequests`

`URLRequest`s from all of the `URLSessionTask`s executed on behalf of the `Request`. May be different from
`requests` due to `URLSession` manipulation.

``` swift
public var performedRequests: [URLRequest] 
```

### `response`

`HTTPURLResponse` received from the server, if any. If the `Request` was retried, this is the response of the
last `URLSessionTask`.

``` swift
public var response: HTTPURLResponse? 
```

### `tasks`

All `URLSessionTask`s created on behalf of the `Request`.

``` swift
public var tasks: [URLSessionTask] 
```

### `firstTask`

First `URLSessionTask` created on behalf of the `Request`.

``` swift
public var firstTask: URLSessionTask? 
```

### `lastTask`

Last `URLSessionTask` crated on behalf of the `Request`.

``` swift
public var lastTask: URLSessionTask? 
```

### `task`

Current `URLSessionTask` created on behalf of the `Request`.

``` swift
public var task: URLSessionTask? 
```

### `allMetrics`

All `URLSessionTaskMetrics` gathered on behalf of the `Request`. Should correspond to the `tasks` created.

``` swift
public var allMetrics: [URLSessionTaskMetrics] 
```

### `firstMetrics`

First `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var firstMetrics: URLSessionTaskMetrics? 
```

### `lastMetrics`

Last `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var lastMetrics: URLSessionTaskMetrics? 
```

### `metrics`

Current `URLSessionTaskMetrics` gathered on behalf of the `Request`.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

### `retryCount`

Number of times the `Request` has been retried.

``` swift
public var retryCount: Int 
```

### `error`

`Error` returned from Alamofire internally, from the network request directly, or any validators executed.

``` swift
public fileprivate(set) var error: AFError? 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

### `description`

A textual representation of this instance, including the `HTTPMethod` and `URL` if the `URLRequest` has been
created, as well as the response status code, if a response has been received.

``` swift
public var description: String 
```

## Methods

### `authenticate(user:password:persistence:)`

Associates an HTTP Basic credential with the request.

``` swift
@discardableResult
    open func authenticate(
        user: String,
        password: String,
        persistence: URLCredential.Persistence = .forSession)
        -> Self
```

#### Parameters

  - user: The user.
  - password: The password.
  - persistence: The URL credential persistence. `.ForSession` by default.

#### Returns

The request.

### `authenticate(usingCredential:)`

Associates a specified credential with the request.

``` swift
@discardableResult
    open func authenticate(usingCredential credential: URLCredential) -> Self 
```

#### Parameters

  - credential: The credential.

#### Returns

The request.

### `authorizationHeader(user:password:)`

Returns a base64 encoded basic authentication credential as an authorization header tuple.

``` swift
open static func authorizationHeader(user: String, password: String) -> (key: String, value: String)? 
```

#### Parameters

  - user: The user.
  - password: The password.

#### Returns

A tuple with Authorization header and credential value if encoding succeeds, `nil` otherwise.

### `resume()`

Resumes the request.

``` swift
open func resume() 
```

### `suspend()`

Suspends the request.

``` swift
open func suspend() 
```

### `cancel()`

Cancels the request.

``` swift
open func cancel() 
```

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `authenticate(user:password:persistence:)`

Associates an HTTP Basic credential with the request.

``` swift
@discardableResult
    open func authenticate(
        user: String,
        password: String,
        persistence: URLCredential.Persistence = .forSession)
        -> Self
```

#### Parameters

  - user: The user.
  - password: The password.
  - persistence: The URL credential persistence. `.ForSession` by default.

#### Returns

The request.

### `authenticate(usingCredential:)`

Associates a specified credential with the request.

``` swift
@discardableResult
    open func authenticate(usingCredential credential: URLCredential) -> Self 
```

#### Parameters

  - credential: The credential.

#### Returns

The request.

### `authorizationHeader(user:password:)`

Returns a base64 encoded basic authentication credential as an authorization header tuple.

``` swift
open class func authorizationHeader(user: String, password: String) -> (key: String, value: String)? 
```

#### Parameters

  - user: The user.
  - password: The password.

#### Returns

A tuple with Authorization header and credential value if encoding succeeds, `nil` otherwise.

### `resume()`

Resumes the request.

``` swift
open func resume() 
```

### `suspend()`

Suspends the request.

``` swift
open func suspend() 
```

### `cancel()`

Cancels the request.

``` swift
open func cancel() 
```

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `authenticate(user:password:persistence:)`

Associates an HTTP Basic credential with the request.

``` swift
@discardableResult
    open func authenticate(
        user: String,
        password: String,
        persistence: URLCredential.Persistence = .forSession)
        -> Self
```

#### Parameters

  - user: The user.
  - password: The password.
  - persistence: The URL credential persistence. `.ForSession` by default.

#### Returns

The request.

### `authenticate(usingCredential:)`

Associates a specified credential with the request.

``` swift
@discardableResult
    open func authenticate(usingCredential credential: URLCredential) -> Self 
```

#### Parameters

  - credential: The credential.

#### Returns

The request.

### `authorizationHeader(user:password:)`

Returns a base64 encoded basic authentication credential as an authorization header tuple.

``` swift
open class func authorizationHeader(user: String, password: String) -> (key: String, value: String)? 
```

#### Parameters

  - user: The user.
  - password: The password.

#### Returns

A tuple with Authorization header and credential value if encoding succeeds, `nil` otherwise.

### `resume()`

Resumes the request.

``` swift
open func resume() 
```

### `suspend()`

Suspends the request.

``` swift
open func suspend() 
```

### `cancel()`

Cancels the request.

``` swift
open func cancel() 
```

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseData(response:data:error:)`

Returns a result data type that contains the response data as-is.

``` swift
public static func serializeResponseData(response: HTTPURLResponse?, data: Data?, error: Error?) -> Result<Data> 
```

#### Parameters

  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseString(encoding:response:data:error:)`

Returns a result string type initialized from the response data with the specified string encoding.

``` swift
public static func serializeResponseString(
        encoding: String.Encoding?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<String>
```

#### Parameters

  - encoding: The string encoding. If `nil`, the string encoding will be determined from the server response, falling back to the default HTTP default character set, ISO-8859-1.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponseJSON(options:response:data:error:)`

Returns a JSON object contained in a result type constructed from the response data using `JSONSerialization`
with the specified reading options.

``` swift
public static func serializeResponseJSON(
        options: JSONSerialization.ReadingOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The JSON serialization reading options. Defaults to `.allowFragments`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `serializeResponsePropertyList(options:response:data:error:)`

Returns a plist object contained in a result type constructed from the response data using
`PropertyListSerialization` with the specified reading options.

``` swift
public static func serializeResponsePropertyList(
        options: PropertyListSerialization.ReadOptions,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?)
        -> Result<Any>
```

#### Parameters

  - options: The property list reading options. Defaults to `[]`.
  - response: The response from the server.
  - data: The data returned from the server.
  - error: The error already encountered if it exists.

#### Returns

The result data type.

### `cancel()`

Cancels the instance. Once cancelled, a `Request` can no longer be resumed or suspended.

``` swift
@discardableResult
    public func cancel() -> Self 
```

#### Returns

The instance.

### `suspend()`

Suspends the instance.

``` swift
@discardableResult
    public func suspend() -> Self 
```

#### Returns

The instance.

### `resume()`

Resumes the instance.

``` swift
@discardableResult
    public func resume() -> Self 
```

#### Returns

The instance.

### `authenticate(username:password:persistence:)`

Associates a credential using the provided values with the instance.

``` swift
@discardableResult
    public func authenticate(username: String, password: String, persistence: URLCredential.Persistence = .forSession) -> Self 
```

#### Parameters

  - username: The username.
  - password: The password.
  - persistence: The `URLCredential.Persistence` for the created `URLCredential`. `.forSession` by default.

#### Returns

The instance.

### `authenticate(with:)`

Associates the provided credential with the instance.

``` swift
@discardableResult
    public func authenticate(with credential: URLCredential) -> Self 
```

#### Parameters

  - credential: The `URLCredential`.

#### Returns

The instance.

### `downloadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the instance as data is read from the server.

``` swift
@discardableResult
    public func downloadProgress(queue: DispatchQueue = .main, closure: @escaping ProgressHandler) -> Self 
```

> 

#### Parameters

  - queue: The `DispatchQueue` to execute the closure on. `.main` by default.
  - closure: The closure to be executed periodically as data is read from the server.

#### Returns

The instance.

### `uploadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the instance as data is sent to the server.

``` swift
@discardableResult
    public func uploadProgress(queue: DispatchQueue = .main, closure: @escaping ProgressHandler) -> Self 
```

> 

#### Parameters

  - queue: The `DispatchQueue` to execute the closure on. `.main` by default.
  - closure: The closure to be executed periodically as data is sent to the server.

#### Returns

The instance.

### `redirect(using:)`

Sets the redirect handler for the instance which will be used if a redirect response is encountered.

``` swift
@discardableResult
    public func redirect(using handler: RedirectHandler) -> Self 
```

> 

#### Parameters

  - handler: The `RedirectHandler`.

#### Returns

The instance.

### `cacheResponse(using:)`

Sets the cached response handler for the `Request` which will be used when attempting to cache a response.

``` swift
@discardableResult
    public func cacheResponse(using handler: CachedResponseHandler) -> Self 
```

> 

#### Parameters

  - handler: The `CachedResponseHandler`.

#### Returns

The instance.

### `cURLDescription(calling:)`

Sets a handler to be called when the cURL description of the request is available.

``` swift
@discardableResult
    public func cURLDescription(calling handler: @escaping (String) -> Void) -> Self 
```

> 

#### Parameters

  - handler: Closure to be called when the cURL description is available.

#### Returns

The instance.

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cancel()`

Cancels the instance. Once cancelled, a `Request` can no longer be resumed or suspended.

``` swift
@discardableResult
    public func cancel() -> Self 
```

#### Returns

The instance.

### `suspend()`

Suspends the instance.

``` swift
@discardableResult
    public func suspend() -> Self 
```

#### Returns

The instance.

### `resume()`

Resumes the instance.

``` swift
@discardableResult
    public func resume() -> Self 
```

#### Returns

The instance.

### `authenticate(username:password:persistence:)`

Associates a credential using the provided values with the instance.

``` swift
@discardableResult
    public func authenticate(username: String, password: String, persistence: URLCredential.Persistence = .forSession) -> Self 
```

#### Parameters

  - username: The username.
  - password: The password.
  - persistence: The `URLCredential.Persistence` for the created `URLCredential`. `.forSession` by default.

#### Returns

The instance.

### `authenticate(with:)`

Associates the provided credential with the instance.

``` swift
@discardableResult
    public func authenticate(with credential: URLCredential) -> Self 
```

#### Parameters

  - credential: The `URLCredential`.

#### Returns

The instance.

### `downloadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the instance as data is read from the server.

``` swift
@discardableResult
    public func downloadProgress(queue: DispatchQueue = .main, closure: @escaping ProgressHandler) -> Self 
```

> 

#### Parameters

  - queue: The `DispatchQueue` to execute the closure on. `.main` by default.
  - closure: The closure to be executed periodically as data is read from the server.

#### Returns

The instance.

### `uploadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the instance as data is sent to the server.

``` swift
@discardableResult
    public func uploadProgress(queue: DispatchQueue = .main, closure: @escaping ProgressHandler) -> Self 
```

> 

#### Parameters

  - queue: The `DispatchQueue` to execute the closure on. `.main` by default.
  - closure: The closure to be executed periodically as data is sent to the server.

#### Returns

The instance.

### `redirect(using:)`

Sets the redirect handler for the instance which will be used if a redirect response is encountered.

``` swift
@discardableResult
    public func redirect(using handler: RedirectHandler) -> Self 
```

> 

#### Parameters

  - handler: The `RedirectHandler`.

#### Returns

The instance.

### `cacheResponse(using:)`

Sets the cached response handler for the `Request` which will be used when attempting to cache a response.

``` swift
@discardableResult
    public func cacheResponse(using handler: CachedResponseHandler) -> Self 
```

> 

#### Parameters

  - handler: The `CachedResponseHandler`.

#### Returns

The instance.

### `cURLDescription(calling:)`

Sets a handler to be called when the cURL description of the request is available.

``` swift
@discardableResult
    public func cURLDescription(calling handler: @escaping (String) -> Void) -> Self 
```

> 

#### Parameters

  - handler: Closure to be called when the cURL description is available.

#### Returns

The instance.

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cancel()`

Cancels the instance. Once cancelled, a `Request` can no longer be resumed or suspended.

``` swift
@discardableResult
    public func cancel() -> Self 
```

#### Returns

The instance.

### `suspend()`

Suspends the instance.

``` swift
@discardableResult
    public func suspend() -> Self 
```

#### Returns

The instance.

### `resume()`

Resumes the instance.

``` swift
@discardableResult
    public func resume() -> Self 
```

#### Returns

The instance.

### `authenticate(username:password:persistence:)`

Associates a credential using the provided values with the instance.

``` swift
@discardableResult
    public func authenticate(username: String, password: String, persistence: URLCredential.Persistence = .forSession) -> Self 
```

#### Parameters

  - username: The username.
  - password: The password.
  - persistence: The `URLCredential.Persistence` for the created `URLCredential`. `.forSession` by default.

#### Returns

The instance.

### `authenticate(with:)`

Associates the provided credential with the instance.

``` swift
@discardableResult
    public func authenticate(with credential: URLCredential) -> Self 
```

#### Parameters

  - credential: The `URLCredential`.

#### Returns

The instance.

### `downloadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the instance as data is read from the server.

``` swift
@discardableResult
    public func downloadProgress(queue: DispatchQueue = .main, closure: @escaping ProgressHandler) -> Self 
```

> 

#### Parameters

  - queue: The `DispatchQueue` to execute the closure on. `.main` by default.
  - closure: The closure to be executed periodically as data is read from the server.

#### Returns

The instance.

### `uploadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the instance as data is sent to the server.

``` swift
@discardableResult
    public func uploadProgress(queue: DispatchQueue = .main, closure: @escaping ProgressHandler) -> Self 
```

> 

#### Parameters

  - queue: The `DispatchQueue` to execute the closure on. `.main` by default.
  - closure: The closure to be executed periodically as data is sent to the server.

#### Returns

The instance.

### `redirect(using:)`

Sets the redirect handler for the instance which will be used if a redirect response is encountered.

``` swift
@discardableResult
    public func redirect(using handler: RedirectHandler) -> Self 
```

> 

#### Parameters

  - handler: The `RedirectHandler`.

#### Returns

The instance.

### `cacheResponse(using:)`

Sets the cached response handler for the `Request` which will be used when attempting to cache a response.

``` swift
@discardableResult
    public func cacheResponse(using handler: CachedResponseHandler) -> Self 
```

> 

#### Parameters

  - handler: The `CachedResponseHandler`.

#### Returns

The instance.

### `cURLDescription(calling:)`

Sets a handler to be called when the cURL description of the request is available.

``` swift
@discardableResult
    public func cURLDescription(calling handler: @escaping (String) -> Void) -> Self 
```

> 

#### Parameters

  - handler: Closure to be called when the cURL description is available.

#### Returns

The instance.

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

### `cURLDescription()`

cURL representation of the instance.

``` swift
public func cURLDescription() -> String 
```

#### Returns

The cURL equivalent of the instance.

## Operators

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```

### `==`

``` swift
public static func ==(lhs: Request, rhs: Request) -> Bool 
```
