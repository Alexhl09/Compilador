# DataResponsePublisher

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

A Combine `Publisher` that publishes the `DataResponse<Value, AFError>` of the provided `DataRequest`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
public struct DataResponsePublisher<Value>: Publisher 
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
public typealias Output = DataResponse<Value, AFError>
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
public typealias Output = DataResponse<Value, AFError>
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
public typealias Output = DataResponse<Value, AFError>
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
public init<Serializer: ResponseSerializer>(_ request: DataRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `ResponseSerializer` used to produce the published `DataResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `DataResponseSerializerProtocol`.

``` swift
public init<Serializer: DataResponseSerializerProtocol>(_ request: DataRequest,
                                                            queue: DispatchQueue,
                                                            serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `DataResponseSerializerProtocol` used to produce the published `DataResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `ResponseSerializer`.

``` swift
public init<Serializer: ResponseSerializer>(_ request: DataRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `ResponseSerializer` used to produce the published `DataResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `DataResponseSerializerProtocol`.

``` swift
public init<Serializer: DataResponseSerializerProtocol>(_ request: DataRequest,
                                                            queue: DispatchQueue,
                                                            serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `DataResponseSerializerProtocol` used to produce the published `DataResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `ResponseSerializer`.

``` swift
public init<Serializer: ResponseSerializer>(_ request: DataRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `ResponseSerializer` used to produce the published `DataResponse`.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `DataResponseSerializerProtocol`.

``` swift
public init<Serializer: DataResponseSerializerProtocol>(_ request: DataRequest,
                                                            queue: DispatchQueue,
                                                            serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `DataResponse` value will be published. `.main` by default.
  - serializer: `DataResponseSerializerProtocol` used to produce the published `DataResponse`.

</dd>
</dl>

## Methods

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DataResponse` value.

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

Publishes the `Result` of the `DataResponse` as a single `Value` or fail with the `AFError` instance.

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
public func receive<S>(subscriber: S) where S: Subscriber, DataResponsePublisher.Failure == S.Failure, DataResponsePublisher.Output == S.Input 
```

</dd>
</dl>

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DataResponse` value.

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

Publishes the `Result` of the `DataResponse` as a single `Value` or fail with the `AFError` instance.

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
public func receive<S>(subscriber: S) where S: Subscriber, DataResponsePublisher.Failure == S.Failure, DataResponsePublisher.Output == S.Input 
```

</dd>
</dl>

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DataResponse` value.

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

Publishes the `Result` of the `DataResponse` as a single `Value` or fail with the `AFError` instance.

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
public func receive<S>(subscriber: S) where S: Subscriber, DataResponsePublisher.Failure == S.Failure, DataResponsePublisher.Output == S.Input 
```

</dd>
</dl>
