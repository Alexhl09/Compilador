# DataStreamRequest

`Request` subclass which streams HTTP response `Data` through a `Handler` closure.

``` swift
public final class DataStreamRequest: Request 
```

## Inheritance

[`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request), [`Request`](/Request)

## Nested Type Aliases

### `Handler`

Closure type handling `DataStreamRequest.Stream` values.

``` swift
public typealias Handler<Success, Failure: Error> = (Stream<Success, Failure>) throws -> Void
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

### `Handler`

Closure type handling `DataStreamRequest.Stream` values.

``` swift
public typealias Handler<Success, Failure: Error> = (Stream<Success, Failure>) throws -> Void
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

### `Handler`

Closure type handling `DataStreamRequest.Stream` values.

``` swift
public typealias Handler<Success, Failure: Error> = (Stream<Success, Failure>) throws -> Void
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

### `Validation`

A closure used to validate a request that takes a `URLRequest` and `HTTPURLResponse` and returns whether the
request was valid.

``` swift
public typealias Validation = (_ request: URLRequest?, _ response: HTTPURLResponse) -> ValidationResult
```

## Properties

### `convertible`

`URLRequestConvertible` value used to create `URLRequest`s for this instance.

``` swift
public let convertible: URLRequestConvertible
```

### `automaticallyCancelOnStreamError`

Whether or not the instance will be cancelled if stream parsing encounters an error.

``` swift
public let automaticallyCancelOnStreamError: Bool
```

### `convertible`

`URLRequestConvertible` value used to create `URLRequest`s for this instance.

``` swift
public let convertible: URLRequestConvertible
```

### `automaticallyCancelOnStreamError`

Whether or not the instance will be cancelled if stream parsing encounters an error.

``` swift
public let automaticallyCancelOnStreamError: Bool
```

### `convertible`

`URLRequestConvertible` value used to create `URLRequest`s for this instance.

``` swift
public let convertible: URLRequestConvertible
```

### `automaticallyCancelOnStreamError`

Whether or not the instance will be cancelled if stream parsing encounters an error.

``` swift
public let automaticallyCancelOnStreamError: Bool
```

## Methods

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `validate(_:)`

Validates the `URLRequest` and `HTTPURLResponse` received for the instance using the provided `Validation` closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

#### Parameters

  - validation: `Validation` closure used to validate the request and response.

#### Returns

The `DataStreamRequest`.

### `asInputStream(bufferSize:)`

Produces an `InputStream` that receives the `Data` received by the instance.

``` swift
public func asInputStream(bufferSize: Int = 1024) -> InputStream? 
```

> 

#### Parameters

  - bufferSize: Size, in bytes, of the buffer between the `OutputStream` and `InputStream`.

#### Returns

The `InputStream` bound to the internal `OutboundStream`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `validate(_:)`

Validates the `URLRequest` and `HTTPURLResponse` received for the instance using the provided `Validation` closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

#### Parameters

  - validation: `Validation` closure used to validate the request and response.

#### Returns

The `DataStreamRequest`.

### `asInputStream(bufferSize:)`

Produces an `InputStream` that receives the `Data` received by the instance.

``` swift
public func asInputStream(bufferSize: Int = 1024) -> InputStream? 
```

> 

#### Parameters

  - bufferSize: Size, in bytes, of the buffer between the `OutputStream` and `InputStream`.

#### Returns

The `InputStream` bound to the internal `OutboundStream`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishStream(using:on:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance using the given `DataStreamSerializer` and `DispatchQueue`.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                on queue: DispatchQueue = .main) -> DataStreamPublisher<Serializer.SerializedObject> 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to serialize the streamed `Data`.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishData(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `PassthroughStreamSerializer` to stream `Data`
unserialized.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishData(queue: DispatchQueue = .main) -> DataStreamPublisher<Data> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishString(queue:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `StringStreamSerializer` to serialize stream
`Data` values into `String` values.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishString(queue: DispatchQueue = .main) -> DataStreamPublisher<String> 
```

#### Parameters

  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `publishDecodable(type:queue:decoder:preprocessor:)`

<dl>
<dt><code>canImport(Combine)</code></dt>
<dd>

Creates a `DataStreamPublisher` for this instance which uses a `DecodableStreamSerializer` with the provided
parameters to serialize stream `Data` values into the provided type.

``` swift
@available(macOS 10.15, iOS 13, watchOS 6, tvOS 13, *)
    public func publishDecodable<T: Decodable>(type: T.Type = T.self,
                                               queue: DispatchQueue = .main,
                                               decoder: DataDecoder = JSONDecoder(),
                                               preprocessor: DataPreprocessor = PassthroughPreprocessor()) -> DataStreamPublisher<T> 
```

#### Parameters

  - type: `Decodable` type to which to decode stream `Data`. Inferred from the context by default.
  - queue: `DispatchQueue` on which the `DataRequest.Stream` values will be published. `.main` by default.
  - decoder: `DataDecoder` instance used to decode stream `Data`. `JSONDecoder()` by default.
  - preprocessor: `DataPreprocessor` which filters incoming stream `Data` before serialization. `PassthroughPreprocessor()` by default.

#### Returns

The `DataStreamPublisher`.

</dd>
</dl>

### `validate(_:)`

Validates the `URLRequest` and `HTTPURLResponse` received for the instance using the provided `Validation` closure.

``` swift
@discardableResult
    public func validate(_ validation: @escaping Validation) -> Self 
```

#### Parameters

  - validation: `Validation` closure used to validate the request and response.

#### Returns

The `DataStreamRequest`.

### `asInputStream(bufferSize:)`

Produces an `InputStream` that receives the `Data` received by the instance.

``` swift
public func asInputStream(bufferSize: Int = 1024) -> InputStream? 
```

> 

#### Parameters

  - bufferSize: Size, in bytes, of the buffer between the `OutputStream` and `InputStream`.

#### Returns

The `InputStream` bound to the internal `OutboundStream`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(on:stream:)`

Adds a `StreamHandler` which performs no parsing on incoming `Data`.

``` swift
@discardableResult
    public func responseStream(on queue: DispatchQueue = .main, stream: @escaping Handler<Data, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStream(using:on:stream:)`

Adds a `StreamHandler` which uses the provided `DataStreamSerializer` to process incoming `Data`.

``` swift
@discardableResult
    public func responseStream<Serializer: DataStreamSerializer>(using serializer: Serializer,
                                                                 on queue: DispatchQueue = .main,
                                                                 stream: @escaping Handler<Serializer.SerializedObject, AFError>) -> Self 
```

#### Parameters

  - serializer: `DataStreamSerializer` used to process incoming `Data`. Its work is done on the `serializationQueue`.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamString(on:stream:)`

Adds a `StreamHandler` which parses incoming `Data` as a UTF8 `String`.

``` swift
@discardableResult
    public func responseStreamString(on queue: DispatchQueue = .main,
                                     stream: @escaping Handler<String, Never>) -> Self 
```

#### Parameters

  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `responseStreamDecodable(of:on:using:preprocessor:stream:)`

Adds a `StreamHandler` which parses incoming `Data` using the provided `DataDecoder`.

``` swift
@discardableResult
    public func responseStreamDecodable<T: Decodable>(of type: T.Type = T.self,
                                                      on queue: DispatchQueue = .main,
                                                      using decoder: DataDecoder = JSONDecoder(),
                                                      preprocessor: DataPreprocessor = PassthroughPreprocessor(),
                                                      stream: @escaping Handler<T, AFError>) -> Self 
```

#### Parameters

  - type: `Decodable` type to parse incoming `Data` into.
  - queue: `DispatchQueue` on which to perform `StreamHandler` closure.
  - decoder: `DataDecoder` used to decode the incoming `Data`.
  - preprocessor: `DataPreprocessor` used to process the incoming `Data` before it's passed to the `decoder`.
  - stream: `StreamHandler` closure called as `Data` is received. May be called multiple times.

#### Returns

The `DataStreamRequest`.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(statusCode:)`

Validates that the response has a status code in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(statusCode acceptableStatusCodes: S) -> Self where S.Iterator.Element == Int 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - statusCode: `Sequence` of acceptable response status codes.

#### Returns

The instance.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate(contentType:)`

Validates that the response has a content type in the specified sequence.

``` swift
@discardableResult
    public func validate<S: Sequence>(contentType acceptableContentTypes: @escaping @autoclosure () -> S) -> Self where S.Iterator.Element == String 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Parameters

  - contentType: The acceptable content types, which may specify wildcard types and/or subtypes.

#### Returns

The request.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.

### `validate()`

Validates that the response has a status code in the default acceptable range of 200...299, and that the content
type matches any specified in the Accept HTTP header field.

``` swift
@discardableResult
    public func validate() -> Self 
```

If validation fails, subsequent calls to response handlers will have an associated error.

#### Returns

The instance.
