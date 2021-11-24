# AFError

`AFError` is the error type returned by Alamofire. It encompasses a few different types of errors, each with
their own associated reasons.

``` swift
public enum AFError: Error 
```

  - invalidURL:                  Returned when a `URLConvertible` type fails to create a valid `URL`.

  - parameterEncodingFailed:     Returned when a parameter encoding object throws an error during the encoding process.

  - multipartEncodingFailed:     Returned when some step in the multipart encoding process fails.

  - responseValidationFailed:    Returned when a `validate()` call fails.

  - responseSerializationFailed: Returned when a response serializer encounters an error in the serialization process.

## Inheritance

`Error`, `Error`, `Error`, `Error`, `Error`, `Error`, [`LocalizedError`](/LocalizedError), [`LocalizedError`](/LocalizedError), [`LocalizedError`](/LocalizedError), [`LocalizedError`](/LocalizedError), [`LocalizedError`](/LocalizedError), [`LocalizedError`](/LocalizedError)

## Enumeration Cases

### `invalidURL`

``` swift
case invalidURL(url: URLConvertible)
```

### `parameterEncodingFailed`

``` swift
case parameterEncodingFailed(reason: ParameterEncodingFailureReason)
```

### `multipartEncodingFailed`

``` swift
case multipartEncodingFailed(reason: MultipartEncodingFailureReason)
```

### `responseValidationFailed`

``` swift
case responseValidationFailed(reason: ResponseValidationFailureReason)
```

### `responseSerializationFailed`

``` swift
case responseSerializationFailed(reason: ResponseSerializationFailureReason)
```

### `invalidURL`

``` swift
case invalidURL(url: URLConvertible)
```

### `parameterEncodingFailed`

``` swift
case parameterEncodingFailed(reason: ParameterEncodingFailureReason)
```

### `multipartEncodingFailed`

``` swift
case multipartEncodingFailed(reason: MultipartEncodingFailureReason)
```

### `responseValidationFailed`

``` swift
case responseValidationFailed(reason: ResponseValidationFailureReason)
```

### `responseSerializationFailed`

``` swift
case responseSerializationFailed(reason: ResponseSerializationFailureReason)
```

### `invalidURL`

``` swift
case invalidURL(url: URLConvertible)
```

### `parameterEncodingFailed`

``` swift
case parameterEncodingFailed(reason: ParameterEncodingFailureReason)
```

### `multipartEncodingFailed`

``` swift
case multipartEncodingFailed(reason: MultipartEncodingFailureReason)
```

### `responseValidationFailed`

``` swift
case responseValidationFailed(reason: ResponseValidationFailureReason)
```

### `responseSerializationFailed`

``` swift
case responseSerializationFailed(reason: ResponseSerializationFailureReason)
```

### `createUploadableFailed`

`UploadableConvertible` threw an error in `createUploadable()`.

``` swift
case createUploadableFailed(error: Error)
```

### `createURLRequestFailed`

`URLRequestConvertible` threw an error in `asURLRequest()`.

``` swift
case createURLRequestFailed(error: Error)
```

### `downloadedFileMoveFailed`

`SessionDelegate` threw an error while attempting to move downloaded file to destination URL.

``` swift
case downloadedFileMoveFailed(error: Error, source: URL, destination: URL)
```

### `explicitlyCancelled`

`Request` was explicitly cancelled.

``` swift
case explicitlyCancelled
```

### `invalidURL`

`URLConvertible` type failed to create a valid `URL`.

``` swift
case invalidURL(url: URLConvertible)
```

### `multipartEncodingFailed`

Multipart form encoding failed.

``` swift
case multipartEncodingFailed(reason: MultipartEncodingFailureReason)
```

### `parameterEncodingFailed`

`ParameterEncoding` threw an error during the encoding process.

``` swift
case parameterEncodingFailed(reason: ParameterEncodingFailureReason)
```

### `parameterEncoderFailed`

`ParameterEncoder` threw an error while running the encoder.

``` swift
case parameterEncoderFailed(reason: ParameterEncoderFailureReason)
```

### `requestAdaptationFailed`

`RequestAdapter` threw an error during adaptation.

``` swift
case requestAdaptationFailed(error: Error)
```

### `requestRetryFailed`

`RequestRetrier` threw an error during the request retry process.

``` swift
case requestRetryFailed(retryError: Error, originalError: Error)
```

### `responseValidationFailed`

Response validation failed.

``` swift
case responseValidationFailed(reason: ResponseValidationFailureReason)
```

### `responseSerializationFailed`

Response serialization failed.

``` swift
case responseSerializationFailed(reason: ResponseSerializationFailureReason)
```

### `serverTrustEvaluationFailed`

`ServerTrustEvaluating` instance threw an error during trust evaluation.

``` swift
case serverTrustEvaluationFailed(reason: ServerTrustFailureReason)
```

### `sessionDeinitialized`

`Session` which issued the `Request` was deinitialized, most likely because its reference went out of scope.

``` swift
case sessionDeinitialized
```

### `sessionInvalidated`

