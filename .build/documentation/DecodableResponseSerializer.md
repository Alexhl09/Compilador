# DecodableResponseSerializer

A `ResponseSerializer` that decodes the response data as a generic value using any type that conforms to
`DataDecoder`. By default, this is an instance of `JSONDecoder`. Additionally, a request returning `nil` or no data
is considered an error. However, if the request has an `HTTPMethod` or the response has an HTTP status code valid
for empty responses then an empty value will be returned. If the decoded type conforms to `EmptyResponse`, the
type's `emptyValue()` will be returned. If the decoded type is `Empty`, the `.value` instance is returned. If the
decoded type *does not* conform to `EmptyResponse` and isn't `Empty`, an error will be produced.

``` swift
public final class DecodableResponseSerializer<T: Decodable>: ResponseSerializer 
```

## Inheritance

[`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer)

## Initializers

### `init(dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance using the values provided.

``` swift
public init(dataPreprocessor: DataPreprocessor = DecodableResponseSerializer.defaultDataPreprocessor,
                decoder: DataDecoder = JSONDecoder(),
                emptyResponseCodes: Set<Int> = DecodableResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - decoder: The `DataDecoder`. `JSONDecoder()` by default.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

### `init(dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance using the values provided.

``` swift
public init(dataPreprocessor: DataPreprocessor = DecodableResponseSerializer.defaultDataPreprocessor,
                decoder: DataDecoder = JSONDecoder(),
                emptyResponseCodes: Set<Int> = DecodableResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - decoder: The `DataDecoder`. `JSONDecoder()` by default.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

### `init(dataPreprocessor:decoder:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance using the values provided.

``` swift
public init(dataPreprocessor: DataPreprocessor = DecodableResponseSerializer.defaultDataPreprocessor,
                decoder: DataDecoder = JSONDecoder(),
                emptyResponseCodes: Set<Int> = DecodableResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = DecodableResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - decoder: The `DataDecoder`. `JSONDecoder()` by default.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

## Properties

### `dataPreprocessor`

``` swift
public let dataPreprocessor: DataPreprocessor
```

### `decoder`

The `DataDecoder` instance used to decode responses.

``` swift
public let decoder: DataDecoder
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

### `decoder`

The `DataDecoder` instance used to decode responses.

``` swift
public let decoder: DataDecoder
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

### `decoder`

The `DataDecoder` instance used to decode responses.

``` swift
public let decoder: DataDecoder
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
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> T 
```

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> T 
```

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> T 
```
