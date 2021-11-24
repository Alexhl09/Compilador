# JSONEncoding

Uses `JSONSerialization` to create a JSON representation of the parameters object, which is set as the body of the
request. The `Content-Type` HTTP header field of an encoded request is set to `application/json`.

``` swift
public struct JSONEncoding: ParameterEncoding 
```

## Inheritance

[`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding)

## Initializers

### `init(options:)`

Creates a `JSONEncoding` instance using the specified options.

``` swift
public init(options: JSONSerialization.WritingOptions = []) 
```

#### Parameters

  - options: The options for writing the parameters as JSON data.

#### Returns

The new `JSONEncoding` instance.

### `init(options:)`

Creates a `JSONEncoding` instance using the specified options.

``` swift
public init(options: JSONSerialization.WritingOptions = []) 
```

#### Parameters

  - options: The options for writing the parameters as JSON data.

#### Returns

The new `JSONEncoding` instance.

### `init(options:)`

Creates a `JSONEncoding` instance using the specified options.

``` swift
public init(options: JSONSerialization.WritingOptions = []) 
```

#### Parameters

  - options: The options for writing the parameters as JSON data.

#### Returns

The new `JSONEncoding` instance.

### `init(options:)`

Creates an instance using the specified `WritingOptions`.

``` swift
public init(options: JSONSerialization.WritingOptions = []) 
```

#### Parameters

  - options: `JSONSerialization.WritingOptions` to use.

### `init(options:)`

Creates an instance using the specified `WritingOptions`.

``` swift
public init(options: JSONSerialization.WritingOptions = []) 
```

#### Parameters

  - options: `JSONSerialization.WritingOptions` to use.

### `init(options:)`

Creates an instance using the specified `WritingOptions`.

``` swift
public init(options: JSONSerialization.WritingOptions = []) 
```

#### Parameters

  - options: `JSONSerialization.WritingOptions` to use.

## Properties

### `` `default` ``

Returns a `JSONEncoding` instance with default writing options.

``` swift
public static var `default`: JSONEncoding 
```

### `prettyPrinted`

Returns a `JSONEncoding` instance with `.prettyPrinted` writing options.

``` swift
public static var prettyPrinted: JSONEncoding 
```

### `options`

The options for writing the parameters as JSON data.

``` swift
public let options: JSONSerialization.WritingOptions
```

### `` `default` ``

Returns a `JSONEncoding` instance with default writing options.

``` swift
public static var `default`: JSONEncoding 
```

### `prettyPrinted`

Returns a `JSONEncoding` instance with `.prettyPrinted` writing options.

``` swift
public static var prettyPrinted: JSONEncoding 
```

### `options`

The options for writing the parameters as JSON data.

``` swift
public let options: JSONSerialization.WritingOptions
```

### `` `default` ``

Returns a `JSONEncoding` instance with default writing options.

``` swift
public static var `default`: JSONEncoding 
```

### `prettyPrinted`

Returns a `JSONEncoding` instance with `.prettyPrinted` writing options.

``` swift
public static var prettyPrinted: JSONEncoding 
```

### `options`

The options for writing the parameters as JSON data.

``` swift
public let options: JSONSerialization.WritingOptions
```

### `` `default` ``

Returns a `JSONEncoding` instance with default writing options.

``` swift
public static var `default`: JSONEncoding 
```

### `prettyPrinted`

Returns a `JSONEncoding` instance with `.prettyPrinted` writing options.

``` swift
public static var prettyPrinted: JSONEncoding 
```

### `options`

The options for writing the parameters as JSON data.

``` swift
public let options: JSONSerialization.WritingOptions
```

### `` `default` ``

Returns a `JSONEncoding` instance with default writing options.

``` swift
public static var `default`: JSONEncoding 
```

### `prettyPrinted`

Returns a `JSONEncoding` instance with `.prettyPrinted` writing options.

``` swift
public static var prettyPrinted: JSONEncoding 
```

### `options`

The options for writing the parameters as JSON data.

``` swift
public let options: JSONSerialization.WritingOptions
```

### `` `default` ``

Returns a `JSONEncoding` instance with default writing options.

``` swift
public static var `default`: JSONEncoding 
```

### `prettyPrinted`

Returns a `JSONEncoding` instance with `.prettyPrinted` writing options.

``` swift
public static var prettyPrinted: JSONEncoding 
```

### `options`

The options for writing the parameters as JSON data.

``` swift
public let options: JSONSerialization.WritingOptions
```

## Methods

### `encode(_:with:)`

Creates a URL request by encoding parameters and applying them onto an existing request.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

#### Parameters

  - urlRequest: The request to have parameters applied.
  - parameters: The parameters to apply.

#### Throws

An `Error` if the encoding process encounters an error.

#### Returns

The encoded request.

### `encode(_:withJSONObject:)`

Creates a URL request by encoding the JSON object and setting the resulting data on the HTTP body.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, withJSONObject jsonObject: Any? = nil) throws -> URLRequest 
```

#### Parameters

  - urlRequest: The request to apply the JSON object to.
  - jsonObject: The JSON object to apply to the request.

#### Throws

An `Error` if the encoding process encounters an error.

#### Returns

The encoded request.

### `encode(_:with:)`

Creates a URL request by encoding parameters and applying them onto an existing request.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

#### Parameters

  - urlRequest: The request to have parameters applied.
  - parameters: The parameters to apply.

#### Throws

An `Error` if the encoding process encounters an error.

#### Returns

The encoded request.

### `encode(_:withJSONObject:)`

Creates a URL request by encoding the JSON object and setting the resulting data on the HTTP body.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, withJSONObject jsonObject: Any? = nil) throws -> URLRequest 
```

#### Parameters

  - urlRequest: The request to apply the JSON object to.
  - jsonObject: The JSON object to apply to the request.

#### Throws

An `Error` if the encoding process encounters an error.

#### Returns

The encoded request.

### `encode(_:with:)`

Creates a URL request by encoding parameters and applying them onto an existing request.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

#### Parameters

  - urlRequest: The request to have parameters applied.
  - parameters: The parameters to apply.

#### Throws

An `Error` if the encoding process encounters an error.

#### Returns

The encoded request.

### `encode(_:withJSONObject:)`

Creates a URL request by encoding the JSON object and setting the resulting data on the HTTP body.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, withJSONObject jsonObject: Any? = nil) throws -> URLRequest 
```

