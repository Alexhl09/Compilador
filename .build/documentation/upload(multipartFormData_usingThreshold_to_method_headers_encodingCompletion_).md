# upload(multipartFormData:usingThreshold:to:method:headers:encodingCompletion:)

Encodes `multipartFormData` using `encodingMemoryThreshold` with the default `SessionManager` and calls
`encodingCompletion` with new `UploadRequest` using the `url`, `method` and `headers`.

``` swift
public func upload(
    multipartFormData: @escaping (MultipartFormData) -> Void,
    usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
    to url: URLConvertible,
    method: HTTPMethod = .post,
    headers: HTTPHeaders? = nil,
    encodingCompletion: ((SessionManager.MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

## Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.

# upload(multipartFormData:usingThreshold:to:method:headers:encodingCompletion:)

Encodes `multipartFormData` using `encodingMemoryThreshold` with the default `SessionManager` and calls
`encodingCompletion` with new `UploadRequest` using the `url`, `method` and `headers`.

``` swift
public func upload(
    multipartFormData: @escaping (MultipartFormData) -> Void,
    usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
    to url: URLConvertible,
    method: HTTPMethod = .post,
    headers: HTTPHeaders? = nil,
    encodingCompletion: ((SessionManager.MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

## Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.

# upload(multipartFormData:usingThreshold:to:method:headers:encodingCompletion:)

Encodes `multipartFormData` using `encodingMemoryThreshold` with the default `SessionManager` and calls
`encodingCompletion` with new `UploadRequest` using the `url`, `method` and `headers`.

``` swift
public func upload(
    multipartFormData: @escaping (MultipartFormData) -> Void,
    usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
    to url: URLConvertible,
    method: HTTPMethod = .post,
    headers: HTTPHeaders? = nil,
    encodingCompletion: ((SessionManager.MultipartFormDataEncodingResult) -> Void)?)
```

It is important to understand the memory implications of uploading `MultipartFormData`. If the cummulative
payload is small, encoding the data in-memory and directly uploading to a server is the by far the most
efficient approach. However, if the payload is too large, encoding the data in-memory could cause your app to
be terminated. Larger payloads must first be written to disk using input and output streams to keep the memory
footprint low, then the data can be uploaded as a stream from the resulting file. Streaming from disk MUST be
used for larger payloads such as video content.

The `encodingMemoryThreshold` parameter allows Alamofire to automatically determine whether to encode in-memory
or stream from disk. If the content length of the `MultipartFormData` is below the `encodingMemoryThreshold`,
encoding takes place in-memory. If the content length exceeds the threshold, the data is streamed to disk
during the encoding process. Then the result is uploaded as data or as a stream depending on which encoding
technique was used.

## Parameters

  - multipartFormData: The closure used to append body parts to the `MultipartFormData`.
  - encodingMemoryThreshold: The encoding memory threshold in bytes. `multipartFormDataEncodingMemoryThreshold` by default.
  - url: The URL.
  - method: The HTTP method. `.post` by default.
  - headers: The HTTP headers. `nil` by default.
  - encodingCompletion: The closure called when the `MultipartFormData` encoding is complete.
