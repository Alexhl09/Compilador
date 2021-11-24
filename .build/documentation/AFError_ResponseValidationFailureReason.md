# AFError.ResponseValidationFailureReason

The underlying reason the response validation error occurred.

``` swift
public enum ResponseValidationFailureReason 
```

  - dataFileNil:             The data file containing the server response did not exist.

  - dataFileReadFailed:      The data file containing the server response could not be read.

  - missingContentType:      The response did not contain a `Content-Type` and the `acceptableContentTypes`
    provided did not contain wildcard type.

  - unacceptableContentType: The response `Content-Type` did not match any type in the provided
    `acceptableContentTypes`.

  - unacceptableStatusCode:  The response status code was not acceptable.

## Enumeration Cases

### `dataFileNil`

``` swift
case dataFileNil
```

### `dataFileReadFailed`

``` swift
case dataFileReadFailed(at: URL)
```

### `missingContentType`

``` swift
case missingContentType(acceptableContentTypes: [String])
```

### `unacceptableContentType`

``` swift
case unacceptableContentType(acceptableContentTypes: [String], responseContentType: String)
```

### `unacceptableStatusCode`

``` swift
case unacceptableStatusCode(code: Int)
```

### `dataFileNil`

``` swift
case dataFileNil
```

### `dataFileReadFailed`

``` swift
case dataFileReadFailed(at: URL)
```

### `missingContentType`

``` swift
case missingContentType(acceptableContentTypes: [String])
```

### `unacceptableContentType`

``` swift
case unacceptableContentType(acceptableContentTypes: [String], responseContentType: String)
```

### `unacceptableStatusCode`

``` swift
case unacceptableStatusCode(code: Int)
```

### `dataFileNil`

``` swift
case dataFileNil
```

### `dataFileReadFailed`

``` swift
case dataFileReadFailed(at: URL)
```

### `missingContentType`

``` swift
case missingContentType(acceptableContentTypes: [String])
```

### `unacceptableContentType`

``` swift
case unacceptableContentType(acceptableContentTypes: [String], responseContentType: String)
```

### `unacceptableStatusCode`

``` swift
case unacceptableStatusCode(code: Int)
```

### `dataFileNil`

The data file containing the server response did not exist.

``` swift
case dataFileNil
```

### `dataFileReadFailed`

The data file containing the server response at the associated `URL` could not be read.

``` swift
case dataFileReadFailed(at: URL)
```

### `missingContentType`

The response did not contain a `Content-Type` and the `acceptableContentTypes` provided did not contain a
wildcard type.

``` swift
case missingContentType(acceptableContentTypes: [String])
```

### `unacceptableContentType`

The response `Content-Type` did not match any type in the provided `acceptableContentTypes`.

``` swift
case unacceptableContentType(acceptableContentTypes: [String], responseContentType: String)
```

### `unacceptableStatusCode`

The response status code was not acceptable.

``` swift
case unacceptableStatusCode(code: Int)
```

### `customValidationFailed`

Custom response validation failed due to the associated `Error`.

``` swift
case customValidationFailed(error: Error)
```

### `dataFileNil`

The data file containing the server response did not exist.

``` swift
case dataFileNil
```

### `dataFileReadFailed`

The data file containing the server response at the associated `URL` could not be read.

``` swift
case dataFileReadFailed(at: URL)
```

### `missingContentType`

The response did not contain a `Content-Type` and the `acceptableContentTypes` provided did not contain a
wildcard type.

``` swift
case missingContentType(acceptableContentTypes: [String])
```

### `unacceptableContentType`

The response `Content-Type` did not match any type in the provided `acceptableContentTypes`.

``` swift
case unacceptableContentType(acceptableContentTypes: [String], responseContentType: String)
```

### `unacceptableStatusCode`

The response status code was not acceptable.

``` swift
case unacceptableStatusCode(code: Int)
```

### `customValidationFailed`

Custom response validation failed due to the associated `Error`.

``` swift
case customValidationFailed(error: Error)
```

### `dataFileNil`

The data file containing the server response did not exist.

``` swift
case dataFileNil
```

### `dataFileReadFailed`

The data file containing the server response at the associated `URL` could not be read.

``` swift
case dataFileReadFailed(at: URL)
```

### `missingContentType`

The response did not contain a `Content-Type` and the `acceptableContentTypes` provided did not contain a
wildcard type.

``` swift
case missingContentType(acceptableContentTypes: [String])
```

### `unacceptableContentType`

The response `Content-Type` did not match any type in the provided `acceptableContentTypes`.

``` swift
case unacceptableContentType(acceptableContentTypes: [String], responseContentType: String)
```

### `unacceptableStatusCode`

The response status code was not acceptable.

``` swift
case unacceptableStatusCode(code: Int)
```

### `customValidationFailed`

Custom response validation failed due to the associated `Error`.

``` swift
case customValidationFailed(error: Error)
```
