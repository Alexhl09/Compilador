# ParameterEncoder

A type that can encode any `Encodable` type into a `URLRequest`.

``` swift
public protocol ParameterEncoder 
```

## Requirements

### encode(\_:​into:​)

Encode the provided `Encodable` parameters into `request`.

``` swift
func encode<Parameters: Encodable>(_ parameters: Parameters?, into request: URLRequest) throws -> URLRequest
```

#### Parameters

  - parameters: The `Encodable` parameter value.
  - request: The `URLRequest` into which to encode the parameters.

#### Throws

An `Error` when encoding fails. For Alamofire provided encoders, this will be an instance of `AFError.parameterEncoderFailed` with an associated `ParameterEncoderFailureReason`.

#### Returns

A `URLRequest` with the result of the encoding.

### encode(\_:​into:​)

Encode the provided `Encodable` parameters into `request`.

``` swift
func encode<Parameters: Encodable>(_ parameters: Parameters?, into request: URLRequest) throws -> URLRequest
```

#### Parameters

  - parameters: The `Encodable` parameter value.
  - request: The `URLRequest` into which to encode the parameters.

#### Throws

An `Error` when encoding fails. For Alamofire provided encoders, this will be an instance of `AFError.parameterEncoderFailed` with an associated `ParameterEncoderFailureReason`.

#### Returns

A `URLRequest` with the result of the encoding.

### encode(\_:​into:​)

Encode the provided `Encodable` parameters into `request`.

``` swift
func encode<Parameters: Encodable>(_ parameters: Parameters?, into request: URLRequest) throws -> URLRequest
```

#### Parameters

  - parameters: The `Encodable` parameter value.
  - request: The `URLRequest` into which to encode the parameters.

#### Throws

An `Error` when encoding fails. For Alamofire provided encoders, this will be an instance of `AFError.parameterEncoderFailed` with an associated `ParameterEncoderFailureReason`.

#### Returns

A `URLRequest` with the result of the encoding.
