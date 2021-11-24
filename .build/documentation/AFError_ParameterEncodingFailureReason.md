# AFError.ParameterEncodingFailureReason

The underlying reason the parameter encoding error occurred.

``` swift
public enum ParameterEncodingFailureReason 
```

  - missingURL:                 The URL request did not have a URL to encode.

  - jsonEncodingFailed:         JSON serialization failed with an underlying system error during the
    encoding process.

  - propertyListEncodingFailed: Property list serialization failed with an underlying system error during
    encoding process.

## Enumeration Cases

### `missingURL`

``` swift
case missingURL
```

### `jsonEncodingFailed`

``` swift
case jsonEncodingFailed(error: Error)
```

### `propertyListEncodingFailed`

``` swift
case propertyListEncodingFailed(error: Error)
```

### `missingURL`

``` swift
case missingURL
```

### `jsonEncodingFailed`

``` swift
case jsonEncodingFailed(error: Error)
```

### `propertyListEncodingFailed`

``` swift
case propertyListEncodingFailed(error: Error)
```

### `missingURL`

``` swift
case missingURL
```

### `jsonEncodingFailed`

``` swift
case jsonEncodingFailed(error: Error)
```

### `propertyListEncodingFailed`

``` swift
case propertyListEncodingFailed(error: Error)
```

### `missingURL`

The `URLRequest` did not have a `URL` to encode.

``` swift
case missingURL
```

### `jsonEncodingFailed`

JSON serialization failed with an underlying system error during the encoding process.

``` swift
case jsonEncodingFailed(error: Error)
```

### `customEncodingFailed`

Custom parameter encoding failed due to the associated `Error`.

``` swift
case customEncodingFailed(error: Error)
```

### `missingURL`

The `URLRequest` did not have a `URL` to encode.

``` swift
case missingURL
```

### `jsonEncodingFailed`

JSON serialization failed with an underlying system error during the encoding process.

``` swift
case jsonEncodingFailed(error: Error)
```

### `customEncodingFailed`

Custom parameter encoding failed due to the associated `Error`.

``` swift
case customEncodingFailed(error: Error)
```

### `missingURL`

The `URLRequest` did not have a `URL` to encode.

``` swift
case missingURL
```

### `jsonEncodingFailed`

JSON serialization failed with an underlying system error during the encoding process.

``` swift
case jsonEncodingFailed(error: Error)
```

### `customEncodingFailed`

Custom parameter encoding failed due to the associated `Error`.

``` swift
case customEncodingFailed(error: Error)
```
