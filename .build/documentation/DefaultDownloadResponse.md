# DefaultDownloadResponse

Used to store all data associated with an non-serialized response of a download request.

``` swift
public struct DefaultDownloadResponse 
```

## Inheritance

[`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response)

## Initializers

### `init(request:response:temporaryURL:destinationURL:resumeData:error:timeline:metrics:)`

Creates a `DefaultDownloadResponse` instance from the specified parameters.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        temporaryURL: URL?,
        destinationURL: URL?,
        resumeData: Data?,
        error: Error?,
        timeline: Timeline = Timeline(),
        metrics: AnyObject? = nil)
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - temporaryURL: The temporary destination URL of the data returned from the server.
  - destinationURL: The final destination URL of the data returned from the server if it was moved.
  - resumeData: The resume data generated if the request was cancelled.
  - error: The error encountered while executing or validating the request.
  - timeline: The timeline of the complete lifecycle of the request. `Timeline()` by default.
  - metrics: The task metrics containing the request / response statistics. `nil` by default.

### `init(request:response:temporaryURL:destinationURL:resumeData:error:timeline:metrics:)`

Creates a `DefaultDownloadResponse` instance from the specified parameters.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        temporaryURL: URL?,
        destinationURL: URL?,
        resumeData: Data?,
        error: Error?,
        timeline: Timeline = Timeline(),
        metrics: AnyObject? = nil)
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - temporaryURL: The temporary destination URL of the data returned from the server.
  - destinationURL: The final destination URL of the data returned from the server if it was moved.
  - resumeData: The resume data generated if the request was cancelled.
  - error: The error encountered while executing or validating the request.
  - timeline: The timeline of the complete lifecycle of the request. `Timeline()` by default.
  - metrics: The task metrics containing the request / response statistics. `nil` by default.

### `init(request:response:temporaryURL:destinationURL:resumeData:error:timeline:metrics:)`

Creates a `DefaultDownloadResponse` instance from the specified parameters.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        temporaryURL: URL?,
        destinationURL: URL?,
        resumeData: Data?,
        error: Error?,
        timeline: Timeline = Timeline(),
        metrics: AnyObject? = nil)
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - temporaryURL: The temporary destination URL of the data returned from the server.
  - destinationURL: The final destination URL of the data returned from the server if it was moved.
  - resumeData: The resume data generated if the request was cancelled.
  - error: The error encountered while executing or validating the request.
  - timeline: The timeline of the complete lifecycle of the request. `Timeline()` by default.
  - metrics: The task metrics containing the request / response statistics. `nil` by default.

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

### `error`

The error encountered while executing or validating the request.

``` swift
public let error: Error?
```

### `timeline`

The timeline of the complete lifecycle of the request.

``` swift
public let timeline: Timeline
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

### `error`

The error encountered while executing or validating the request.

``` swift
public let error: Error?
```

### `timeline`

The timeline of the complete lifecycle of the request.

``` swift
public let timeline: Timeline
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

### `error`

The error encountered while executing or validating the request.

``` swift
public let error: Error?
```

### `timeline`

The timeline of the complete lifecycle of the request.

``` swift
public let timeline: Timeline
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
