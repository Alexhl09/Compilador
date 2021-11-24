# DownloadResponseSerializer

A generic `DownloadResponseSerializerType` used to serialize a request, response, and data into a serialized object.

``` swift
public struct DownloadResponseSerializer<Value>: DownloadResponseSerializerProtocol 
```

## Inheritance

[`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol), [`DownloadResponseSerializerProtocol`](/DownloadResponseSerializerProtocol)

## Nested Type Aliases

### `SerializedObject`

The type of serialized object to be created by this `DownloadResponseSerializer`.

``` swift
public typealias SerializedObject = Value
```

### `SerializedObject`

The type of serialized object to be created by this `DownloadResponseSerializer`.

``` swift
public typealias SerializedObject = Value
```

### `SerializedObject`

The type of serialized object to be created by this `DownloadResponseSerializer`.

``` swift
public typealias SerializedObject = Value
```

## Initializers

### `init(serializeResponse:)`

Initializes the `ResponseSerializer` instance with the given serialize response closure.

``` swift
public init(serializeResponse: @escaping (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<Value>) 
```

#### Parameters

  - serializeResponse: The closure used to serialize the response.

#### Returns

The new generic response serializer instance.

### `init(serializeResponse:)`

Initializes the `ResponseSerializer` instance with the given serialize response closure.

``` swift
public init(serializeResponse: @escaping (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<Value>) 
```

#### Parameters

  - serializeResponse: The closure used to serialize the response.

#### Returns

The new generic response serializer instance.

### `init(serializeResponse:)`

Initializes the `ResponseSerializer` instance with the given serialize response closure.

``` swift
public init(serializeResponse: @escaping (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<Value>) 
```

#### Parameters

  - serializeResponse: The closure used to serialize the response.

#### Returns

The new generic response serializer instance.

## Properties

### `serializeResponse`

A closure used by response handlers that takes a request, response, url and error and returns a result.

``` swift
public var serializeResponse: (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<Value>
```

### `serializeResponse`

A closure used by response handlers that takes a request, response, url and error and returns a result.

``` swift
public var serializeResponse: (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<Value>
```

### `serializeResponse`

A closure used by response handlers that takes a request, response, url and error and returns a result.

``` swift
public var serializeResponse: (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<Value>
```
