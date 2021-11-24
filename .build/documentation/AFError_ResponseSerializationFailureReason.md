# AFError.ResponseSerializationFailureReason

The underlying reason the response serialization error occurred.

``` swift
public enum ResponseSerializationFailureReason 
```

  - inputDataNil:                    The server response contained no data.

  - inputDataNilOrZeroLength:        The server response contained no data or the data was zero length.

  - inputFileNil:                    The file containing the server response did not exist.

  - inputFileReadFailed:             The file containing the server response could not be read.

  - stringSerializationFailed:       String serialization failed using the provided `String.Encoding`.

  - jsonSerializationFailed:         JSON serialization failed with an underlying system error.

  - propertyListSerializationFailed: Property list serialization failed with an underlying system error.

## Enumeration Cases

### `inputDataNil`

``` swift
case inputDataNil
```

### `inputDataNilOrZeroLength`

``` swift
case inputDataNilOrZeroLength
```

### `inputFileNil`

``` swift
case inputFileNil
```

### `inputFileReadFailed`

``` swift
case inputFileReadFailed(at: URL)
```

### `stringSerializationFailed`

``` swift
case stringSerializationFailed(encoding: String.Encoding)
```

### `jsonSerializationFailed`

``` swift
case jsonSerializationFailed(error: Error)
```

### `propertyListSerializationFailed`

``` swift
case propertyListSerializationFailed(error: Error)
```

### `inputDataNil`

``` swift
case inputDataNil
```

### `inputDataNilOrZeroLength`

``` swift
case inputDataNilOrZeroLength
```

### `inputFileNil`

``` swift
case inputFileNil
```

### `inputFileReadFailed`

``` swift
case inputFileReadFailed(at: URL)
```

### `stringSerializationFailed`

``` swift
case stringSerializationFailed(encoding: String.Encoding)
```

### `jsonSerializationFailed`

``` swift
case jsonSerializationFailed(error: Error)
```

### `propertyListSerializationFailed`

``` swift
case propertyListSerializationFailed(error: Error)
```

### `inputDataNil`

``` swift
case inputDataNil
```

### `inputDataNilOrZeroLength`

``` swift
case inputDataNilOrZeroLength
```

### `inputFileNil`

``` swift
case inputFileNil
```

### `inputFileReadFailed`

``` swift
case inputFileReadFailed(at: URL)
```

### `stringSerializationFailed`

``` swift
case stringSerializationFailed(encoding: String.Encoding)
```

### `jsonSerializationFailed`

``` swift
case jsonSerializationFailed(error: Error)
```

### `propertyListSerializationFailed`

``` swift
case propertyListSerializationFailed(error: Error)
```

### `inputDataNilOrZeroLength`

The server response contained no data or the data was zero length.

``` swift
case inputDataNilOrZeroLength
```

### `inputFileNil`

The file containing the server response did not exist.

``` swift
case inputFileNil
```

### `inputFileReadFailed`

The file containing the server response could not be read from the associated `URL`.

``` swift
case inputFileReadFailed(at: URL)
```

### `stringSerializationFailed`

String serialization failed using the provided `String.Encoding`.

``` swift
case stringSerializationFailed(encoding: String.Encoding)
```

### `jsonSerializationFailed`

JSON serialization failed with an underlying system error.

``` swift
case jsonSerializationFailed(error: Error)
```

### `decodingFailed`

A `DataDecoder` failed to decode the response due to the associated `Error`.

``` swift
case decodingFailed(error: Error)
```

### `customSerializationFailed`

A custom response serializer failed due to the associated `Error`.

``` swift
case customSerializationFailed(error: Error)
```

### `invalidEmptyResponse`

Generic serialization failed for an empty response that wasn't type `Empty` but instead the associated type.

``` swift
case invalidEmptyResponse(type: String)
```

### `inputDataNilOrZeroLength`

The server response contained no data or the data was zero length.

``` swift
case inputDataNilOrZeroLength
```

### `inputFileNil`

The file containing the server response did not exist.

``` swift
case inputFileNil
```

### `inputFileReadFailed`

The file containing the server response could not be read from the associated `URL`.

``` swift
case inputFileReadFailed(at: URL)
```

### `stringSerializationFailed`

String serialization failed using the provided `String.Encoding`.

``` swift
case stringSerializationFailed(encoding: String.Encoding)
```

### `jsonSerializationFailed`

JSON serialization failed with an underlying system error.

``` swift
case jsonSerializationFailed(error: Error)
```

### `decodingFailed`

A `DataDecoder` failed to decode the response due to the associated `Error`.

``` swift
case decodingFailed(error: Error)
```

### `customSerializationFailed`

A custom response serializer failed due to the associated `Error`.

``` swift
case customSerializationFailed(error: Error)
```

### `invalidEmptyResponse`

Generic serialization failed for an empty response that wasn't type `Empty` but instead the associated type.

``` swift
case invalidEmptyResponse(type: String)
```

### `inputDataNilOrZeroLength`

The server response contained no data or the data was zero length.

``` swift
case inputDataNilOrZeroLength
```

### `inputFileNil`

The file containing the server response did not exist.

``` swift
case inputFileNil
```

### `inputFileReadFailed`

The file containing the server response could not be read from the associated `URL`.

``` swift
case inputFileReadFailed(at: URL)
```

### `stringSerializationFailed`

String serialization failed using the provided `String.Encoding`.

``` swift
case stringSerializationFailed(encoding: String.Encoding)
```

### `jsonSerializationFailed`

JSON serialization failed with an underlying system error.

``` swift
case jsonSerializationFailed(error: Error)
```

### `decodingFailed`

A `DataDecoder` failed to decode the response due to the associated `Error`.

``` swift
case decodingFailed(error: Error)
```

### `customSerializationFailed`

A custom response serializer failed due to the associated `Error`.

``` swift
case customSerializationFailed(error: Error)
```

### `invalidEmptyResponse`

Generic serialization failed for an empty response that wasn't type `Empty` but instead the associated type.

``` swift
case invalidEmptyResponse(type: String)
```
