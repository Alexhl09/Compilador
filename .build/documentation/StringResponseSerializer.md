# StringResponseSerializer

A `ResponseSerializer` that decodes the response data as a `String`. By default, a request returning `nil` or no
data is considered an error. However, if the request has an `HTTPMethod` or the response has an  HTTP status code
valid for empty responses, then an empty `String` is returned.

``` swift
public final class StringResponseSerializer: ResponseSerializer 
```

## Inheritance

[`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer), [`ResponseSerializer`](/ResponseSerializer)

## Initializers

### `init(dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance with the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                encoding: String.Encoding? = nil,
                emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - encoding: A string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

### `init(dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance with the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                encoding: String.Encoding? = nil,
                emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - encoding: A string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

### `init(dataPreprocessor:encoding:emptyResponseCodes:emptyRequestMethods:)`

Creates an instance with the provided values.

``` swift
public init(dataPreprocessor: DataPreprocessor = StringResponseSerializer.defaultDataPreprocessor,
                encoding: String.Encoding? = nil,
                emptyResponseCodes: Set<Int> = StringResponseSerializer.defaultEmptyResponseCodes,
                emptyRequestMethods: Set<HTTPMethod> = StringResponseSerializer.defaultEmptyRequestMethods) 
```

#### Parameters

  - dataPreprocessor: `DataPreprocessor` used to prepare the received `Data` for serialization.
  - encoding: A string encoding. Defaults to `nil`, in which case the encoding will be determined from the server response, falling back to the default HTTP character set, `ISO-8859-1`.
  - emptyResponseCodes: The HTTP response codes for which empty responses are allowed. `[204, 205]` by default.
  - emptyRequestMethods: The HTTP request methods for which empty responses are allowed. `[.head]` by default.

## Properties

### `dataPreprocessor`

``` swift
public let dataPreprocessor: DataPreprocessor
```

### `encoding`

Optional string encoding used to validate the response.

``` swift
public let encoding: String.Encoding?
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

### `encoding`

Optional string encoding used to validate the response.

``` swift
public let encoding: String.Encoding?
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

### `encoding`

Optional string encoding used to validate the response.

``` swift
public let encoding: String.Encoding?
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
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> String 
```

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> String 
```

### `serialize(request:response:data:error:)`

``` swift
public func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> String 
```
