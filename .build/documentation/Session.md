# Session

`Session` creates and manages Alamofire's `Request` types during their lifetimes. It also provides common
functionality for all `Request`s, including queuing, interception, trust management, redirect handling, and response
cache handling.

``` swift
open class Session 
```

## Inheritance

[`RequestDelegate`](/RequestDelegate), [`RequestDelegate`](/RequestDelegate), [`RequestDelegate`](/RequestDelegate), [`SessionStateProvider`](/SessionStateProvider), [`SessionStateProvider`](/SessionStateProvider), [`SessionStateProvider`](/SessionStateProvider), [`RequestDelegate`](/RequestDelegate), [`RequestDelegate`](/RequestDelegate), [`RequestDelegate`](/RequestDelegate), [`SessionStateProvider`](/SessionStateProvider), [`SessionStateProvider`](/SessionStateProvider), [`SessionStateProvider`](/SessionStateProvider), [`RequestDelegate`](/RequestDelegate), [`RequestDelegate`](/RequestDelegate), [`RequestDelegate`](/RequestDelegate), [`SessionStateProvider`](/SessionStateProvider), [`SessionStateProvider`](/SessionStateProvider), [`SessionStateProvider`](/SessionStateProvider)

## Nested Type Aliases

### `RequestModifier`

Closure which provides a `URLRequest` for mutation.

``` swift
public typealias RequestModifier = (inout URLRequest) throws -> Void
```

### `RequestModifier`

Closure which provides a `URLRequest` for mutation.

``` swift
public typealias RequestModifier = (inout URLRequest) throws -> Void
```

### `RequestModifier`

Closure which provides a `URLRequest` for mutation.

``` swift
public typealias RequestModifier = (inout URLRequest) throws -> Void
```

## Initializers

### `init(session:delegate:rootQueue:startRequestsImmediately:requestQueue:serializationQueue:interceptor:serverTrustManager:redirectHandler:cachedResponseHandler:eventMonitors:)`

Creates a `Session` from a `URLSession` and other parameters.

``` swift
public init(session: URLSession,
                delegate: SessionDelegate,
                rootQueue: DispatchQueue,
                startRequestsImmediately: Bool = true,
                requestQueue: DispatchQueue? = nil,
                serializationQueue: DispatchQueue? = nil,
                interceptor: RequestInterceptor? = nil,
                serverTrustManager: ServerTrustManager? = nil,
                redirectHandler: RedirectHandler? = nil,
                cachedResponseHandler: CachedResponseHandler? = nil,
                eventMonitors: [EventMonitor] = []) 
```

> 

#### Parameters

  - session: Underlying `URLSession` for this instance.
  - delegate: `SessionDelegate` that handles `session`'s delegate callbacks as well as `Request` interaction.
  - rootQueue: Root `DispatchQueue` for all internal callbacks and state updates. **MUST** be a serial queue.
  - startRequestsImmediately: Determines whether this instance will automatically start all `Request`s. `true` by default. If set to `false`, all `Request`s created must have `.resume()` called. on them for them to start.
  - requestQueue: `DispatchQueue` on which to perform `URLRequest` creation. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined request creation is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - serializationQueue: `DispatchQueue` on which to perform all response serialization. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined response serialization is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - interceptor: `RequestInterceptor` to be used for all `Request`s created by this instance. `nil` by default.
  - serverTrustManager: `ServerTrustManager` to be used for all trust evaluations by this instance. `nil` by default.
  - redirectHandler: `RedirectHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - cachedResponseHandler: `CachedResponseHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - eventMonitors: Additional `EventMonitor`s used by the instance. Alamofire always adds a `AlamofireNotifications` `EventMonitor` to the array passed here. `[]` by default.

### `init(configuration:delegate:rootQueue:startRequestsImmediately:requestQueue:serializationQueue:interceptor:serverTrustManager:redirectHandler:cachedResponseHandler:eventMonitors:)`

Creates a `Session` from a `URLSessionConfiguration`.

``` swift
public convenience init(configuration: URLSessionConfiguration = URLSessionConfiguration.af.default,
                            delegate: SessionDelegate = SessionDelegate(),
                            rootQueue: DispatchQueue = DispatchQueue(label: "org.alamofire.session.rootQueue"),
                            startRequestsImmediately: Bool = true,
                            requestQueue: DispatchQueue? = nil,
                            serializationQueue: DispatchQueue? = nil,
                            interceptor: RequestInterceptor? = nil,
                            serverTrustManager: ServerTrustManager? = nil,
                            redirectHandler: RedirectHandler? = nil,
                            cachedResponseHandler: CachedResponseHandler? = nil,
                            eventMonitors: [EventMonitor] = []) 
```

> 

#### Parameters

  - configuration: `URLSessionConfiguration` to be used to create the underlying `URLSession`. Changes to this value after being passed to this initializer will have no effect. `URLSessionConfiguration.af.default` by default.
  - delegate: `SessionDelegate` that handles `session`'s delegate callbacks as well as `Request` interaction. `SessionDelegate()` by default.
  - rootQueue: Root `DispatchQueue` for all internal callbacks and state updates. **MUST** be a serial queue. `DispatchQueue(label: "org.alamofire.session.rootQueue")` by default.
  - startRequestsImmediately: Determines whether this instance will automatically start all `Request`s. `true` by default. If set to `false`, all `Request`s created must have `.resume()` called. on them for them to start.
  - requestQueue: `DispatchQueue` on which to perform `URLRequest` creation. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined request creation is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - serializationQueue: `DispatchQueue` on which to perform all response serialization. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined response serialization is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - interceptor: `RequestInterceptor` to be used for all `Request`s created by this instance. `nil` by default.
  - serverTrustManager: `ServerTrustManager` to be used for all trust evaluations by this instance. `nil` by default.
  - redirectHandler: `RedirectHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - cachedResponseHandler: `CachedResponseHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - eventMonitors: Additional `EventMonitor`s used by the instance. Alamofire always adds a `AlamofireNotifications` `EventMonitor` to the array passed here. `[]` by default.

### `init(session:delegate:rootQueue:startRequestsImmediately:requestQueue:serializationQueue:interceptor:serverTrustManager:redirectHandler:cachedResponseHandler:eventMonitors:)`

