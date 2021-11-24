# DataStreamPublisher

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
public struct DataStreamPublisher<Value>: Publisher 
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
public typealias Output = DataStreamRequest.Stream<Value, AFError>
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
public typealias Output = DataStreamRequest.Stream<Value, AFError>
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
public typealias Output = DataStreamRequest.Stream<Value, AFError>
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

Creates an instance which will serialize responses using the provided `DataStreamSerializer`.

``` swift
public init<Serializer: DataStreamSerializer>(_ request: DataStreamRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataStreamRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `Stream<Value, AFError>` values will be published. `.main` by default.
  - serializer: `DataStreamSerializer` used to produce the published `Stream<Value, AFError>` values.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `DataStreamSerializer`.

``` swift
public init<Serializer: DataStreamSerializer>(_ request: DataStreamRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataStreamRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `Stream<Value, AFError>` values will be published. `.main` by default.
  - serializer: `DataStreamSerializer` used to produce the published `Stream<Value, AFError>` values.

</dd>
</dl>

### `init(_:queue:serializer:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates an instance which will serialize responses using the provided `DataStreamSerializer`.

``` swift
public init<Serializer: DataStreamSerializer>(_ request: DataStreamRequest, queue: DispatchQueue, serializer: Serializer)
        where Value == Serializer.SerializedObject 
```

#### Parameters

  - request: `DataStreamRequest` for which to publish the response.
  - queue: `DispatchQueue` on which the `Stream<Value, AFError>` values will be published. `.main` by default.
  - serializer: `DataStreamSerializer` used to produce the published `Stream<Value, AFError>` values.

</dd>
</dl>

## Methods

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DataStreamRequest.Stream`'s `Event`s.

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

Publishes the streamed values of the `DataStreamRequest.Stream` as a sequence of `Value` or fail with the
`AFError` instance.

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
public func receive<S>(subscriber: S) where S: Subscriber, DataStreamPublisher.Failure == S.Failure, DataStreamPublisher.Output == S.Input 
```

</dd>
</dl>

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DataStreamRequest.Stream`'s `Event`s.

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

Publishes the streamed values of the `DataStreamRequest.Stream` as a sequence of `Value` or fail with the
`AFError` instance.

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
public func receive<S>(subscriber: S) where S: Subscriber, DataStreamPublisher.Failure == S.Failure, DataStreamPublisher.Output == S.Input 
```

</dd>
</dl>

### `result()`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Publishes only the `Result` of the `DataStreamRequest.Stream`'s `Event`s.

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

Publishes the streamed values of the `DataStreamRequest.Stream` as a sequence of `Value` or fail with the
`AFError` instance.

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
public func receive<S>(subscriber: S) where S: Subscriber, DataStreamPublisher.Failure == S.Failure, DataStreamPublisher.Output == S.Input 
```

</dd>
</dl>
