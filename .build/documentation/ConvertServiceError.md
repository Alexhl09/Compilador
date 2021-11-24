# ConvertServiceError

An error that occurs during the processing of a documentation conversion request.

``` swift
public struct ConvertServiceError: DescribedError, Codable 
```

## Inheritance

`Codable`, [`DescribedError`](/DescribedError)

## Properties

### `identifier`

The identifier of the error.

``` swift
public var identifier: String
```

### `description`

The human-readable description of the error.

``` swift
public var description: String
```

### `errorDescription`

``` swift
public var errorDescription: String 
```

## Methods

### `missingPayload()`

An error that indicates that a convert request has no associated payload.

``` swift
public static func missingPayload() -> ConvertServiceError 
```

### `conversionError(underlyingError:)`

An error that indicates that an error occurred while converting documentation.

``` swift
public static func conversionError(underlyingError: String) -> ConvertServiceError 
```

### `invalidRequest(underlyingError:)`

An error that indicates that a received request could not be decoded, likely because it is encoded in an invalid format.

``` swift
public static func invalidRequest(underlyingError: String) -> ConvertServiceError 
```

### `invalidResponseMessage(underlyingError:)`

An error that indicates that a response could not be encoded.

``` swift
public static func invalidResponseMessage(underlyingError: String) -> ConvertServiceError 
```