Creates a `Session` from a `URLSession` and other parameters.

``` swift
public init(session: URLSession,
                delegate: SessionDelegate,
                rootQueue: DispatchQueue,
                startRequestsImmediately: Bool = true,
                requestQueue: DispatchQueue? = nil,
                serializationQueue: DispatchQueue? = nil,
                interceptor: RequestInterceptor? = nil,
                serverTrustManager: ServerTrustManager? = nil,
                redirectHandler: RedirectHandler? = nil,
                cachedResponseHandler: CachedResponseHandler? = nil,
                eventMonitors: [EventMonitor] = []) 
```

> 

#### Parameters

  - session: Underlying `URLSession` for this instance.
  - delegate: `SessionDelegate` that handles `session`'s delegate callbacks as well as `Request` interaction.
  - rootQueue: Root `DispatchQueue` for all internal callbacks and state updates. **MUST** be a serial queue.
  - startRequestsImmediately: Determines whether this instance will automatically start all `Request`s. `true` by default. If set to `false`, all `Request`s created must have `.resume()` called. on them for them to start.
  - requestQueue: `DispatchQueue` on which to perform `URLRequest` creation. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined request creation is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - serializationQueue: `DispatchQueue` on which to perform all response serialization. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined response serialization is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - interceptor: `RequestInterceptor` to be used for all `Request`s created by this instance. `nil` by default.
  - serverTrustManager: `ServerTrustManager` to be used for all trust evaluations by this instance. `nil` by default.
  - redirectHandler: `RedirectHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - cachedResponseHandler: `CachedResponseHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - eventMonitors: Additional `EventMonitor`s used by the instance. Alamofire always adds a `AlamofireNotifications` `EventMonitor` to the array passed here. `[]` by default.

### `init(configuration:delegate:rootQueue:startRequestsImmediately:requestQueue:serializationQueue:interceptor:serverTrustManager:redirectHandler:cachedResponseHandler:eventMonitors:)`

Creates a `Session` from a `URLSessionConfiguration`.

``` swift
public convenience init(configuration: URLSessionConfiguration = URLSessionConfiguration.af.default,
                            delegate: SessionDelegate = SessionDelegate(),
                            rootQueue: DispatchQueue = DispatchQueue(label: "org.alamofire.session.rootQueue"),
                            startRequestsImmediately: Bool = true,
                            requestQueue: DispatchQueue? = nil,
                            serializationQueue: DispatchQueue? = nil,
                            interceptor: RequestInterceptor? = nil,
                            serverTrustManager: ServerTrustManager? = nil,
                            redirectHandler: RedirectHandler? = nil,
                            cachedResponseHandler: CachedResponseHandler? = nil,
                            eventMonitors: [EventMonitor] = []) 
```

> 

#### Parameters

  - configuration: `URLSessionConfiguration` to be used to create the underlying `URLSession`. Changes to this value after being passed to this initializer will have no effect. `URLSessionConfiguration.af.default` by default.
  - delegate: `SessionDelegate` that handles `session`'s delegate callbacks as well as `Request` interaction. `SessionDelegate()` by default.
  - rootQueue: Root `DispatchQueue` for all internal callbacks and state updates. **MUST** be a serial queue. `DispatchQueue(label: "org.alamofire.session.rootQueue")` by default.
  - startRequestsImmediately: Determines whether this instance will automatically start all `Request`s. `true` by default. If set to `false`, all `Request`s created must have `.resume()` called. on them for them to start.
  - requestQueue: `DispatchQueue` on which to perform `URLRequest` creation. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined request creation is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - serializationQueue: `DispatchQueue` on which to perform all response serialization. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined response serialization is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - interceptor: `RequestInterceptor` to be used for all `Request`s created by this instance. `nil` by default.
  - serverTrustManager: `ServerTrustManager` to be used for all trust evaluations by this instance. `nil` by default.
  - redirectHandler: `RedirectHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - cachedResponseHandler: `CachedResponseHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - eventMonitors: Additional `EventMonitor`s used by the instance. Alamofire always adds a `AlamofireNotifications` `EventMonitor` to the array passed here. `[]` by default.

### `init(session:delegate:rootQueue:startRequestsImmediately:requestQueue:serializationQueue:interceptor:serverTrustManager:redirectHandler:cachedResponseHandler:eventMonitors:)`

Creates a `Session` from a `URLSession` and other parameters.

``` swift
public init(session: URLSession,
                delegate: SessionDelegate,
                rootQueue: DispatchQueue,
                startRequestsImmediately: Bool = true,
                requestQueue: DispatchQueue? = nil,
                serializationQueue: DispatchQueue? = nil,
                interceptor: RequestInterceptor? = nil,
                serverTrustManager: ServerTrustManager? = nil,
                redirectHandler: RedirectHandler? = nil,
                cachedResponseHandler: CachedResponseHandler? = nil,
                eventMonitors: [EventMonitor] = []) 
```

> 

#### Parameters

  - session: Underlying `URLSession` for this instance.
  - delegate: `SessionDelegate` that handles `session`'s delegate callbacks as well as `Request` interaction.
  - rootQueue: Root `DispatchQueue` for all internal callbacks and state updates. **MUST** be a serial queue.
  - startRequestsImmediately: Determines whether this instance will automatically start all `Request`s. `true` by default. If set to `false`, all `Request`s created must have `.resume()` called. on them for them to start.
  - requestQueue: `DispatchQueue` on which to perform `URLRequest` creation. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined request creation is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - serializationQueue: `DispatchQueue` on which to perform all response serialization. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined response serialization is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - interceptor: `RequestInterceptor` to be used for all `Request`s created by this instance. `nil` by default.
  - serverTrustManager: `ServerTrustManager` to be used for all trust evaluations by this instance. `nil` by default.
  - redirectHandler: `RedirectHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - cachedResponseHandler: `CachedResponseHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - eventMonitors: Additional `EventMonitor`s used by the instance. Alamofire always adds a `AlamofireNotifications` `EventMonitor` to the array passed here. `[]` by default.

### `init(configuration:delegate:rootQueue:startRequestsImmediately:requestQueue:serializationQueue:interceptor:serverTrustManager:redirectHandler:cachedResponseHandler:eventMonitors:)`