`Session` was explicitly invalidated, possibly with the `Error` produced by the underlying `URLSession`.

``` swift
case sessionInvalidated(error: Error?)
```

### `sessionTaskFailed`

`URLSessionTask` completed with error.

``` swift
case sessionTaskFailed(error: Error)
```

### `urlRequestValidationFailed`

`URLRequest` failed validation.

``` swift
case urlRequestValidationFailed(reason: URLRequestValidationFailureReason)
```

### `createUploadableFailed`

`UploadableConvertible` threw an error in `createUploadable()`.

``` swift
case createUploadableFailed(error: Error)
```

### `createURLRequestFailed`

`URLRequestConvertible` threw an error in `asURLRequest()`.

``` swift
case createURLRequestFailed(error: Error)
```

### `downloadedFileMoveFailed`

`SessionDelegate` threw an error while attempting to move downloaded file to destination URL.

``` swift
case downloadedFileMoveFailed(error: Error, source: URL, destination: URL)
```

### `explicitlyCancelled`

`Request` was explicitly cancelled.

``` swift
case explicitlyCancelled
```

### `invalidURL`

`URLConvertible` type failed to create a valid `URL`.

``` swift
case invalidURL(url: URLConvertible)
```

### `multipartEncodingFailed`

Multipart form encoding failed.

``` swift
case multipartEncodingFailed(reason: MultipartEncodingFailureReason)
```

### `parameterEncodingFailed`

`ParameterEncoding` threw an error during the encoding process.

``` swift
case parameterEncodingFailed(reason: ParameterEncodingFailureReason)
```

### `parameterEncoderFailed`

`ParameterEncoder` threw an error while running the encoder.

``` swift
case parameterEncoderFailed(reason: ParameterEncoderFailureReason)
```

### `requestAdaptationFailed`

`RequestAdapter` threw an error during adaptation.

``` swift
case requestAdaptationFailed(error: Error)
```

### `requestRetryFailed`

`RequestRetrier` threw an error during the request retry process.

``` swift
case requestRetryFailed(retryError: Error, originalError: Error)
```

### `responseValidationFailed`

Response validation failed.

``` swift
case responseValidationFailed(reason: ResponseValidationFailureReason)
```

### `responseSerializationFailed`

Response serialization failed.

``` swift
case responseSerializationFailed(reason: ResponseSerializationFailureReason)
```

### `serverTrustEvaluationFailed`

`ServerTrustEvaluating` instance threw an error during trust evaluation.

``` swift
case serverTrustEvaluationFailed(reason: ServerTrustFailureReason)
```

### `sessionDeinitialized`

`Session` which issued the `Request` was deinitialized, most likely because its reference went out of scope.

``` swift
case sessionDeinitialized
```

### `sessionInvalidated`

`Session` was explicitly invalidated, possibly with the `Error` produced by the underlying `URLSession`.

``` swift
case sessionInvalidated(error: Error?)
```

### `sessionTaskFailed`

`URLSessionTask` completed with error.

``` swift
case sessionTaskFailed(error: Error)
```

### `urlRequestValidationFailed`

`URLRequest` failed validation.

``` swift
case urlRequestValidationFailed(reason: URLRequestValidationFailureReason)
```

### `createUploadableFailed`

`UploadableConvertible` threw an error in `createUploadable()`.

``` swift
case createUploadableFailed(error: Error)
```

### `createURLRequestFailed`

`URLRequestConvertible` threw an error in `asURLRequest()`.

``` swift
case createURLRequestFailed(error: Error)
```

### `downloadedFileMoveFailed`

`SessionDelegate` threw an error while attempting to move downloaded file to destination URL.

``` swift
case downloadedFileMoveFailed(error: Error, source: URL, destination: URL)
```

### `explicitlyCancelled`

`Request` was explicitly cancelled.

``` swift
case explicitlyCancelled
```

### `invalidURL`

`URLConvertible` type failed to create a valid `URL`.

``` swift
case invalidURL(url: URLConvertible)
```

### `multipartEncodingFailed`

Multipart form encoding failed.

``` swift
case multipartEncodingFailed(reason: MultipartEncodingFailureReason)
```

### `parameterEncodingFailed`

`ParameterEncoding` threw an error during the encoding process.

``` swift
case parameterEncodingFailed(reason: ParameterEncodingFailureReason)
```

### `parameterEncoderFailed`

`ParameterEncoder` threw an error while running the encoder.

``` swift
case parameterEncoderFailed(reason: ParameterEncoderFailureReason)
```

### `requestAdaptationFailed`

`RequestAdapter` threw an error during adaptation.

``` swift
case requestAdaptationFailed(error: Error)
```

### `requestRetryFailed`

`RequestRetrier` threw an error during the request retry process.

``` swift
case requestRetryFailed(retryError: Error, originalError: Error)
```

### `responseValidationFailed`

Response validation failed.

``` swift
case responseValidationFailed(reason: ResponseValidationFailureReason)
```

### `responseSerializationFailed`

Response serialization failed.

