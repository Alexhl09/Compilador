# PropertyListEncoding

Uses `PropertyListSerialization` to create a plist representation of the parameters object, according to the
associated format and write options values, which is set as the body of the request. The `Content-Type` HTTP header
field of an encoded request is set to `application/x-plist`.

``` swift
public struct PropertyListEncoding: ParameterEncoding 
```

## Inheritance

[`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding)

## Initializers

### `init(format:options:)`

Creates a `PropertyListEncoding` instance using the specified format and options.

``` swift
public init(
        format: PropertyListSerialization.PropertyListFormat = .xml,
        options: PropertyListSerialization.WriteOptions = 0)
```

#### Parameters

  - format: The property list serialization format.
  - options: The options for writing the parameters as plist data.

#### Returns

The new `PropertyListEncoding` instance.

### `init(format:options:)`

Creates a `PropertyListEncoding` instance using the specified format and options.

``` swift
public init(
        format: PropertyListSerialization.PropertyListFormat = .xml,
        options: PropertyListSerialization.WriteOptions = 0)
```

#### Parameters

  - format: The property list serialization format.
  - options: The options for writing the parameters as plist data.

#### Returns

The new `PropertyListEncoding` instance.

### `init(format:options:)`

Creates a `PropertyListEncoding` instance using the specified format and options.

``` swift
public init(
        format: PropertyListSerialization.PropertyListFormat = .xml,
        options: PropertyListSerialization.WriteOptions = 0)
```

#### Parameters

  - format: The property list serialization format.
  - options: The options for writing the parameters as plist data.

#### Returns

The new `PropertyListEncoding` instance.

## Properties

### `` `default` ``

Returns a default `PropertyListEncoding` instance.

``` swift
public static var `default`: PropertyListEncoding 
```

### `xml`

Returns a `PropertyListEncoding` instance with xml formatting and default writing options.

``` swift
public static var xml: PropertyListEncoding 
```

### `binary`

Returns a `PropertyListEncoding` instance with binary formatting and default writing options.

``` swift
public static var binary: PropertyListEncoding 
```

### `format`

The property list serialization format.

``` swift
public let format: PropertyListSerialization.PropertyListFormat
```

### `options`

The options for writing the parameters as plist data.

``` swift
public let options: PropertyListSerialization.WriteOptions
```

### `` `default` ``

Returns a default `PropertyListEncoding` instance.

``` swift
public static var `default`: PropertyListEncoding 
```

### `xml`

Returns a `PropertyListEncoding` instance with xml formatting and default writing options.

``` swift
public static var xml: PropertyListEncoding 
```

### `binary`

Returns a `PropertyListEncoding` instance with binary formatting and default writing options.

``` swift
public static var binary: PropertyListEncoding 
```

### `format`

The property list serialization format.

``` swift
public let format: PropertyListSerialization.PropertyListFormat
```

### `options`

The options for writing the parameters as plist data.

``` swift
public let options: PropertyListSerialization.WriteOptions
```

### `` `default` ``

Returns a default `PropertyListEncoding` instance.

``` swift
public static var `default`: PropertyListEncoding 
```

### `xml`

Returns a `PropertyListEncoding` instance with xml formatting and default writing options.

``` swift
public static var xml: PropertyListEncoding 
```

### `binary`

Returns a `PropertyListEncoding` instance with binary formatting and default writing options.

``` swift
public static var binary: PropertyListEncoding 
```

### `format`

The property list serialization format.

``` swift
public let format: PropertyListSerialization.PropertyListFormat
```

### `options`

The options for writing the parameters as plist data.

``` swift
public let options: PropertyListSerialization.WriteOptions
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