Creates a `Session` from a `URLSessionConfiguration`.

``` swift
public convenience init(configuration: URLSessionConfiguration = URLSessionConfiguration.af.default,
                            delegate: SessionDelegate = SessionDelegate(),
                            rootQueue: DispatchQueue = DispatchQueue(label: "org.alamofire.session.rootQueue"),
                            startRequestsImmediately: Bool = true,
                            requestQueue: DispatchQueue? = nil,
                            serializationQueue: DispatchQueue? = nil,
                            interceptor: RequestInterceptor? = nil,
                            serverTrustManager: ServerTrustManager? = nil,
                            redirectHandler: RedirectHandler? = nil,
                            cachedResponseHandler: CachedResponseHandler? = nil,
                            eventMonitors: [EventMonitor] = []) 
```

> 

#### Parameters

  - configuration: `URLSessionConfiguration` to be used to create the underlying `URLSession`. Changes to this value after being passed to this initializer will have no effect. `URLSessionConfiguration.af.default` by default.
  - delegate: `SessionDelegate` that handles `session`'s delegate callbacks as well as `Request` interaction. `SessionDelegate()` by default.
  - rootQueue: Root `DispatchQueue` for all internal callbacks and state updates. **MUST** be a serial queue. `DispatchQueue(label: "org.alamofire.session.rootQueue")` by default.
  - startRequestsImmediately: Determines whether this instance will automatically start all `Request`s. `true` by default. If set to `false`, all `Request`s created must have `.resume()` called. on them for them to start.
  - requestQueue: `DispatchQueue` on which to perform `URLRequest` creation. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined request creation is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - serializationQueue: `DispatchQueue` on which to perform all response serialization. By default this queue will use the `rootQueue` as its `target`. A separate queue can be used if it's determined response serialization is a bottleneck, but that should only be done after careful testing and profiling. `nil` by default.
  - interceptor: `RequestInterceptor` to be used for all `Request`s created by this instance. `nil` by default.
  - serverTrustManager: `ServerTrustManager` to be used for all trust evaluations by this instance. `nil` by default.
  - redirectHandler: `RedirectHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - cachedResponseHandler: `CachedResponseHandler` to be used by all `Request`s created by this instance. `nil` by default.
  - eventMonitors: Additional `EventMonitor`s used by the instance. Alamofire always adds a `AlamofireNotifications` `EventMonitor` to the array passed here. `[]` by default.

## Properties

### `` `default` ``

Shared singleton instance used by all `AF.request` APIs. Cannot be modified.

``` swift
public static let `default` 
```

### `session`

Underlying `URLSession` used to create `URLSessionTasks` for this instance, and for which this instance's
`delegate` handles `URLSessionDelegate` callbacks.

``` swift
public let session: URLSession
```

> 

### `delegate`

Instance's `SessionDelegate`, which handles the `URLSessionDelegate` methods and `Request` interaction.

``` swift
public let delegate: SessionDelegate
```

### `rootQueue`

Root `DispatchQueue` for all internal callbacks and state update. **MUST** be a serial queue.

``` swift
public let rootQueue: DispatchQueue
```

### `startRequestsImmediately`

Value determining whether this instance automatically calls `resume()` on all created `Request`s.

``` swift
public let startRequestsImmediately: Bool
```

### `requestQueue`

`DispatchQueue` on which `URLRequest`s are created asynchronously. By default this queue uses `rootQueue` as its
`target`, but a separate queue can be used if request creation is determined to be a bottleneck. Always profile
and test before introducing an additional queue.

``` swift
public let requestQueue: DispatchQueue
```

### `serializationQueue`

`DispatchQueue` passed to all `Request`s on which they perform their response serialization. By default this
queue uses `rootQueue` as its `target` but a separate queue can be used if response serialization is determined
to be a bottleneck. Always profile and test before introducing an additional queue.

``` swift
public let serializationQueue: DispatchQueue
```

### `interceptor`

`RequestInterceptor` used for all `Request` created by the instance. `RequestInterceptor`s can also be set on a
per-`Request` basis, in which case the `Request`'s interceptor takes precedence over this value.

``` swift
public let interceptor: RequestInterceptor?
```

### `serverTrustManager`

`ServerTrustManager` instance used to evaluate all trust challenges and provide certificate and key pinning.

``` swift
public let serverTrustManager: ServerTrustManager?
```

### `redirectHandler`

`RedirectHandler` instance used to provide customization for request redirection.

``` swift
public let redirectHandler: RedirectHandler?
```

### `cachedResponseHandler`

`CachedResponseHandler` instance used to provide customization of cached response handling.

``` swift
public let cachedResponseHandler: CachedResponseHandler?
```

### `eventMonitor`

`CompositeEventMonitor` used to compose Alamofire's `defaultEventMonitors` and any passed `EventMonitor`s.

``` swift
public let eventMonitor: CompositeEventMonitor
```

### `defaultEventMonitors`

`EventMonitor`s included in all instances. `[AlamofireNotifications()]` by default.

``` swift
public let defaultEventMonitors: [EventMonitor] = [AlamofireNotifications()]
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

### `` `default` ``

Shared singleton instance used by all `AF.request` APIs. Cannot be modified.

``` swift
public static let `default` 
```

### `session`

Underlying `URLSession` used to create `URLSessionTasks` for this instance, and for which this instance's
`delegate` handles `URLSessionDelegate` callbacks.

``` swift
public let session: URLSession
```

> 

### `delegate`

Instance's `SessionDelegate`, which handles the `URLSessionDelegate` methods and `Request` interaction.

``` swift
public let delegate: SessionDelegate
```

### `rootQueue`

Root `DispatchQueue` for all internal callbacks and state update. **MUST** be a serial queue.

``` swift
public let rootQueue: DispatchQueue
```

### `startRequestsImmediately`

Value determining whether this instance automatically calls `resume()` on all created `Request`s.

``` swift
public let startRequestsImmediately: Bool
```

### `requestQueue`

`DispatchQueue` on which `URLRequest`s are created asynchronously. By default this queue uses `rootQueue` as its
`target`, but a separate queue can be used if request creation is determined to be a bottleneck. Always profile
and test before introducing an additional queue.