``` swift
case responseSerializationFailed(reason: ResponseSerializationFailureReason)
```

### `serverTrustEvaluationFailed`

`ServerTrustEvaluating` instance threw an error during trust evaluation.

``` swift
case serverTrustEvaluationFailed(reason: ServerTrustFailureReason)
```

### `sessionDeinitialized`

`Session` which issued the `Request` was deinitialized, most likely because its reference went out of scope.

``` swift
case sessionDeinitialized
```

### `sessionInvalidated`

`Session` was explicitly invalidated, possibly with the `Error` produced by the underlying `URLSession`.

``` swift
case sessionInvalidated(error: Error?)
```

### `sessionTaskFailed`

`URLSessionTask` completed with error.

``` swift
case sessionTaskFailed(error: Error)
```

### `urlRequestValidationFailed`

`URLRequest` failed validation.

``` swift
case urlRequestValidationFailed(reason: URLRequestValidationFailureReason)
```

## Properties

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the AFError is an invalid URL error.

``` swift
public var isInvalidURLError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the AFError is a parameter encoding error. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the AFError is a multipart encoding error. When `true`, the `url` and `underlyingError` properties
will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the `AFError` is a response validation error. When `true`, the `acceptableContentTypes`,
`responseContentType`, and `responseCode` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the `AFError` is a response serialization error. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The `Error` returned by a system framework associated with a `.parameterEncodingFailed`,
`.multipartEncodingFailed` or `.responseSerializationFailed` error.

``` swift
public var underlyingError: Error? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionDeinitializedError`

Returns whether the instance is `.sessionDeinitialized`.

``` swift
public var isSessionDeinitializedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isSessionInvalidatedError`

Returns whether the instance is `.sessionInvalidated`.

``` swift
public var isSessionInvalidatedError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isExplicitlyCancelledError`

Returns whether the instance is `.explicitlyCancelled`.

``` swift
public var isExplicitlyCancelledError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isInvalidURLError`

Returns whether the instance is `.invalidURL`.

``` swift
public var isInvalidURLError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncodingError`

Returns whether the instance is `.parameterEncodingFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncodingError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isParameterEncoderError`

Returns whether the instance is `.parameterEncoderFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isParameterEncoderError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isMultipartEncodingError`

Returns whether the instance is `.multipartEncodingFailed`. When `true`, the `url` and `underlyingError`
properties will contain the associated values.

``` swift
public var isMultipartEncodingError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isRequestAdaptationError`

Returns whether the instance is `.requestAdaptationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestAdaptationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseValidationError`

Returns whether the instance is `.responseValidationFailed`. When `true`, the `acceptableContentTypes`,
`responseContentType`,  `responseCode`, and `underlyingError` properties will contain the associated values.

``` swift
public var isResponseValidationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isResponseSerializationError`

Returns whether the instance is `.responseSerializationFailed`. When `true`, the `failedStringEncoding` and
`underlyingError` properties will contain the associated values.

``` swift
public var isResponseSerializationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isServerTrustEvaluationError`

Returns whether the instance is `.serverTrustEvaluationFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isServerTrustEvaluationError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isRequestRetryError`

Returns whether the instance is `requestRetryFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isRequestRetryError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateUploadableError`

Returns whether the instance is `createUploadableFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateUploadableError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isCreateURLRequestError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isCreateURLRequestError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isDownloadedFileMoveError`

Returns whether the instance is `downloadedFileMoveFailed`. When `true`, the `destination` and `underlyingError` properties will
contain the associated values.

``` swift
public var isDownloadedFileMoveError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `isSessionTaskError`

Returns whether the instance is `createURLRequestFailed`. When `true`, the `underlyingError` property will
contain the associated value.

``` swift
public var isSessionTaskError: Bool 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `urlConvertible`

The `URLConvertible` associated with the error.

``` swift
public var urlConvertible: URLConvertible? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `url`

The `URL` associated with the error.

``` swift
public var url: URL? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `underlyingError`

The underlying `Error` responsible for generating the failure associated with `.sessionInvalidated`,
`.parameterEncodingFailed`, `.parameterEncoderFailed`, `.multipartEncodingFailed`, `.requestAdaptationFailed`,
`.responseSerializationFailed`, `.requestRetryFailed` errors.

``` swift
public var underlyingError: Error? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `acceptableContentTypes`

The acceptable `Content-Type`s of a `.responseValidationFailed` error.

``` swift
public var acceptableContentTypes: [String]? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseContentType`

The response `Content-Type` of a `.responseValidationFailed` error.

``` swift
public var responseContentType: String? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `responseCode`

The response code of a `.responseValidationFailed` error.

``` swift
public var responseCode: Int? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `failedStringEncoding`

The `String.Encoding` associated with a failed `.stringResponse()` call.

``` swift
public var failedStringEncoding: String.Encoding? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `sourceURL`

The `source` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var sourceURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `destinationURL`

The `destination` URL of a `.downloadedFileMoveFailed` error.

``` swift
public var destinationURL: URL? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```
