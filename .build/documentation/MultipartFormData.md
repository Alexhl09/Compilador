# MultipartFormData

Constructs `multipart/form-data` for uploads within an HTTP or HTTPS body. There are currently two ways to encode
multipart form data. The first way is to encode the data directly in memory. This is very efficient, but can lead
to memory issues if the dataset is too large. The second way is designed for larger datasets and will write all the
data to a single file on disk with all the proper boundary segmentation. The second approach MUST be used for
larger datasets such as video content, otherwise your app may run out of memory when trying to encode the dataset.

``` swift
open class MultipartFormData 
```

For more information on `multipart/form-data` in general, please refer to the RFC-2388 and RFC-2045 specs as well
and the w3 form documentation.

  - https://www.ietf.org/rfc/rfc2388.txt

  - https://www.ietf.org/rfc/rfc2045.txt

  - https://www.w3.org/TR/html401/interact/forms.html\#h-17.13

## Initializers

### `init()`

Creates a multipart form data object.

``` swift
public init() 
```

#### Returns

The multipart form data object.

### `init()`

Creates a multipart form data object.

``` swift
public init() 
```

#### Returns

The multipart form data object.

### `init()`

Creates a multipart form data object.

``` swift
public init() 
```

#### Returns

The multipart form data object.

### `init(fileManager:boundary:)`

Creates an instance.

``` swift
public init(fileManager: FileManager = .default, boundary: String? = nil) 
```

#### Parameters

  - fileManager: `FileManager` to use for file operations, if needed.
  - boundary: Boundary `String` used to separate body parts.

### `init(fileManager:boundary:)`

Creates an instance.

``` swift
public init(fileManager: FileManager = .default, boundary: String? = nil) 
```

#### Parameters

  - fileManager: `FileManager` to use for file operations, if needed.
  - boundary: Boundary `String` used to separate body parts.

### `init(fileManager:boundary:)`

Creates an instance.

``` swift
public init(fileManager: FileManager = .default, boundary: String? = nil) 
```

#### Parameters

  - fileManager: `FileManager` to use for file operations, if needed.
  - boundary: Boundary `String` used to separate body parts.

## Properties

### `contentType`

The `Content-Type` header value containing the boundary used to generate the `multipart/form-data`.

``` swift
open var contentType: String 
```

### `contentLength`

The content length of all body parts used to generate the `multipart/form-data` not including the boundaries.

``` swift
public var contentLength: UInt64 
```

### `boundary`

The boundary used to separate the body parts in the encoded form data.

``` swift
public let boundary: String
```

### `contentType`

The `Content-Type` header value containing the boundary used to generate the `multipart/form-data`.

``` swift
open lazy var contentType: String = "multipart/form-data; boundary=\(self.boundary)"
```

### `contentLength`

The content length of all body parts used to generate the `multipart/form-data` not including the boundaries.

``` swift
public var contentLength: UInt64 
```

### `boundary`

The boundary used to separate the body parts in the encoded form data.

``` swift
public var boundary: String
```

### `contentType`

The `Content-Type` header value containing the boundary used to generate the `multipart/form-data`.

``` swift
open lazy var contentType: String = "multipart/form-data; boundary=\(self.boundary)"
```

### `contentLength`

The content length of all body parts used to generate the `multipart/form-data` not including the boundaries.

``` swift
public var contentLength: UInt64 
```

### `boundary`

The boundary used to separate the body parts in the encoded form data.

``` swift
public var boundary: String
```

### `encodingMemoryThreshold`

Default memory threshold used when encoding `MultipartFormData`, in bytes.

``` swift
public static let encodingMemoryThreshold: UInt64 = 10_000_000
```

### `contentType`

The `Content-Type` header value containing the boundary used to generate the `multipart/form-data`.

``` swift
open lazy var contentType: String = "multipart/form-data; boundary=\(self.boundary)"
```

### `contentLength`