``` swift
public let requestQueue: DispatchQueue
```

### `serializationQueue`

`DispatchQueue` passed to all `Request`s on which they perform their response serialization. By default this
queue uses `rootQueue` as its `target` but a separate queue can be used if response serialization is determined
to be a bottleneck. Always profile and test before introducing an additional queue.

``` swift
public let serializationQueue: DispatchQueue
```

### `interceptor`

`RequestInterceptor` used for all `Request` created by the instance. `RequestInterceptor`s can also be set on a
per-`Request` basis, in which case the `Request`'s interceptor takes precedence over this value.

``` swift
public let interceptor: RequestInterceptor?
```

### `serverTrustManager`

`ServerTrustManager` instance used to evaluate all trust challenges and provide certificate and key pinning.

``` swift
public let serverTrustManager: ServerTrustManager?
```

### `redirectHandler`

`RedirectHandler` instance used to provide customization for request redirection.

``` swift
public let redirectHandler: RedirectHandler?
```

### `cachedResponseHandler`

`CachedResponseHandler` instance used to provide customization of cached response handling.

``` swift
public let cachedResponseHandler: CachedResponseHandler?
```

### `eventMonitor`

`CompositeEventMonitor` used to compose Alamofire's `defaultEventMonitors` and any passed `EventMonitor`s.

``` swift
public let eventMonitor: CompositeEventMonitor
```

### `defaultEventMonitors`

`EventMonitor`s included in all instances. `[AlamofireNotifications()]` by default.

``` swift
public let defaultEventMonitors: [EventMonitor] = [AlamofireNotifications()]
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

### `` `default` ``

Shared singleton instance used by all `AF.request` APIs. Cannot be modified.

``` swift
public static let `default` 
```

### `session`

Underlying `URLSession` used to create `URLSessionTasks` for this instance, and for which this instance's
`delegate` handles `URLSessionDelegate` callbacks.

``` swift
public let session: URLSession
```

> 

### `delegate`

Instance's `SessionDelegate`, which handles the `URLSessionDelegate` methods and `Request` interaction.

``` swift
public let delegate: SessionDelegate
```

### `rootQueue`

Root `DispatchQueue` for all internal callbacks and state update. **MUST** be a serial queue.

``` swift
public let rootQueue: DispatchQueue
```

### `startRequestsImmediately`

Value determining whether this instance automatically calls `resume()` on all created `Request`s.

``` swift
public let startRequestsImmediately: Bool
```

### `requestQueue`

`DispatchQueue` on which `URLRequest`s are created asynchronously. By default this queue uses `rootQueue` as its
`target`, but a separate queue can be used if request creation is determined to be a bottleneck. Always profile
and test before introducing an additional queue.

``` swift
public let requestQueue: DispatchQueue
```

### `serializationQueue`

`DispatchQueue` passed to all `Request`s on which they perform their response serialization. By default this
queue uses `rootQueue` as its `target` but a separate queue can be used if response serialization is determined
to be a bottleneck. Always profile and test before introducing an additional queue.

``` swift
public let serializationQueue: DispatchQueue
```

### `interceptor`

`RequestInterceptor` used for all `Request` created by the instance. `RequestInterceptor`s can also be set on a
per-`Request` basis, in which case the `Request`'s interceptor takes precedence over this value.

``` swift
public let interceptor: RequestInterceptor?
```

### `serverTrustManager`

`ServerTrustManager` instance used to evaluate all trust challenges and provide certificate and key pinning.

``` swift
public let serverTrustManager: ServerTrustManager?
```

### `redirectHandler`

`RedirectHandler` instance used to provide customization for request redirection.

``` swift
public let redirectHandler: RedirectHandler?
```

### `cachedResponseHandler`

`CachedResponseHandler` instance used to provide customization of cached response handling.

``` swift
public let cachedResponseHandler: CachedResponseHandler?
```

### `eventMonitor`

`CompositeEventMonitor` used to compose Alamofire's `defaultEventMonitors` and any passed `EventMonitor`s.

``` swift
public let eventMonitor: CompositeEventMonitor
```

### `defaultEventMonitors`

`EventMonitor`s included in all instances. `[AlamofireNotifications()]` by default.

``` swift
public let defaultEventMonitors: [EventMonitor] = [AlamofireNotifications()]
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `sessionConfiguration`

