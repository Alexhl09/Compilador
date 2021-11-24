# JSONResponseSerializer

A `ResponseSerializer` that decodes the response data using `JSONSerialization`. By default, a request returning
`nil` or no data is considered an error. However, if the request has an `HTTPMethod` or the response has an
HTTP status code valid for empty responses, then an `NSNull` value is returned.

``` swift
public final class JSONResponseSerializer: ResponseSerializer 
```

## Inheritance

[`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer)

## Initializers

### `init(dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:)`

Creates an instance with the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                options: JSONSerialization.ReadingOptions = .allowFragments) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.
  - options: The options to use. `.allowFragments` by default.

### `init(dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:)`

Creates an instance with the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                options: JSONSerialization.ReadingOptions = .allowFragments) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.
  - options: The options to use. `.allowFragments` by default.

### `init(dataPreprocessor:emptyResponseCodes:emptyRequestMethods:options:)`

Creates an instance with the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = JSONResponseSerializer.defaultDataPreprocessor,
                emptyResponseCodes: Set<Int> = JSONResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = JSONResponseSerializer.defaultEmptyRequestMethods,
                options: JSONSerialization.ReadingOptions = .allowFragments) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.
  - options: The options to use. `.allowFragments` by default.

## Properties

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

### `options`

`JSONSerialization.ReadingOptions` used when serializing a response.

``` swift
public let options: JSONSerialization.ReadingOptions
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

### `options`

`JSONSerialization.ReadingOptions` used when serializing a response.

``` swift
public let options: JSONSerialization.ReadingOptions
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

### `options`

`JSONSerialization.ReadingOptions` used when serializing a response.

``` swift
public let options: JSONSerialization.ReadingOptions
```

## Methods

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> Any 
```

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> Any 
```

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> Any 
```
