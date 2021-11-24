# DownloadResponsePublisher

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

A Combine `Publisher` that publishes the `DownloadResponse<Value, AFError>` of the provided `DownloadRequest`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
public struct DownloadResponsePublisher<Value>: Publisher 
```

</dd>
</dl>

## Inheritance

`Publisher`, `Publisher`, `Publisher`

## Nested Type Aliases

### `Output`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public typealias Output = DownloadResponse<Value, AFError>
```

</dd>
</dl>

### `Failure`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public typealias Failure = Never
```

</dd>
</dl>

### `Output`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public typealias Output = DownloadResponse<Value, AFError>
```

</dd>
</dl>

### `Failure`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public typealias Failure = Never
```

</dd>
</dl>

### `Output`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public typealias Output = DownloadResponse<Value, AFError>
```

</dd>
</dl>

### `Failure`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public typealias Failure = Never
```

</dd>
</dl>

## Initializers

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `ResponseSerializer`.

``` swift
public init<Serializer: ResponseSerializer>(_ request: DownloadRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DownloadRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DownloadResponse` value will be published. `.main` by default.
  - serializer: `ResponseSerializer` used to produce the published `DownloadResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `DownloadResponseSerializerProtocol` value.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public init<Serializer: DownloadResponseSerializerProtocol>(_ request: DownloadRequest,
                                                                queue: DispatchQueue,
                                                                serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DownloadRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `DownloadResponseSerializerProtocol` used to produce the published `DownloadResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `ResponseSerializer`.

``` swift
public init<Serializer: ResponseSerializer>(_ request: DownloadRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DownloadRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DownloadResponse` value will be published. `.main` by default.
  - serializer: `ResponseSerializer` used to produce the published `DownloadResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `DownloadResponseSerializerProtocol` value.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public init<Serializer: DownloadResponseSerializerProtocol>(_ request: DownloadRequest,
                                                                queue: DispatchQueue,
                                                                serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DownloadRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `DownloadResponseSerializerProtocol` used to produce the published `DownloadResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `ResponseSerializer`.

``` swift
public init<Serializer: ResponseSerializer>(_ request: DownloadRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DownloadRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DownloadResponse` value will be published. `.main` by default.
  - serializer: `ResponseSerializer` used to produce the published `DownloadResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `DownloadResponseSerializerProtocol` value.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public init<Serializer: DownloadResponseSerializerProtocol>(_ request: DownloadRequest,
                                                                queue: DispatchQueue,
                                                                serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DownloadRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `DownloadResponseSerializerProtocol` used to produce the published `DownloadResponse`.

</dd>
</dl>

## Methods

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DownloadResponse` value.

``` swift
public func result() -> AnyPublisher<Result<Value, AFError>, Never> 
```

#### Returns

The `AnyPublisher` publishing the `Result<Value, AFError>` value.

</dd>
</dl>

### `value()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes the `Result` of the `DownloadResponse` as a single `Value` or fail with the `AFError` instance.

``` swift
public func value() -> AnyPublisher<Value, AFError> 
```

#### Returns

The `AnyPublisher<Value, AFError>` publishing the stream.

</dd>
</dl>

### `receive(subscriber:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public func receive<S>(subscriber: S) where S: Subscriber, DownloadResponsePublisher.Failure == S.Failure, DownloadResponsePublisher.Output == S.Input 
```

</dd>
</dl>

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DownloadResponse` value.

``` swift
public func result() -> AnyPublisher<Result<Value, AFError>, Never> 
```

#### Returns

The `AnyPublisher` publishing the `Result<Value, AFError>` value.

</dd>
</dl>

### `value()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes the `Result` of the `DownloadResponse` as a single `Value` or fail with the `AFError` instance.

``` swift
public func value() -> AnyPublisher<Value, AFError> 
```

#### Returns

The `AnyPublisher<Value, AFError>` publishing the stream.

</dd>
</dl>

### `receive(subscriber:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public func receive<S>(subscriber: S) where S: Subscriber, DownloadResponsePublisher.Failure == S.Failure, DownloadResponsePublisher.Output == S.Input 
```

</dd>
</dl>

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DownloadResponse` value.

``` swift
public func result() -> AnyPublisher<Result<Value, AFError>, Never> 
```

#### Returns

The `AnyPublisher` publishing the `Result<Value, AFError>` value.

</dd>
</dl>

### `value()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes the `Result` of the `DownloadResponse` as a single `Value` or fail with the `AFError` instance.

``` swift
public func value() -> AnyPublisher<Value, AFError> 
```

#### Returns

The `AnyPublisher<Value, AFError>` publishing the stream.

</dd>
</dl>

### `receive(subscriber:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
public func receive<S>(subscriber: S) where S: Subscriber, DownloadResponsePublisher.Failure == S.Failure, DownloadResponsePublisher.Output == S.Input 
```

</dd>
</dl>