``` swift
public var sessionConfiguration: URLSessionConfiguration 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

### `startImmediately`

``` swift
public var startImmediately: Bool 
```

## Methods

### `cancelAllRequests(completingOnQueue:completion:)`

Cancel all active `Request`s, optionally calling a completion handler when complete.

``` swift
public func cancelAllRequests(completingOnQueue queue: DispatchQueue = .main, completion: (() -> Void)? = nil) 
```

> 

#### Parameters

  - queue: `DispatchQueue` on which the completion handler is run. `.main` by default.
  - completion: Closure to be called when all `Request`s have been cancelled.

### `request(_:method:parameters:encoding:headers:interceptor:requestModifier:)`

Creates a `DataRequest` from a `URLRequest` created using the passed components and a `RequestInterceptor`.

``` swift
open func request(_ convertible: URLConvertible,
                      method: HTTPMethod = .get,
                      parameters: Parameters? = nil,
                      encoding: ParameterEncoding = URLEncoding.default,
                      headers: HTTPHeaders? = nil,
                      interceptor: RequestInterceptor? = nil,
                      requestModifier: RequestModifier? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Parameters` (a.k.a. `[String: Any]`) value to be encoded into the `URLRequest`. `nil` by default.
  - encoding: `ParameterEncoding` to be used to encode the `parameters` value into the `URLRequest`. `URLEncoding.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:method:parameters:encoder:headers:interceptor:requestModifier:)`

Creates a `DataRequest` from a `URLRequest` created using the passed components, `Encodable` parameters, and a
`RequestInterceptor`.

``` swift
open func request<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil,
                                             encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                             headers: HTTPHeaders? = nil,
                                             interceptor: RequestInterceptor? = nil,
                                             requestModifier: RequestModifier? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Encodable` value to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. `URLEncodedFormParameterEncoder.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:interceptor:)`

Creates a `DataRequest` from a `URLRequestConvertible` value and a `RequestInterceptor`.

``` swift
open func request(_ convertible: URLRequestConvertible, interceptor: RequestInterceptor? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataRequest`.

### `streamRequest(_:method:parameters:encoder:headers:automaticallyCancelOnStreamError:interceptor:requestModifier:)`

Creates a `DataStreamRequest` from the passed components, `Encodable` parameters, and `RequestInterceptor`.

``` swift
open func streamRequest<Parameters: Encodable>(_ convertible: URLConvertible,
                                                   method: HTTPMethod = .get,
                                                   parameters: Parameters? = nil,
                                                   encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                                   headers: HTTPHeaders? = nil,
                                                   automaticallyCancelOnStreamError: Bool = false,
                                                   interceptor: RequestInterceptor? = nil,
                                                   requestModifier: RequestModifier? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Encodable` value to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. `URLEncodedFormParameterEncoder.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataStream` request.

### `streamRequest(_:method:headers:automaticallyCancelOnStreamError:interceptor:requestModifier:)`

Creates a `DataStreamRequest` from the passed components and `RequestInterceptor`.

``` swift
open func streamRequest(_ convertible: URLConvertible,
                            method: HTTPMethod = .get,
                            headers: HTTPHeaders? = nil,
                            automaticallyCancelOnStreamError: Bool = false,
                            interceptor: RequestInterceptor? = nil,
                            requestModifier: RequestModifier? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataStream` request.

### `streamRequest(_:automaticallyCancelOnStreamError:interceptor:)`

Creates a `DataStreamRequest` from the passed `URLRequestConvertible` value and `RequestInterceptor`.

``` swift
open func streamRequest(_ convertible: URLRequestConvertible,
                            automaticallyCancelOnStreamError: Bool = false,
                            interceptor: RequestInterceptor? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataStreamRequest`.

### `download(_:method:parameters:encoding:headers:interceptor:requestModifier:to:)`

Creates a `DownloadRequest` using a `URLRequest` created using the passed components, `RequestInterceptor`, and
`Destination`.

``` swift
open func download(_ convertible: URLConvertible,
                       method: HTTPMethod = .get,
                       parameters: Parameters? = nil,
                       encoding: ParameterEncoding = URLEncoding.default,
                       headers: HTTPHeaders? = nil,
                       interceptor: RequestInterceptor? = nil,
                       requestModifier: RequestModifier? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Parameters` (a.k.a. `[String: Any]`) value to be encoded into the `URLRequest`. `nil` by default.
  - encoding: `ParameterEncoding` to be used to encode the `parameters` value into the `URLRequest`. Defaults to `URLEncoding.default`.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:method:parameters:encoder:headers:interceptor:requestModifier:to:)`

Creates a `DownloadRequest` from a `URLRequest` created using the passed components, `Encodable` parameters, and
a `RequestInterceptor`.

``` swift
open func download<Parameters: Encodable>(_ convertible: URLConvertible,
                                              method: HTTPMethod = .get,
                                              parameters: Parameters? = nil,
                                              encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                              headers: HTTPHeaders? = nil,
                                              interceptor: RequestInterceptor? = nil,
                                              requestModifier: RequestModifier? = nil,
                                              to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: Value conforming to `Encodable` to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. Defaults to `URLEncodedFormParameterEncoder.default`.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:interceptor:to:)`

Creates a `DownloadRequest` from a `URLRequestConvertible` value, a `RequestInterceptor`, and a `Destination`.

``` swift
open func download(_ convertible: URLRequestConvertible,
                       interceptor: RequestInterceptor? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(resumingWith:interceptor:to:)`

Creates a `DownloadRequest` from the `resumeData` produced from a previously cancelled `DownloadRequest`, as
well as a `RequestInterceptor`, and a `Destination`.

``` swift
open func download(resumingWith data: Data,
                       interceptor: RequestInterceptor? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

> 

> 

#### Parameters

  - data: The resume data from a previously cancelled `DownloadRequest` or `URLSessionDownloadTask`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the given `Data`, `URLRequest` components, and `RequestInterceptor`.

``` swift
open func upload(_ data: Data,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - data: The `Data` to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` for the given `Data` using the `URLRequestConvertible` value and `RequestInterceptor`.

``` swift
open func upload(_ data: Data,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - data: The `Data` to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the file at the given file `URL`, using a `URLRequest` from the provided
components and `RequestInterceptor`.

``` swift
open func upload(_ fileURL: URL,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - fileURL: The `URL` of the file to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `UploadRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` for the file at the given file `URL` using the `URLRequestConvertible` value and
`RequestInterceptor`.

``` swift
open func upload(_ fileURL: URL,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - fileURL: The `URL` of the file to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` from the `InputStream` provided using a `URLRequest` from the provided components and
`RequestInterceptor`.

``` swift
open func upload(_ stream: InputStream,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - stream: The `InputStream` that provides the data to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` from the provided `InputStream` using the `URLRequestConvertible` value and
`RequestInterceptor`.

``` swift
open func upload(_ stream: InputStream,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - stream: The `InputStream` that provides the data to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:to:usingThreshold:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the multipart form data built using a closure and sent using the provided
`URLRequest` components and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: @escaping (MultipartFormData) -> Void,
                     to url: URLConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` building closure.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:with:usingThreshold:interceptor:fileManager:)`

Creates an `UploadRequest` using a `MultipartFormData` building closure, the provided `URLRequestConvertible`
value, and a `RequestInterceptor`.

``` swift
open func upload(multipartFormData: @escaping (MultipartFormData) -> Void,
                     with request: URLRequestConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` building closure.
  - request: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:to:usingThreshold:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the prebuilt `MultipartFormData` value using the provided `URLRequest` components
and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: MultipartFormData,
                     to url: URLConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` instance to upload.
  - url: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:with:usingThreshold:interceptor:fileManager:)`

Creates an `UploadRequest` for the prebuilt `MultipartFormData` value using the providing `URLRequestConvertible`
value and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: MultipartFormData,
                     with request: URLRequestConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` instance to upload.
  - request: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```

### `cancelAllRequests(completingOnQueue:completion:)`

Cancel all active `Request`s, optionally calling a completion handler when complete.

``` swift
public func cancelAllRequests(completingOnQueue queue: DispatchQueue = .main, completion: (() -> Void)? = nil) 
```

> 

#### Parameters

  - queue: `DispatchQueue` on which the completion handler is run. `.main` by default.
  - completion: Closure to be called when all `Request`s have been cancelled.

### `request(_:method:parameters:encoding:headers:interceptor:requestModifier:)`

Creates a `DataRequest` from a `URLRequest` created using the passed components and a `RequestInterceptor`.

``` swift
open func request(_ convertible: URLConvertible,
                      method: HTTPMethod = .get,
                      parameters: Parameters? = nil,
                      encoding: ParameterEncoding = URLEncoding.default,
                      headers: HTTPHeaders? = nil,
                      interceptor: RequestInterceptor? = nil,
                      requestModifier: RequestModifier? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Parameters` (a.k.a. `[String: Any]`) value to be encoded into the `URLRequest`. `nil` by default.
  - encoding: `ParameterEncoding` to be used to encode the `parameters` value into the `URLRequest`. `URLEncoding.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:method:parameters:encoder:headers:interceptor:requestModifier:)`

Creates a `DataRequest` from a `URLRequest` created using the passed components, `Encodable` parameters, and a
`RequestInterceptor`.

``` swift
open func request<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil,
                                             encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                             headers: HTTPHeaders? = nil,
                                             interceptor: RequestInterceptor? = nil,
                                             requestModifier: RequestModifier? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Encodable` value to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. `URLEncodedFormParameterEncoder.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:interceptor:)`

Creates a `DataRequest` from a `URLRequestConvertible` value and a `RequestInterceptor`.

``` swift
open func request(_ convertible: URLRequestConvertible, interceptor: RequestInterceptor? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataRequest`.

### `streamRequest(_:method:parameters:encoder:headers:automaticallyCancelOnStreamError:interceptor:requestModifier:)`

Creates a `DataStreamRequest` from the passed components, `Encodable` parameters, and `RequestInterceptor`.

``` swift
open func streamRequest<Parameters: Encodable>(_ convertible: URLConvertible,
                                                   method: HTTPMethod = .get,
                                                   parameters: Parameters? = nil,
                                                   encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                                   headers: HTTPHeaders? = nil,
                                                   automaticallyCancelOnStreamError: Bool = false,
                                                   interceptor: RequestInterceptor? = nil,
                                                   requestModifier: RequestModifier? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Encodable` value to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. `URLEncodedFormParameterEncoder.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataStream` request.

### `streamRequest(_:method:headers:automaticallyCancelOnStreamError:interceptor:requestModifier:)`

Creates a `DataStreamRequest` from the passed components and `RequestInterceptor`.

``` swift
open func streamRequest(_ convertible: URLConvertible,
                            method: HTTPMethod = .get,
                            headers: HTTPHeaders? = nil,
                            automaticallyCancelOnStreamError: Bool = false,
                            interceptor: RequestInterceptor? = nil,
                            requestModifier: RequestModifier? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataStream` request.

### `streamRequest(_:automaticallyCancelOnStreamError:interceptor:)`

Creates a `DataStreamRequest` from the passed `URLRequestConvertible` value and `RequestInterceptor`.

``` swift
open func streamRequest(_ convertible: URLRequestConvertible,
                            automaticallyCancelOnStreamError: Bool = false,
                            interceptor: RequestInterceptor? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataStreamRequest`.

### `download(_:method:parameters:encoding:headers:interceptor:requestModifier:to:)`

Creates a `DownloadRequest` using a `URLRequest` created using the passed components, `RequestInterceptor`, and
`Destination`.

``` swift
open func download(_ convertible: URLConvertible,
                       method: HTTPMethod = .get,
                       parameters: Parameters? = nil,
                       encoding: ParameterEncoding = URLEncoding.default,
                       headers: HTTPHeaders? = nil,
                       interceptor: RequestInterceptor? = nil,
                       requestModifier: RequestModifier? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Parameters` (a.k.a. `[String: Any]`) value to be encoded into the `URLRequest`. `nil` by default.
  - encoding: `ParameterEncoding` to be used to encode the `parameters` value into the `URLRequest`. Defaults to `URLEncoding.default`.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:method:parameters:encoder:headers:interceptor:requestModifier:to:)`

Creates a `DownloadRequest` from a `URLRequest` created using the passed components, `Encodable` parameters, and
a `RequestInterceptor`.

``` swift
open func download<Parameters: Encodable>(_ convertible: URLConvertible,
                                              method: HTTPMethod = .get,
                                              parameters: Parameters? = nil,
                                              encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                              headers: HTTPHeaders? = nil,
                                              interceptor: RequestInterceptor? = nil,
                                              requestModifier: RequestModifier? = nil,
                                              to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: Value conforming to `Encodable` to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. Defaults to `URLEncodedFormParameterEncoder.default`.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:interceptor:to:)`

Creates a `DownloadRequest` from a `URLRequestConvertible` value, a `RequestInterceptor`, and a `Destination`.

``` swift
open func download(_ convertible: URLRequestConvertible,
                       interceptor: RequestInterceptor? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(resumingWith:interceptor:to:)`

Creates a `DownloadRequest` from the `resumeData` produced from a previously cancelled `DownloadRequest`, as
well as a `RequestInterceptor`, and a `Destination`.

``` swift
open func download(resumingWith data: Data,
                       interceptor: RequestInterceptor? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

> 

> 

#### Parameters

  - data: The resume data from a previously cancelled `DownloadRequest` or `URLSessionDownloadTask`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the given `Data`, `URLRequest` components, and `RequestInterceptor`.

``` swift
open func upload(_ data: Data,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - data: The `Data` to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` for the given `Data` using the `URLRequestConvertible` value and `RequestInterceptor`.

``` swift
open func upload(_ data: Data,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - data: The `Data` to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the file at the given file `URL`, using a `URLRequest` from the provided
components and `RequestInterceptor`.

``` swift
open func upload(_ fileURL: URL,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - fileURL: The `URL` of the file to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `UploadRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` for the file at the given file `URL` using the `URLRequestConvertible` value and
`RequestInterceptor`.

``` swift
open func upload(_ fileURL: URL,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - fileURL: The `URL` of the file to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` from the `InputStream` provided using a `URLRequest` from the provided components and
`RequestInterceptor`.

``` swift
open func upload(_ stream: InputStream,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - stream: The `InputStream` that provides the data to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` from the provided `InputStream` using the `URLRequestConvertible` value and
`RequestInterceptor`.

``` swift
open func upload(_ stream: InputStream,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - stream: The `InputStream` that provides the data to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:to:usingThreshold:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the multipart form data built using a closure and sent using the provided
`URLRequest` components and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: @escaping (MultipartFormData) -> Void,
                     to url: URLConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` building closure.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:with:usingThreshold:interceptor:fileManager:)`

Creates an `UploadRequest` using a `MultipartFormData` building closure, the provided `URLRequestConvertible`
value, and a `RequestInterceptor`.

``` swift
open func upload(multipartFormData: @escaping (MultipartFormData) -> Void,
                     with request: URLRequestConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` building closure.
  - request: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:to:usingThreshold:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the prebuilt `MultipartFormData` value using the provided `URLRequest` components
and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: MultipartFormData,
                     to url: URLConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` instance to upload.
  - url: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:with:usingThreshold:interceptor:fileManager:)`

Creates an `UploadRequest` for the prebuilt `MultipartFormData` value using the providing `URLRequestConvertible`
value and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: MultipartFormData,
                     with request: URLRequestConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` instance to upload.
  - request: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```

### `cancelAllRequests(completingOnQueue:completion:)`

Cancel all active `Request`s, optionally calling a completion handler when complete.

``` swift
public func cancelAllRequests(completingOnQueue queue: DispatchQueue = .main, completion: (() -> Void)? = nil) 
```

> 

#### Parameters

  - queue: `DispatchQueue` on which the completion handler is run. `.main` by default.
  - completion: Closure to be called when all `Request`s have been cancelled.

### `request(_:method:parameters:encoding:headers:interceptor:requestModifier:)`

Creates a `DataRequest` from a `URLRequest` created using the passed components and a `RequestInterceptor`.

``` swift
open func request(_ convertible: URLConvertible,
                      method: HTTPMethod = .get,
                      parameters: Parameters? = nil,
                      encoding: ParameterEncoding = URLEncoding.default,
                      headers: HTTPHeaders? = nil,
                      interceptor: RequestInterceptor? = nil,
                      requestModifier: RequestModifier? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Parameters` (a.k.a. `[String: Any]`) value to be encoded into the `URLRequest`. `nil` by default.
  - encoding: `ParameterEncoding` to be used to encode the `parameters` value into the `URLRequest`. `URLEncoding.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:method:parameters:encoder:headers:interceptor:requestModifier:)`

Creates a `DataRequest` from a `URLRequest` created using the passed components, `Encodable` parameters, and a
`RequestInterceptor`.

``` swift
open func request<Parameters: Encodable>(_ convertible: URLConvertible,
                                             method: HTTPMethod = .get,
                                             parameters: Parameters? = nil,
                                             encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                             headers: HTTPHeaders? = nil,
                                             interceptor: RequestInterceptor? = nil,
                                             requestModifier: RequestModifier? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Encodable` value to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. `URLEncodedFormParameterEncoder.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataRequest`.

### `request(_:interceptor:)`

Creates a `DataRequest` from a `URLRequestConvertible` value and a `RequestInterceptor`.

``` swift
open func request(_ convertible: URLRequestConvertible, interceptor: RequestInterceptor? = nil) -> DataRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataRequest`.

### `streamRequest(_:method:parameters:encoder:headers:automaticallyCancelOnStreamError:interceptor:requestModifier:)`

Creates a `DataStreamRequest` from the passed components, `Encodable` parameters, and `RequestInterceptor`.

``` swift
open func streamRequest<Parameters: Encodable>(_ convertible: URLConvertible,
                                                   method: HTTPMethod = .get,
                                                   parameters: Parameters? = nil,
                                                   encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                                   headers: HTTPHeaders? = nil,
                                                   automaticallyCancelOnStreamError: Bool = false,
                                                   interceptor: RequestInterceptor? = nil,
                                                   requestModifier: RequestModifier? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Encodable` value to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. `URLEncodedFormParameterEncoder.default` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataStream` request.

### `streamRequest(_:method:headers:automaticallyCancelOnStreamError:interceptor:requestModifier:)`

Creates a `DataStreamRequest` from the passed components and `RequestInterceptor`.

``` swift
open func streamRequest(_ convertible: URLConvertible,
                            method: HTTPMethod = .get,
                            headers: HTTPHeaders? = nil,
                            automaticallyCancelOnStreamError: Bool = false,
                            interceptor: RequestInterceptor? = nil,
                            requestModifier: RequestModifier? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `DataStream` request.

### `streamRequest(_:automaticallyCancelOnStreamError:interceptor:)`

Creates a `DataStreamRequest` from the passed `URLRequestConvertible` value and `RequestInterceptor`.

``` swift
open func streamRequest(_ convertible: URLRequestConvertible,
                            automaticallyCancelOnStreamError: Bool = false,
                            interceptor: RequestInterceptor? = nil) -> DataStreamRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - automaticallyCancelOnStreamError: `Bool` indicating whether the instance should be canceled when an `Error` is thrown while serializing stream `Data`. `false` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.

#### Returns

The created `DataStreamRequest`.

### `download(_:method:parameters:encoding:headers:interceptor:requestModifier:to:)`

Creates a `DownloadRequest` using a `URLRequest` created using the passed components, `RequestInterceptor`, and
`Destination`.

``` swift
open func download(_ convertible: URLConvertible,
                       method: HTTPMethod = .get,
                       parameters: Parameters? = nil,
                       encoding: ParameterEncoding = URLEncoding.default,
                       headers: HTTPHeaders? = nil,
                       interceptor: RequestInterceptor? = nil,
                       requestModifier: RequestModifier? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: `Parameters` (a.k.a. `[String: Any]`) value to be encoded into the `URLRequest`. `nil` by default.
  - encoding: `ParameterEncoding` to be used to encode the `parameters` value into the `URLRequest`. Defaults to `URLEncoding.default`.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:method:parameters:encoder:headers:interceptor:requestModifier:to:)`

Creates a `DownloadRequest` from a `URLRequest` created using the passed components, `Encodable` parameters, and
a `RequestInterceptor`.

``` swift
open func download<Parameters: Encodable>(_ convertible: URLConvertible,
                                              method: HTTPMethod = .get,
                                              parameters: Parameters? = nil,
                                              encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                                              headers: HTTPHeaders? = nil,
                                              interceptor: RequestInterceptor? = nil,
                                              requestModifier: RequestModifier? = nil,
                                              to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.get` by default.
  - parameters: Value conforming to `Encodable` to be encoded into the `URLRequest`. `nil` by default.
  - encoder: `ParameterEncoder` to be used to encode the `parameters` value into the `URLRequest`. Defaults to `URLEncodedFormParameterEncoder.default`.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(_:interceptor:to:)`

Creates a `DownloadRequest` from a `URLRequestConvertible` value, a `RequestInterceptor`, and a `Destination`.

``` swift
open func download(_ convertible: URLRequestConvertible,
                       interceptor: RequestInterceptor? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

#### Parameters

  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `download(resumingWith:interceptor:to:)`

Creates a `DownloadRequest` from the `resumeData` produced from a previously cancelled `DownloadRequest`, as
well as a `RequestInterceptor`, and a `Destination`.

``` swift
open func download(resumingWith data: Data,
                       interceptor: RequestInterceptor? = nil,
                       to destination: DownloadRequest.Destination? = nil) -> DownloadRequest 
```

> 

> 

#### Parameters

  - data: The resume data from a previously cancelled `DownloadRequest` or `URLSessionDownloadTask`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - destination: `DownloadRequest.Destination` closure used to determine how and where the downloaded file should be moved. `nil` by default.

#### Returns

The created `DownloadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the given `Data`, `URLRequest` components, and `RequestInterceptor`.

``` swift
open func upload(_ data: Data,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - data: The `Data` to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` for the given `Data` using the `URLRequestConvertible` value and `RequestInterceptor`.

``` swift
open func upload(_ data: Data,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - data: The `Data` to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the file at the given file `URL`, using a `URLRequest` from the provided
components and `RequestInterceptor`.

``` swift
open func upload(_ fileURL: URL,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - fileURL: The `URL` of the file to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `UploadRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` for the file at the given file `URL` using the `URLRequestConvertible` value and
`RequestInterceptor`.

``` swift
open func upload(_ fileURL: URL,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - fileURL: The `URL` of the file to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(_:to:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` from the `InputStream` provided using a `URLRequest` from the provided components and
`RequestInterceptor`.

``` swift
open func upload(_ stream: InputStream,
                     to convertible: URLConvertible,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

#### Parameters

  - stream: The `InputStream` that provides the data to upload.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(_:with:interceptor:fileManager:)`

Creates an `UploadRequest` from the provided `InputStream` using the `URLRequestConvertible` value and
`RequestInterceptor`.

``` swift
open func upload(_ stream: InputStream,
                     with convertible: URLRequestConvertible,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

#### Parameters

  - stream: The `InputStream` that provides the data to upload.
  - convertible: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:to:usingThreshold:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the multipart form data built using a closure and sent using the provided
`URLRequest` components and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: @escaping (MultipartFormData) -> Void,
                     to url: URLConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` building closure.
  - convertible: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:with:usingThreshold:interceptor:fileManager:)`

Creates an `UploadRequest` using a `MultipartFormData` building closure, the provided `URLRequestConvertible`
value, and a `RequestInterceptor`.

``` swift
open func upload(multipartFormData: @escaping (MultipartFormData) -> Void,
                     with request: URLRequestConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` building closure.
  - request: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:to:usingThreshold:method:headers:interceptor:fileManager:requestModifier:)`

Creates an `UploadRequest` for the prebuilt `MultipartFormData` value using the provided `URLRequest` components
and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: MultipartFormData,
                     to url: URLConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     method: HTTPMethod = .post,
                     headers: HTTPHeaders? = nil,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default,
                     requestModifier: RequestModifier? = nil) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` instance to upload.
  - url: `URLConvertible` value to be used as the `URLRequest`'s `URL`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - method: `HTTPMethod` for the `URLRequest`. `.post` by default.
  - headers: `HTTPHeaders` value to be added to the `URLRequest`. `nil` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` to be used if the form data exceeds the memory threshold and is written to disk before being uploaded. `.default` instance by default.
  - requestModifier: `RequestModifier` which will be applied to the `URLRequest` created from the provided parameters. `nil` by default.

#### Returns

The created `UploadRequest`.

### `upload(multipartFormData:with:usingThreshold:interceptor:fileManager:)`

Creates an `UploadRequest` for the prebuilt `MultipartFormData` value using the providing `URLRequestConvertible`
value and `RequestInterceptor`.

``` swift
open func upload(multipartFormData: MultipartFormData,
                     with request: URLRequestConvertible,
                     usingThreshold encodingMemoryThreshold: UInt64 = MultipartFormData.encodingMemoryThreshold,
                     interceptor: RequestInterceptor? = nil,
                     fileManager: FileManager = .default) -> UploadRequest 
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cumulative
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

#### Parameters

  - multipartFormData: `MultipartFormData` instance to upload.
  - request: `URLRequestConvertible` value to be used to create the `URLRequest`.
  - encodingMemoryThreshold: Byte threshold used to determine whether the form data is encoded into memory or onto disk before being uploaded. `MultipartFormData.encodingMemoryThreshold` by default.
  - interceptor: `RequestInterceptor` value to be used by the returned `DataRequest`. `nil` by default.
  - fileManager: `FileManager` instance to be used by the returned `UploadRequest`. `.default` instance by default.

#### Returns

The created `UploadRequest`.

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `cleanup(after:)`

``` swift
public func cleanup(after request: Request) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryResult(for:dueTo:completion:)`

``` swift
public func retryResult(for request: Request, dueTo error: AFError, completion: @escaping (RetryResult) -> Void) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```

### `retryRequest(_:withDelay:)`

``` swift
public func retryRequest(_ request: Request, withDelay timeDelay: TimeInterval?) 
```
