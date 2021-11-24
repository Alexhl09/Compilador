# DownloadResponse

Used to store all data associated with a serialized response of a download request.

``` swift
public struct DownloadResponse<Value> 
```

## Inheritance

`CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response)

## Initializers

### `init(request:response:temporaryURL:destinationURL:resumeData:result:timeline:)`

Creates a `DownloadResponse` instance with the specified parameters derived from response serialization.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        temporaryURL: URL?,
        destinationURL: URL?,
        resumeData: Data?,
        result: Result<Value>,
        timeline: Timeline = Timeline())
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - temporaryURL: The temporary destination URL of the data returned from the server.
  - destinationURL: The final destination URL of the data returned from the server if it was moved.
  - resumeData: The resume data generated if the request was cancelled.
  - result: The result of response serialization.
  - timeline: The timeline of the complete lifecycle of the `Request`. Defaults to `Timeline()`.

#### Returns

The new `DownloadResponse` instance.

### `init(request:response:temporaryURL:destinationURL:resumeData:result:timeline:)`

Creates a `DownloadResponse` instance with the specified parameters derived from response serialization.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        temporaryURL: URL?,
        destinationURL: URL?,
        resumeData: Data?,
        result: Result<Value>,
        timeline: Timeline = Timeline())
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - temporaryURL: The temporary destination URL of the data returned from the server.
  - destinationURL: The final destination URL of the data returned from the server if it was moved.
  - resumeData: The resume data generated if the request was cancelled.
  - result: The result of response serialization.
  - timeline: The timeline of the complete lifecycle of the `Request`. Defaults to `Timeline()`.

#### Returns

The new `DownloadResponse` instance.

### `init(request:response:temporaryURL:destinationURL:resumeData:result:timeline:)`

Creates a `DownloadResponse` instance with the specified parameters derived from response serialization.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        temporaryURL: URL?,
        destinationURL: URL?,
        resumeData: Data?,
        result: Result<Value>,
        timeline: Timeline = Timeline())
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - temporaryURL: The temporary destination URL of the data returned from the server.
  - destinationURL: The final destination URL of the data returned from the server if it was moved.
  - resumeData: The resume data generated if the request was cancelled.
  - result: The result of response serialization.
  - timeline: The timeline of the complete lifecycle of the `Request`. Defaults to `Timeline()`.

#### Returns

The new `DownloadResponse` instance.

### `init(request:response:fileURL:resumeData:metrics:serializationDuration:result:)`

Creates a `DownloadResponse` instance with the specified parameters derived from response serialization.

``` swift
public init(request: URLRequest?,
                response: HTTPURLResponse?,
                fileURL: URL?,
                resumeData: Data?,
                metrics: URLSessionTaskMetrics?,
                serializationDuration: TimeInterval,
                result: Result<Success, Failure>) 
```

#### Parameters

  - request: The `URLRequest` sent to the server.
  - response: The `HTTPURLResponse` from the server.
  - temporaryURL: The temporary destination `URL` of the data returned from the server.
  - destinationURL: The final destination `URL` of the data returned from the server, if it was moved.
  - resumeData: The resume `Data` generated if the request was cancelled.
  - metrics: The `URLSessionTaskMetrics` of the `DownloadRequest`.
  - serializationDuration: The duration taken by serialization.
  - result: The `Result` of response serialization.

### `init(request:response:fileURL:resumeData:metrics:serializationDuration:result:)`

Creates a `DownloadResponse` instance with the specified parameters derived from response serialization.

``` swift
public init(request: URLRequest?,
                response: HTTPURLResponse?,
                fileURL: URL?,
                resumeData: Data?,
                metrics: URLSessionTaskMetrics?,
                serializationDuration: TimeInterval,
                result: Result<Success, Failure>) 
```

#### Parameters

  - request: The `URLRequest` sent to the server.
  - response: The `HTTPURLResponse` from the server.
  - temporaryURL: The temporary destination `URL` of the data returned from the server.
  - destinationURL: The final destination `URL` of the data returned from the server, if it was moved.
  - resumeData: The resume `Data` generated if the request was cancelled.
  - metrics: The `URLSessionTaskMetrics` of the `DownloadRequest`.
  - serializationDuration: The duration taken by serialization.
  - result: The `Result` of response serialization.

### `init(request:response:fileURL:resumeData:metrics:serializationDuration:result:)`

Creates a `DownloadResponse` instance with the specified parameters derived from response serialization.

``` swift
public init(request: URLRequest?,
                response: HTTPURLResponse?,
                fileURL: URL?,
                resumeData: Data?,
                metrics: URLSessionTaskMetrics?,
                serializationDuration: TimeInterval,
                result: Result<Success, Failure>) 
