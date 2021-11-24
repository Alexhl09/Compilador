# SessionManager.MultipartFormDataEncodingResult

Defines whether the `MultipartFormData` encoding was successful and contains result of the encoding as
associated values.

``` swift
public enum MultipartFormDataEncodingResult 
```

  - Success: Represents a successful `MultipartFormData` encoding and contains the new `UploadRequest` along with
    streaming information.

  - Failure: Used to represent a failure in the `MultipartFormData` encoding and also contains the encoding
    error.

## Enumeration Cases

### `success`

``` swift
case success(request: UploadRequest, streamingFromDisk: Bool, streamFileURL: URL?)
```

### `failure`

``` swift
case failure(Error)
```

### `success`

``` swift
case success(request: UploadRequest, streamingFromDisk: Bool, streamFileURL: URL?)
```

### `failure`

``` swift
case failure(Error)
```

### `success`

``` swift
case success(request: UploadRequest, streamingFromDisk: Bool, streamFileURL: URL?)
```

### `failure`

``` swift
case failure(Error)
```
