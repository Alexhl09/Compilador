# URLEncodedFormParameterEncoder

A `ParameterEncoder` that encodes types as URL-encoded query strings to be set on the URL or as body data, depending
on the `Destination` set.

``` swift
open class URLEncodedFormParameterEncoder: ParameterEncoder 
```

If no `Content-Type` header is already set on the provided `URLRequest`s, it will be set to
`application/x-www-form-urlencoded; charset=utf-8`.

Encoding behavior can be customized by passing an instance of `URLEncodedFormEncoder` to the initializer.

## Inheritance

[`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder), [`ParameterEncoder`](/ParameterEncoder)

## Initializers

### `init(encoder:destination:)`

Creates an instance with the provided `URLEncodedFormEncoder` instance and `Destination` value.

``` swift
public init(encoder: URLEncodedFormEncoder = URLEncodedFormEncoder(), destination: Destination = .methodDependent) 
```

#### Parameters

  - encoder: The `URLEncodedFormEncoder`. `URLEncodedFormEncoder()` by default.
  - destination: The `Destination`. `.methodDependent` by default.

### `init(encoder:destination:)`

Creates an instance with the provided `URLEncodedFormEncoder` instance and `Destination` value.

``` swift
public init(encoder: URLEncodedFormEncoder = URLEncodedFormEncoder(), destination: Destination = .methodDependent) 
```

#### Parameters

  - encoder: The `URLEncodedFormEncoder`. `URLEncodedFormEncoder()` by default.
  - destination: The `Destination`. `.methodDependent` by default.

### `init(encoder:destination:)`

Creates an instance with the provided `URLEncodedFormEncoder` instance and `Destination` value.

``` swift
public init(encoder: URLEncodedFormEncoder = URLEncodedFormEncoder(), destination: Destination = .methodDependent) 
```

#### Parameters

  - encoder: The `URLEncodedFormEncoder`. `URLEncodedFormEncoder()` by default.
  - destination: The `Destination`. `.methodDependent` by default.

## Properties

### `` `default` ``

Returns an encoder with default parameters.

``` swift
public static var `default`: URLEncodedFormParameterEncoder 
```

### `encoder`

The `URLEncodedFormEncoder` to use.

``` swift
public let encoder: URLEncodedFormEncoder
```

### `destination`

The `Destination` for the URL-encoded string.

``` swift
public let destination: Destination
```

### `` `default` ``

Returns an encoder with default parameters.

``` swift
public static var `default`: URLEncodedFormParameterEncoder 
```

### `encoder`

The `URLEncodedFormEncoder` to use.

``` swift
public let encoder: URLEncodedFormEncoder
```

### `destination`

The `Destination` for the URL-encoded string.

``` swift
public let destination: Destination
```

### `` `default` ``

Returns an encoder with default parameters.

``` swift
public static var `default`: URLEncodedFormParameterEncoder 
```

### `encoder`

The `URLEncodedFormEncoder` to use.

``` swift
public let encoder: URLEncodedFormEncoder
```

### `destination`

The `Destination` for the URL-encoded string.

``` swift
public let destination: Destination
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