```

#### Parameters

  - request: The `URLRequest` sent to the server.
  - response: The `HTTPURLResponse` from the server.
  - temporaryURL: The temporary destination `URL` of the data returned from the server.
  - destinationURL: The final destination `URL` of the data returned from the server, if it was moved.
  - resumeData: The resume `Data` generated if the request was cancelled.
  - metrics: The `URLSessionTaskMetrics` of the `DownloadRequest`.
  - serializationDuration: The duration taken by serialization.
  - result: The `Result` of response serialization.

## Properties

### `request`

The URL request sent to the server.

``` swift
public let request: URLRequest?
```

### `response`

The server's response to the URL request.

``` swift
public let response: HTTPURLResponse?
```

### `temporaryURL`

The temporary destination URL of the data returned from the server.

``` swift
public let temporaryURL: URL?
```

### `destinationURL`

The final destination URL of the data returned from the server if it was moved.

``` swift
public let destinationURL: URL?
```

### `resumeData`

The resume data generated if the request was cancelled.

``` swift
public let resumeData: Data?
```

### `result`

The result of response serialization.

``` swift
public let result: Result<Value>
```

### `timeline`

The timeline of the complete lifecycle of the request.

``` swift
public let timeline: Timeline
```

### `value`

Returns the associated value of the result if it is a success, `nil` otherwise.

``` swift
public var value: Value? 
```

### `error`

Returns the associated error value if the result if it is a failure, `nil` otherwise.

``` swift
public var error: Error? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `request`

The URL request sent to the server.

``` swift
public let request: URLRequest?
```

### `response`

The server's response to the URL request.

``` swift
public let response: HTTPURLResponse?
```

### `temporaryURL`

The temporary destination URL of the data returned from the server.

``` swift
public let temporaryURL: URL?
```

### `destinationURL`

The final destination URL of the data returned from the server if it was moved.

``` swift
public let destinationURL: URL?
```

### `resumeData`

The resume data generated if the request was cancelled.

``` swift
public let resumeData: Data?
```

### `result`

The result of response serialization.

``` swift
public let result: Result<Value>
```

### `timeline`

The timeline of the complete lifecycle of the request.

``` swift
public let timeline: Timeline
```

### `value`

Returns the associated value of the result if it is a success, `nil` otherwise.

``` swift
public var value: Value? 
```

### `error`

Returns the associated error value if the result if it is a failure, `nil` otherwise.

``` swift
public var error: Error? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `request`

The URL request sent to the server.

``` swift
public let request: URLRequest?
```

### `response`

The server's response to the URL request.

``` swift
public let response: HTTPURLResponse?
```

### `temporaryURL`

The temporary destination URL of the data returned from the server.

``` swift
public let temporaryURL: URL?
```

### `destinationURL`

The final destination URL of the data returned from the server if it was moved.

``` swift
public let destinationURL: URL?
```

### `resumeData`

The resume data generated if the request was cancelled.

``` swift
public let resumeData: Data?
```

### `result`

The result of response serialization.

``` swift
public let result: Result<Value>
```

### `timeline`

The timeline of the complete lifecycle of the request.

``` swift
public let timeline: Timeline
```

### `value`

Returns the associated value of the result if it is a success, `nil` otherwise.

``` swift
public var value: Value? 
```

### `error`

Returns the associated error value if the result if it is a failure, `nil` otherwise.

``` swift
public var error: Error? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the response serialization result and the
timeline.

``` swift
public var debugDescription: String 
```

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `metrics`

<dl>
<dt><code>!os(watchOS)</code></dt>
<dd>

The task metrics containing the request / response statistics.

``` swift
public var metrics: URLSessionTaskMetrics? 
```

</dd>
</dl>

### `request`

The URL request sent to the server.

``` swift
public let request: URLRequest?
```

### `response`

The server's response to the URL request.

``` swift
public let response: HTTPURLResponse?
```

### `fileURL`

The final destination URL of the data returned from the server after it is moved.

``` swift
public let fileURL: URL?
```

### `resumeData`

