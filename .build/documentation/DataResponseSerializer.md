# DataResponseSerializer

A generic `DataResponseSerializerType` used to serialize a request, response, and data into a serialized object.

``` swift
public struct DataResponseSerializer<Value>: DataResponseSerializerProtocol 
```

## Inheritance

[`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`DataResponseSerializerProtocol`](/DataResponseSerializerProtocol), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer)

## Nested Type Aliases

### `SerializedObject`

The type of serialized object to be created by this `DataResponseSerializer`.

``` swift
public typealias SerializedObject = Value
```

### `SerializedObject`

The type of serialized object to be created by this `DataResponseSerializer`.

``` swift
public typealias SerializedObject = Value
```

### `SerializedObject`

The type of serialized object to be created by this `DataResponseSerializer`.

``` swift
public typealias SerializedObject = Value
```

## Initializers

### `init(serializeResponse:)`

Initializes the `ResponseSerializer` instance with the given serialize response closure.

``` swift
public init(serializeResponse: @escaping (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<Value>) 
```

#### Parameters

  - serializeResponse: The closure used to serialize the response.

#### Returns

The new generic response serializer instance.

### `init(serializeResponse:)`

Initializes the `ResponseSerializer` instance with the given serialize response closure.

``` swift
public init(serializeResponse: @escaping (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<Value>) 
```

#### Parameters

  - serializeResponse: The closure used to serialize the response.

#### Returns

The new generic response serializer instance.

### `init(serializeResponse:)`

Initializes the `ResponseSerializer` instance with the given serialize response closure.

``` swift
public init(serializeResponse: @escaping (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<Value>) 
```

#### Parameters

  - serializeResponse: The closure used to serialize the response.

#### Returns

The new generic response serializer instance.

### `init(dataPreprocessor:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance using the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

### `init(dataPreprocessor:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance using the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

### `init(dataPreprocessor:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance using the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = DataResponseSerializer.defaultDataPreprocessor,
                emptyResponseCodes: Set<Int> = DataResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = DataResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

## Properties

### `serializeResponse`

A closure used by response handlers that takes a request, response, data and error and returns a result.

``` swift
public var serializeResponse: (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<Value>
```

### `serializeResponse`

A closure used by response handlers that takes a request, response, data and error and returns a result.

``` swift
public var serializeResponse: (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<Value>
```

### `serializeResponse`

A closure used by response handlers that takes a request, response, data and error and returns a result.

``` swift
public var serializeResponse: (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<Value>
```

### `dataPreprocessor`

``` swift
public let dataPreprocessor: DataPreprocessor
```

### `emptyResponseCodes`

``` swift
public let emptyResponseCodes: Set<Int>
```

### `emptyRequestMethods`

``` swift
public let emptyRequestMethods: Set<HTTPMethod>
```

### `dataPreprocessor`

``` swift
public let dataPreprocessor: DataPreprocessor
```

### `emptyResponseCodes`

``` swift
public let emptyResponseCodes: Set<Int>
```

### `emptyRequestMethods`

``` swift
public let emptyRequestMethods: Set<HTTPMethod>
```

### `dataPreprocessor`

``` swift
public let dataPreprocessor: DataPreprocessor
```

### `emptyResponseCodes`

``` swift
public let emptyResponseCodes: Set<Int>
```

### `emptyRequestMethods`

``` swift
public let emptyRequestMethods: Set<HTTPMethod>
```

## Methods

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> Data 
```

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> Data 
```

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> Data 
```
