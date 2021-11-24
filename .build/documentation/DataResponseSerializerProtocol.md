# DataResponseSerializerProtocol

The type in which all data response serializers must conform to in order to serialize a response.

``` swift
public protocol DataResponseSerializerProtocol 
```

## Requirements

### SerializedObject

The type of serialized object to be created by this `DataResponseSerializerType`.

``` swift
associatedtype SerializedObject
```

### serializeResponse

A closure used by response handlers that takes a request, response, data and error and returns a result.

``` swift
var serializeResponse: (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<SerializedObject> 
```

### SerializedObject

The type of serialized object to be created by this `DataResponseSerializerType`.

``` swift
associatedtype SerializedObject
```

### serializeResponse

A closure used by response handlers that takes a request, response, data and error and returns a result.

``` swift
var serializeResponse: (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<SerializedObject> 
```

### SerializedObject

The type of serialized object to be created by this `DataResponseSerializerType`.

``` swift
associatedtype SerializedObject
```

### serializeResponse

A closure used by response handlers that takes a request, response, data and error and returns a result.

``` swift
var serializeResponse: (URLRequest?, HTTPURLResponse?, Data?, Error?) -> Result<SerializedObject> 
```

### SerializedObject

The type of serialized object to be created.

``` swift
associatedtype SerializedObject
```

### serialize(request:​response:​data:​error:​)

Serialize the response `Data` into the provided type..

``` swift
func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> SerializedObject
```

#### Parameters

  - request: `URLRequest` which was used to perform the request, if any.
  - response: `HTTPURLResponse` received from the server, if any.
  - data: `Data` returned from the server, if any.
  - error: `Error` produced by Alamofire or the underlying `URLSession` during the request.

#### Throws

Any `Error` produced during serialization.

#### Returns

The `SerializedObject`.

### SerializedObject

The type of serialized object to be created.

``` swift
associatedtype SerializedObject
```

### serialize(request:​response:​data:​error:​)

Serialize the response `Data` into the provided type..

``` swift
func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> SerializedObject
```

#### Parameters

  - request: `URLRequest` which was used to perform the request, if any.
  - response: `HTTPURLResponse` received from the server, if any.
  - data: `Data` returned from the server, if any.
  - error: `Error` produced by Alamofire or the underlying `URLSession` during the request.

#### Throws

Any `Error` produced during serialization.

#### Returns

The `SerializedObject`.

### SerializedObject

The type of serialized object to be created.

``` swift
associatedtype SerializedObject
```

### serialize(request:​response:​data:​error:​)

Serialize the response `Data` into the provided type..

``` swift
func serialize(request: URLRequest?, response: HTTPURLResponse?, data: Data?, error: Error?) throws -> SerializedObject
```

#### Parameters

  - request: `URLRequest` which was used to perform the request, if any.
  - response: `HTTPURLResponse` received from the server, if any.
  - data: `Data` returned from the server, if any.
  - error: `Error` produced by Alamofire or the underlying `URLSession` during the request.

#### Throws

Any `Error` produced during serialization.

#### Returns

The `SerializedObject`.