The resume data generated if the request was cancelled.

``` swift
public let resumeData: Data?
```

### `metrics`

The final metrics of the response.

``` swift
public let metrics: URLSessionTaskMetrics?
```

> 

### `serializationDuration`

The time taken to serialize the response.

``` swift
public let serializationDuration: TimeInterval
```

### `result`

The result of response serialization.

``` swift
public let result: Result<Success, Failure>
```

### `value`

Returns the associated value of the result if it is a success, `nil` otherwise.

``` swift
public var value: Success? 
```

### `error`

Returns the associated error value if the result if it is a failure, `nil` otherwise.

``` swift
public var error: Failure? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `request`

The URL request sent to the server.

``` swift
public let request: URLRequest?
```

### `response`

The server's response to the URL request.

``` swift
public let response: HTTPURLResponse?
```

### `fileURL`

The final destination URL of the data returned from the server after it is moved.

``` swift
public let fileURL: URL?
```

### `resumeData`

The resume data generated if the request was cancelled.

``` swift
public let resumeData: Data?
```

### `metrics`

The final metrics of the response.

``` swift
public let metrics: URLSessionTaskMetrics?
```

> 

### `serializationDuration`

The time taken to serialize the response.

``` swift
public let serializationDuration: TimeInterval
```

### `result`

The result of response serialization.

``` swift
public let result: Result<Success, Failure>
```

### `value`

Returns the associated value of the result if it is a success, `nil` otherwise.

``` swift
public var value: Success? 
```

### `error`

Returns the associated error value if the result if it is a failure, `nil` otherwise.

``` swift
public var error: Failure? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `request`

The URL request sent to the server.

``` swift
public let request: URLRequest?
```

### `response`

The server's response to the URL request.

``` swift
public let response: HTTPURLResponse?
```

### `fileURL`

The final destination URL of the data returned from the server after it is moved.

``` swift
public let fileURL: URL?
```

### `resumeData`

The resume data generated if the request was cancelled.

``` swift
public let resumeData: Data?
```

### `metrics`

The final metrics of the response.

``` swift
public let metrics: URLSessionTaskMetrics?
```

> 

### `serializationDuration`

The time taken to serialize the response.

``` swift
public let serializationDuration: TimeInterval
```

### `result`

The result of response serialization.

``` swift
public let result: Result<Success, Failure>
```

### `value`

Returns the associated value of the result if it is a success, `nil` otherwise.

``` swift
public var value: Success? 
```

### `error`

Returns the associated error value if the result if it is a failure, `nil` otherwise.

``` swift
public var error: Failure? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes the URL request, the URL
response, the temporary and destination URLs, the resume data, the durations of the network and serialization
actions, and the response serialization result.

``` swift
public var debugDescription: String 
```

## Methods

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> DownloadResponse<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> DownloadResponse<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<E: Error>(_ transform: (Error) -> E) -> DownloadResponse 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `flatMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<E: Error>(_ transform: (Error) throws -> E) -> DownloadResponse 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `map(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func map<NewSuccess>(_ transform: (Success) -> NewSuccess) -> DownloadResponse<NewSuccess, Failure> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleInt = possibleData.map { $0.count }
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A `DownloadResponse` whose result wraps the value returned by the given closure. If this instance's result is a failure, returns a response wrapping the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `tryMap(_:)`

Evaluates the given closure when the result of this `DownloadResponse` is a success, passing the unwrapped
result value as a parameter.

``` swift
public func tryMap<NewSuccess>(_ transform: (Success) throws -> NewSuccess) -> DownloadResponse<NewSuccess, Error> 
```

Use the `tryMap` method with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance's result.

#### Returns

A success or failure `DownloadResponse` depending on the result of the given closure. If this instance's result is a failure, returns the same failure.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `mapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<NewFailure: Error>(_ transform: (Failure) -> NewFailure) -> DownloadResponse<Success, NewFailure> 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let withMyError = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.

### `tryMapError(_:)`

Evaluates the specified closure when the `DownloadResponse` is a failure, passing the unwrapped error as a parameter.

``` swift
public func tryMapError<NewFailure: Error>(_ transform: (Failure) throws -> NewFailure) -> DownloadResponse<Success, Error> 
```

Use the `tryMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: DownloadResponse<Data> = ...
let possibleObject = possibleData.tryMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `DownloadResponse` instance containing the result of the transform.
