# DefaultDataResponse

Used to store all data associated with an non-serialized response of a data or upload request.

``` swift
public struct DefaultDataResponse 
```

## Inheritance

[`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response), [`Response`](/Response)

## Initializers

### `init(request:response:data:error:timeline:metrics:)`

Creates a `DefaultDataResponse` instance from the specified parameters.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?,
        timeline: Timeline = Timeline(),
        metrics: AnyObject? = nil)
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - data: The data returned by the server.
  - error: The error encountered while executing or validating the request.
  - timeline: The timeline of the complete lifecycle of the request. `Timeline()` by default.
  - metrics: The task metrics containing the request / response statistics. `nil` by default.

### `init(request:response:data:error:timeline:metrics:)`

Creates a `DefaultDataResponse` instance from the specified parameters.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?,
        timeline: Timeline = Timeline(),
        metrics: AnyObject? = nil)
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - data: The data returned by the server.
  - error: The error encountered while executing or validating the request.
  - timeline: The timeline of the complete lifecycle of the request. `Timeline()` by default.
  - metrics: The task metrics containing the request / response statistics. `nil` by default.

### `init(request:response:data:error:timeline:metrics:)`

Creates a `DefaultDataResponse` instance from the specified parameters.

``` swift
public init(
        request: URLRequest?,
        response: HTTPURLResponse?,
        data: Data?,
        error: Error?,
        timeline: Timeline = Timeline(),
        metrics: AnyObject? = nil)
```

#### Parameters

  - request: The URL request sent to the server.
  - response: The server's response to the URL request.
  - data: The data returned by the server.
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

### `data`

The data returned by the server.

``` swift
public let data: Data?
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

### `data`

The data returned by the server.

``` swift
public let data: Data?
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

### `data`

The data returned by the server.

``` swift
public let data: Data?
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