The content length of all body parts used to generate the `multipart/form-data` not including the boundaries.

``` swift
public var contentLength: UInt64 
```

### `boundary`

The boundary used to separate the body parts in the encoded form data.

``` swift
public let boundary: String
```

### `encodingMemoryThreshold`

Default memory threshold used when encoding `MultipartFormData`, in bytes.

``` swift
public static let encodingMemoryThreshold: UInt64 = 10_000_000
```

### `contentType`

The `Content-Type` header value containing the boundary used to generate the `multipart/form-data`.

``` swift
open lazy var contentType: String = "multipart/form-data; boundary=\(self.boundary)"
```

### `contentLength`

The content length of all body parts used to generate the `multipart/form-data` not including the boundaries.

``` swift
public var contentLength: UInt64 
```

### `boundary`

The boundary used to separate the body parts in the encoded form data.

``` swift
public let boundary: String
```

### `encodingMemoryThreshold`

Default memory threshold used when encoding `MultipartFormData`, in bytes.

``` swift
public static let encodingMemoryThreshold: UInt64 = 10_000_000
```

### `contentType`

The `Content-Type` header value containing the boundary used to generate the `multipart/form-data`.

``` swift
open lazy var contentType: String = "multipart/form-data; boundary=\(self.boundary)"
```

### `contentLength`

The content length of all body parts used to generate the `multipart/form-data` not including the boundaries.

``` swift
public var contentLength: UInt64 
```

### `boundary`

The boundary used to separate the body parts in the encoded form data.

``` swift
public let boundary: String
```

## Methods

### `append(_:withName:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}` (HTTP Header)

  - Encoded data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.

### `append(_:withName:mimeType:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the data content type in the `Content-Type` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the data in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the data in the `Content-Type` HTTP header.

### `append(_:withName:)`

Creates a body part from the file and appends it to the multipart form data object.

