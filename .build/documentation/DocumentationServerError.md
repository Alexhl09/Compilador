# DocumentationServerError

An error that occurs during the processing of a message by a documentation service.

``` swift
public struct DocumentationServerError: DescribedError, Codable 
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

### `unsupportedMessageType()`

An error that indicates that a received message has no service that can process it.

``` swift
public static func unsupportedMessageType() -> DocumentationServerError 
```

### `invalidMessage(underlyingError:)`

An error that indicates that a received message could not be decoded, likely because it is encoded in an invalid format.

``` swift
public static func invalidMessage(underlyingError: String) -> DocumentationServerError 
```

### `invalidResponseMessage(underlyingError:)`

An error that indicates that a response message could not be encoded.

``` swift
public static func invalidResponseMessage(underlyingError: String) -> DocumentationServerError 
```
