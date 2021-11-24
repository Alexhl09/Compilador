# JSONParameterEncoder

A `ParameterEncoder` that encodes types as JSON body data.

``` swift
open class JSONParameterEncoder: ParameterEncoder 
```

If no `Content-Type` header is already set on the provided `URLRequest`s, it's set to `application/json`.

## Inheritance

[`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder)

## Initializers

### `init(encoder:)`

Creates an instance with the provided `JSONEncoder`.

``` swift
public init(encoder: JSONEncoder = JSONEncoder()) 
```

#### Parameters

  - encoder: The `JSONEncoder`. `JSONEncoder()` by default.

### `init(encoder:)`

Creates an instance with the provided `JSONEncoder`.

``` swift
public init(encoder: JSONEncoder = JSONEncoder()) 
```

#### Parameters

  - encoder: The `JSONEncoder`. `JSONEncoder()` by default.

### `init(encoder:)`

Creates an instance with the provided `JSONEncoder`.

``` swift
public init(encoder: JSONEncoder = JSONEncoder()) 
```

#### Parameters

  - encoder: The `JSONEncoder`. `JSONEncoder()` by default.

## Properties

### `` `default` ``

Returns an encoder with default parameters.

``` swift
public static var `default`: JSONParameterEncoder 
```

### `prettyPrinted`

Returns an encoder with `JSONEncoder.outputFormatting` set to `.prettyPrinted`.

``` swift
public static var prettyPrinted: JSONParameterEncoder 
```

### `sortedKeys`

Returns an encoder with `JSONEncoder.outputFormatting` set to `.sortedKeys`.

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    public static var sortedKeys: JSONParameterEncoder 
```

### `encoder`

`JSONEncoder` used to encode parameters.

``` swift
public let encoder: JSONEncoder
```

### `` `default` ``

Returns an encoder with default parameters.

``` swift
public static var `default`: JSONParameterEncoder 
```

### `prettyPrinted`

Returns an encoder with `JSONEncoder.outputFormatting` set to `.prettyPrinted`.

``` swift
public static var prettyPrinted: JSONParameterEncoder 
```

### `sortedKeys`

Returns an encoder with `JSONEncoder.outputFormatting` set to `.sortedKeys`.

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    public static var sortedKeys: JSONParameterEncoder 
```

### `encoder`

`JSONEncoder` used to encode parameters.

``` swift
public let encoder: JSONEncoder
```

### `` `default` ``

Returns an encoder with default parameters.

``` swift
public static var `default`: JSONParameterEncoder 
```

### `prettyPrinted`

Returns an encoder with `JSONEncoder.outputFormatting` set to `.prettyPrinted`.

``` swift
public static var prettyPrinted: JSONParameterEncoder 
```

### `sortedKeys`

Returns an encoder with `JSONEncoder.outputFormatting` set to `.sortedKeys`.

``` swift
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
    public static var sortedKeys: JSONParameterEncoder 
```

### `encoder`

`JSONEncoder` used to encode parameters.

``` swift
public let encoder: JSONEncoder
```

## Methods

### `encode(_:into:)`

``` swift
open func encode<Parameters: Encodable>(_ parameters: Parameters?,
                                            into request: URLRequest) throws -> URLRequest 
```

### `encode(_:into:)`

``` swift
open func encode<Parameters: Encodable>(_ parameters: Parameters?,
                                            into request: URLRequest) throws -> URLRequest 
```

### `encode(_:into:)`

``` swift
open func encode<Parameters: Encodable>(_ parameters: Parameters?,
                                            into request: URLRequest) throws -> URLRequest 
```