``` swift
public func append(_ fileURL: URL, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{generated filename}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

The filename in the `Content-Disposition` HTTP header is generated from the last path component of the
`fileURL`. The `Content-Type` HTTP header MIME type is generated by mapping the `fileURL` extension to the
system associated MIME type.

#### Parameters

  - fileURL: The URL of the file whose content will be encoded into the multipart form data.
  - name: The name to associate with the file content in the `Content-Disposition` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the file and appends it to the multipart form data object.

``` swift
public func append(_ fileURL: URL, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - Content-Disposition: form-data; name=\#{name}; filename=\#{filename} (HTTP Header)

  - Content-Type: \#{mimeType} (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - fileURL: The URL of the file whose content will be encoded into the multipart form data.
  - name: The name to associate with the file content in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the file content in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the file content in the `Content-Type` HTTP header.

### `append(_:withLength:name:fileName:mimeType:)`

Creates a body part from the stream and appends it to the multipart form data object.

``` swift
public func append(
        _ stream: InputStream,
        withLength length: UInt64,
        name: String,
        fileName: String,
        mimeType: String)
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: The input stream to encode in the multipart form data.
  - length: The content length of the stream.
  - name: The name to associate with the stream content in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the stream content in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the stream content in the `Content-Type` HTTP header.

### `append(_:withLength:headers:)`

Creates a body part with the headers, stream and length and appends it to the multipart form data object.

``` swift
public func append(_ stream: InputStream, withLength length: UInt64, headers: HTTPHeaders) 
```

The body part data will be encoded using the following format:

  - HTTP headers

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: The input stream to encode in the multipart form data.
  - length: The content length of the stream.
  - headers: The HTTP headers for the body part.

### `encode()`

Encodes all the appended body parts into a single `Data` value.

``` swift
public func encode() throws -> Data 
```

It is important to note that this method will load all the appended body parts into memory all at the same
time. This method should only be used when the encoded data will have a small memory footprint. For large data
cases, please use the `writeEncodedDataToDisk(fileURL:completionHandler:)` method.

#### Throws

An `AFError` if encoding encounters an error.

#### Returns

The encoded `Data` if encoding is successful.

### `writeEncodedData(to:)`

Writes the appended body parts into the given file URL.

``` swift
public func writeEncodedData(to fileURL: URL) throws 
```

This process is facilitated by reading and writing with input and output streams, respectively. Thus,
this approach is very memory efficient and should be used for large body part data.

#### Parameters

  - fileURL: The file URL to write the multipart form data into.

#### Throws

An `AFError` if encoding encounters an error.

### `append(_:withName:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}` (HTTP Header)

  - Encoded data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.

### `append(_:withName:mimeType:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the data content type in the `Content-Type` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the data in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the data in the `Content-Type` HTTP header.

### `append(_:withName:)`

Creates a body part from the file and appends it to the multipart form data object.

``` swift
public func append(_ fileURL: URL, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{generated filename}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

The filename in the `Content-Disposition` HTTP header is generated from the last path component of the
`fileURL`. The `Content-Type` HTTP header MIME type is generated by mapping the `fileURL` extension to the
system associated MIME type.

#### Parameters

  - fileURL: The URL of the file whose content will be encoded into the multipart form data.
  - name: The name to associate with the file content in the `Content-Disposition` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the file and appends it to the multipart form data object.

``` swift
public func append(_ fileURL: URL, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - Content-Disposition: form-data; name=\#{name}; filename=\#{filename} (HTTP Header)

  - Content-Type: \#{mimeType} (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - fileURL: The URL of the file whose content will be encoded into the multipart form data.
  - name: The name to associate with the file content in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the file content in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the file content in the `Content-Type` HTTP header.

### `append(_:withLength:name:fileName:mimeType:)`

Creates a body part from the stream and appends it to the multipart form data object.

``` swift
public func append(
        _ stream: InputStream,
        withLength length: UInt64,
        name: String,
        fileName: String,
        mimeType: String)
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: The input stream to encode in the multipart form data.
  - length: The content length of the stream.
  - name: The name to associate with the stream content in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the stream content in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the stream content in the `Content-Type` HTTP header.

### `append(_:withLength:headers:)`

Creates a body part with the headers, stream and length and appends it to the multipart form data object.

``` swift
public func append(_ stream: InputStream, withLength length: UInt64, headers: HTTPHeaders) 
```

The body part data will be encoded using the following format:

  - HTTP headers

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: The input stream to encode in the multipart form data.
  - length: The content length of the stream.
  - headers: The HTTP headers for the body part.

### `encode()`

Encodes all the appended body parts into a single `Data` value.

``` swift
public func encode() throws -> Data 
```

It is important to note that this method will load all the appended body parts into memory all at the same
time. This method should only be used when the encoded data will have a small memory footprint. For large data
cases, please use the `writeEncodedDataToDisk(fileURL:completionHandler:)` method.

#### Throws

An `AFError` if encoding encounters an error.

#### Returns

The encoded `Data` if encoding is successful.

### `writeEncodedData(to:)`

Writes the appended body parts into the given file URL.

``` swift
public func writeEncodedData(to fileURL: URL) throws 
```

This process is facilitated by reading and writing with input and output streams, respectively. Thus,
this approach is very memory efficient and should be used for large body part data.

#### Parameters

  - fileURL: The file URL to write the multipart form data into.

#### Throws

An `AFError` if encoding encounters an error.

### `append(_:withName:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}` (HTTP Header)

  - Encoded data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.

### `append(_:withName:mimeType:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the data content type in the `Content-Type` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the data and appends it to the multipart form data object.

``` swift
public func append(_ data: Data, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - data: The data to encode into the multipart form data.
  - name: The name to associate with the data in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the data in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the data in the `Content-Type` HTTP header.

### `append(_:withName:)`

Creates a body part from the file and appends it to the multipart form data object.

``` swift
public func append(_ fileURL: URL, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{generated filename}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

The filename in the `Content-Disposition` HTTP header is generated from the last path component of the
`fileURL`. The `Content-Type` HTTP header MIME type is generated by mapping the `fileURL` extension to the
system associated MIME type.

#### Parameters

  - fileURL: The URL of the file whose content will be encoded into the multipart form data.
  - name: The name to associate with the file content in the `Content-Disposition` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the file and appends it to the multipart form data object.

``` swift
public func append(_ fileURL: URL, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - Content-Disposition: form-data; name=\#{name}; filename=\#{filename} (HTTP Header)

  - Content-Type: \#{mimeType} (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - fileURL: The URL of the file whose content will be encoded into the multipart form data.
  - name: The name to associate with the file content in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the file content in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the file content in the `Content-Type` HTTP header.

### `append(_:withLength:name:fileName:mimeType:)`

Creates a body part from the stream and appends it to the multipart form data object.

``` swift
public func append(
        _ stream: InputStream,
        withLength length: UInt64,
        name: String,
        fileName: String,
        mimeType: String)
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: The input stream to encode in the multipart form data.
  - length: The content length of the stream.
  - name: The name to associate with the stream content in the `Content-Disposition` HTTP header.
  - fileName: The filename to associate with the stream content in the `Content-Disposition` HTTP header.
  - mimeType: The MIME type to associate with the stream content in the `Content-Type` HTTP header.

### `append(_:withLength:headers:)`

Creates a body part with the headers, stream and length and appends it to the multipart form data object.

``` swift
public func append(_ stream: InputStream, withLength length: UInt64, headers: HTTPHeaders) 
```

The body part data will be encoded using the following format:

  - HTTP headers

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: The input stream to encode in the multipart form data.
  - length: The content length of the stream.
  - headers: The HTTP headers for the body part.

### `encode()`

Encodes all the appended body parts into a single `Data` value.

``` swift
public func encode() throws -> Data 
```

It is important to note that this method will load all the appended body parts into memory all at the same
time. This method should only be used when the encoded data will have a small memory footprint. For large data
cases, please use the `writeEncodedDataToDisk(fileURL:completionHandler:)` method.

#### Throws

An `AFError` if encoding encounters an error.

#### Returns

The encoded `Data` if encoding is successful.

### `writeEncodedData(to:)`

Writes the appended body parts into the given file URL.

``` swift
public func writeEncodedData(to fileURL: URL) throws 
```

This process is facilitated by reading and writing with input and output streams, respectively. Thus,
this approach is very memory efficient and should be used for large body part data.

#### Parameters

  - fileURL: The file URL to write the multipart form data into.

#### Throws

An `AFError` if encoding encounters an error.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the data and appends it to the instance.

``` swift
public func append(_ data: Data, withName name: String, fileName: String? = nil, mimeType: String? = nil) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - data: `Data` to encoding into the instance.
  - name: Name to associate with the `Data` in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the `Data` in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the data in the `Content-Type` HTTP header.

### `append(_:withName:)`

Creates a body part from the file and appends it to the instance.

``` swift
public func append(_ fileURL: URL, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{generated filename}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

The filename in the `Content-Disposition` HTTP header is generated from the last path component of the
`fileURL`. The `Content-Type` HTTP header MIME type is generated by mapping the `fileURL` extension to the
system associated MIME type.

#### Parameters

  - fileURL: `URL` of the file whose content will be encoded into the instance.
  - name: Name to associate with the file content in the `Content-Disposition` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the file and appends it to the instance.

``` swift
public func append(_ fileURL: URL, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - Content-Disposition: form-data; name=\#{name}; filename=\#{filename} (HTTP Header)

  - Content-Type: \#{mimeType} (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - fileURL: `URL` of the file whose content will be encoded into the instance.
  - name: Name to associate with the file content in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the file content in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the file content in the `Content-Type` HTTP header.

### `append(_:withLength:name:fileName:mimeType:)`

Creates a body part from the stream and appends it to the instance.

``` swift
public func append(_ stream: InputStream,
                       withLength length: UInt64,
                       name: String,
                       fileName: String,
                       mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: `InputStream` to encode into the instance.
  - length: Length, in bytes, of the stream.
  - name: Name to associate with the stream content in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the stream content in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the stream content in the `Content-Type` HTTP header.

### `append(_:withLength:headers:)`

Creates a body part with the stream, length, and headers and appends it to the instance.

``` swift
public func append(_ stream: InputStream, withLength length: UInt64, headers: HTTPHeaders) 
```

The body part data will be encoded using the following format:

  - HTTP headers

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: `InputStream` to encode into the instance.
  - length: Length, in bytes, of the stream.
  - headers: `HTTPHeaders` for the body part.

### `encode()`

Encodes all appended body parts into a single `Data` value.

``` swift
public func encode() throws -> Data 
```

> 

#### Throws

An `AFError` if encoding encounters an error.

#### Returns

The encoded `Data`, if encoding is successful.

### `writeEncodedData(to:)`

Writes all appended body parts to the given file `URL`.

``` swift
public func writeEncodedData(to fileURL: URL) throws 
```

This process is facilitated by reading and writing with input and output streams, respectively. Thus,
this approach is very memory efficient and should be used for large body part data.

#### Parameters

  - fileURL: File `URL` to which to write the form data.

#### Throws

An `AFError` if encoding encounters an error.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the data and appends it to the instance.

``` swift
public func append(_ data: Data, withName name: String, fileName: String? = nil, mimeType: String? = nil) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - data: `Data` to encoding into the instance.
  - name: Name to associate with the `Data` in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the `Data` in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the data in the `Content-Type` HTTP header.

### `append(_:withName:)`

Creates a body part from the file and appends it to the instance.

``` swift
public func append(_ fileURL: URL, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{generated filename}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

The filename in the `Content-Disposition` HTTP header is generated from the last path component of the
`fileURL`. The `Content-Type` HTTP header MIME type is generated by mapping the `fileURL` extension to the
system associated MIME type.

#### Parameters

  - fileURL: `URL` of the file whose content will be encoded into the instance.
  - name: Name to associate with the file content in the `Content-Disposition` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the file and appends it to the instance.

``` swift
public func append(_ fileURL: URL, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - Content-Disposition: form-data; name=\#{name}; filename=\#{filename} (HTTP Header)

  - Content-Type: \#{mimeType} (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - fileURL: `URL` of the file whose content will be encoded into the instance.
  - name: Name to associate with the file content in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the file content in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the file content in the `Content-Type` HTTP header.

### `append(_:withLength:name:fileName:mimeType:)`

Creates a body part from the stream and appends it to the instance.

``` swift
public func append(_ stream: InputStream,
                       withLength length: UInt64,
                       name: String,
                       fileName: String,
                       mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: `InputStream` to encode into the instance.
  - length: Length, in bytes, of the stream.
  - name: Name to associate with the stream content in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the stream content in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the stream content in the `Content-Type` HTTP header.

### `append(_:withLength:headers:)`

Creates a body part with the stream, length, and headers and appends it to the instance.

``` swift
public func append(_ stream: InputStream, withLength length: UInt64, headers: HTTPHeaders) 
```

The body part data will be encoded using the following format:

  - HTTP headers

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: `InputStream` to encode into the instance.
  - length: Length, in bytes, of the stream.
  - headers: `HTTPHeaders` for the body part.

### `encode()`

Encodes all appended body parts into a single `Data` value.

``` swift
public func encode() throws -> Data 
```

> 

#### Throws

An `AFError` if encoding encounters an error.

#### Returns

The encoded `Data`, if encoding is successful.

### `writeEncodedData(to:)`

Writes all appended body parts to the given file `URL`.

``` swift
public func writeEncodedData(to fileURL: URL) throws 
```

This process is facilitated by reading and writing with input and output streams, respectively. Thus,
this approach is very memory efficient and should be used for large body part data.

#### Parameters

  - fileURL: File `URL` to which to write the form data.

#### Throws

An `AFError` if encoding encounters an error.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the data and appends it to the instance.

``` swift
public func append(_ data: Data, withName name: String, fileName: String? = nil, mimeType: String? = nil) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - data: `Data` to encoding into the instance.
  - name: Name to associate with the `Data` in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the `Data` in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the data in the `Content-Type` HTTP header.

### `append(_:withName:)`

Creates a body part from the file and appends it to the instance.

``` swift
public func append(_ fileURL: URL, withName name: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{generated filename}` (HTTP Header)

  - `Content-Type: #{generated mimeType}` (HTTP Header)

  - Encoded file data

  - Multipart form boundary

The filename in the `Content-Disposition` HTTP header is generated from the last path component of the
`fileURL`. The `Content-Type` HTTP header MIME type is generated by mapping the `fileURL` extension to the
system associated MIME type.

#### Parameters

  - fileURL: `URL` of the file whose content will be encoded into the instance.
  - name: Name to associate with the file content in the `Content-Disposition` HTTP header.

### `append(_:withName:fileName:mimeType:)`

Creates a body part from the file and appends it to the instance.

``` swift
public func append(_ fileURL: URL, withName name: String, fileName: String, mimeType: String) 
```

The body part data will be encoded using the following format:

  - Content-Disposition: form-data; name=\#{name}; filename=\#{filename} (HTTP Header)

  - Content-Type: \#{mimeType} (HTTP Header)

  - Encoded file data

  - Multipart form boundary

#### Parameters

  - fileURL: `URL` of the file whose content will be encoded into the instance.
  - name: Name to associate with the file content in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the file content in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the file content in the `Content-Type` HTTP header.

### `append(_:withLength:name:fileName:mimeType:)`

Creates a body part from the stream and appends it to the instance.

``` swift
public func append(_ stream: InputStream,
                       withLength length: UInt64,
                       name: String,
                       fileName: String,
                       mimeType: String) 
```

The body part data will be encoded using the following format:

  - `Content-Disposition: form-data; name=#{name}; filename=#{filename}` (HTTP Header)

  - `Content-Type: #{mimeType}` (HTTP Header)

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: `InputStream` to encode into the instance.
  - length: Length, in bytes, of the stream.
  - name: Name to associate with the stream content in the `Content-Disposition` HTTP header.
  - fileName: Filename to associate with the stream content in the `Content-Disposition` HTTP header.
  - mimeType: MIME type to associate with the stream content in the `Content-Type` HTTP header.

### `append(_:withLength:headers:)`

Creates a body part with the stream, length, and headers and appends it to the instance.

``` swift
public func append(_ stream: InputStream, withLength length: UInt64, headers: HTTPHeaders) 
```

The body part data will be encoded using the following format:

  - HTTP headers

  - Encoded stream data

  - Multipart form boundary

#### Parameters

  - stream: `InputStream` to encode into the instance.
  - length: Length, in bytes, of the stream.
  - headers: `HTTPHeaders` for the body part.

### `encode()`

Encodes all appended body parts into a single `Data` value.

``` swift
public func encode() throws -> Data 
```

> 

#### Throws

An `AFError` if encoding encounters an error.

#### Returns

The encoded `Data`, if encoding is successful.

### `writeEncodedData(to:)`

Writes all appended body parts to the given file `URL`.

``` swift
public func writeEncodedData(to fileURL: URL) throws 
```

This process is facilitated by reading and writing with input and output streams, respectively. Thus,
this approach is very memory efficient and should be used for large body part data.

#### Parameters

  - fileURL: File `URL` to which to write the form data.

#### Throws

An `AFError` if encoding encounters an error.
