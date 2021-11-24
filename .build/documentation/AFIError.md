# AFIError

`AFIError` is the error type returned by AlamofireImage.

``` swift
public enum AFIError: Error 
```

  - requestCancelled:         The request was explicitly cancelled.

  - imageSerializationFailed: Response data could not be serialized into an image.

## Inheritance

`Error`, [`LocalizedError`](/LocalizedError)

## Enumeration Cases

### `requestCancelled`

``` swift
case requestCancelled
```

### `imageSerializationFailed`

``` swift
case imageSerializationFailed
```

### `alamofireError`

``` swift
case alamofireError(AFError)
```

## Properties

### `isRequestCancelledError`

Returns `true` if the `AFIError` is a request cancellation error, `false` otherwise.

``` swift
public var isRequestCancelledError: Bool 
```

### `isImageSerializationFailedError`

Returns `true` if the `AFIError` is an image serialization error, `false` otherwise.

``` swift
public var isImageSerializationFailedError: Bool 
```

### `isAlamofireError`

``` swift
public var isAlamofireError: Bool 
```

### `errorDescription`

``` swift
public var errorDescription: String? 
```
