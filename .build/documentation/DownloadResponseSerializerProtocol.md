# DownloadResponseSerializerProtocol

The type in which all download response serializers must conform to in order to serialize a response.

``` swift
public protocol DownloadResponseSerializerProtocol 
```

## Default Implementations

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

### `serializeDownload(request:response:fileURL:error:)`

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> Self.SerializedObject 
```

## Requirements

### SerializedObject

The type of serialized object to be created by this `DownloadResponseSerializerType`.

``` swift
associatedtype SerializedObject
```

### serializeResponse

A closure used by response handlers that takes a request, response, url and error and returns a result.

``` swift
var serializeResponse: (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<SerializedObject> 
```

### SerializedObject

The type of serialized object to be created by this `DownloadResponseSerializerType`.

``` swift
associatedtype SerializedObject
```

### serializeResponse

A closure used by response handlers that takes a request, response, url and error and returns a result.

``` swift
var serializeResponse: (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<SerializedObject> 
```

### SerializedObject

The type of serialized object to be created by this `DownloadResponseSerializerType`.

``` swift
associatedtype SerializedObject
```

### serializeResponse

A closure used by response handlers that takes a request, response, url and error and returns a result.

``` swift
var serializeResponse: (URLRequest?, HTTPURLResponse?, URL?, Error?) -> Result<SerializedObject> 
```

### SerializedObject

The type of serialized object to be created.

``` swift
associatedtype SerializedObject
```

### serializeDownload(request:​response:​fileURL:​error:​)

Serialize the downloaded response `Data` from disk into the provided type..

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> SerializedObject
```

#### Parameters

  - request: `URLRequest` which was used to perform the request, if any.
  - response: `HTTPURLResponse` received from the server, if any.
  - fileURL: File `URL` to which the response data was downloaded.
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

### serializeDownload(request:​response:​fileURL:​error:​)

Serialize the downloaded response `Data` from disk into the provided type..

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> SerializedObject
```

#### Parameters

  - request: `URLRequest` which was used to perform the request, if any.
  - response: `HTTPURLResponse` received from the server, if any.
  - fileURL: File `URL` to which the response data was downloaded.
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

### serializeDownload(request:​response:​fileURL:​error:​)

Serialize the downloaded response `Data` from disk into the provided type..

``` swift
func serializeDownload(request: URLRequest?, response: HTTPURLResponse?, fileURL: URL?, error: Error?) throws -> SerializedObject
```

#### Parameters

  - request: `URLRequest` which was used to perform the request, if any.
  - response: `HTTPURLResponse` received from the server, if any.
  - fileURL: File `URL` to which the response data was downloaded.
  - error: `Error` produced by Alamofire or the underlying `URLSession` during the request.

#### Throws

Any `Error` produced during serialization.

#### Returns

The `SerializedObject`.