#### Parameters

  - urlRequest: The request to apply the JSON object to.
  - jsonObject: The JSON object to apply to the request.

#### Throws

An `Error` if the encoding process encounters an error.

#### Returns

The encoded request.

### `encode(_:with:)`

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

### `encode(_:withJSONObject:)`

Encodes any JSON compatible object into a `URLRequest`.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, withJSONObject jsonObject: Any? = nil) throws -> URLRequest 
```

#### Parameters

  - urlRequest: `URLRequestConvertible` value into which the object will be encoded.
  - jsonObject: `Any` value (must be JSON compatible`to be encoded into the`URLRequest`. `nil\` by default.

#### Throws

Any `Error` produced during encoding.

#### Returns

The encoded `URLRequest`.

### `encode(_:with:)`

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

### `encode(_:withJSONObject:)`

Encodes any JSON compatible object into a `URLRequest`.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, withJSONObject jsonObject: Any? = nil) throws -> URLRequest 
```

#### Parameters

  - urlRequest: `URLRequestConvertible` value into which the object will be encoded.
  - jsonObject: `Any` value (must be JSON compatible`to be encoded into the`URLRequest`. `nil\` by default.

#### Throws

Any `Error` produced during encoding.

#### Returns

The encoded `URLRequest`.

### `encode(_:with:)`

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

### `encode(_:withJSONObject:)`

Encodes any JSON compatible object into a `URLRequest`.

``` swift
public func encode(_ urlRequest: URLRequestConvertible, withJSONObject jsonObject: Any? = nil) throws -> URLRequest 
```

#### Parameters

  - urlRequest: `URLRequestConvertible` value into which the object will be encoded.
  - jsonObject: `Any` value (must be JSON compatible`to be encoded into the`URLRequest`. `nil\` by default.

#### Throws

Any `Error` produced during encoding.

#### Returns

The encoded `URLRequest`.
