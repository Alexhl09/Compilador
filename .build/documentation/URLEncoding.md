# URLEncoding

Creates a url-encoded query string to be set as or appended to any existing URL query string or set as the HTTP
body of the URL request. Whether the query string is set or appended to any existing URL query string or set as
the HTTP body depends on the destination of the encoding.

``` swift
public struct URLEncoding: ParameterEncoding 
```

The `Content-Type` HTTP header field of an encoded request with HTTP body is set to
`application/x-www-form-urlencoded; charset=utf-8`. Since there is no published specification for how to encode
collection types, the convention of appending `[]` to the key for array values (`foo[]=1&foo[]=2`), and appending
the key surrounded by square brackets for nested dictionary values (`foo[bar]=baz`).

## Inheritance

[`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding), [`ParameterEncoding`](/ParameterEncoding)

## Initializers

### `init(destination:)`

Creates a `URLEncoding` instance using the specified destination.

``` swift
public init(destination: Destination = .methodDependent) 
```

#### Parameters

  - destination: The destination defining where the encoded query string is to be applied.

#### Returns

The new `URLEncoding` instance.

### `init(destination:arrayEncoding:boolEncoding:)`

Creates a `URLEncoding` instance using the specified destination.

``` swift
public init(destination: Destination = .methodDependent, arrayEncoding: ArrayEncoding = .brackets, boolEncoding: BoolEncoding = .numeric) 
```

#### Parameters

  - destination: The destination defining where the encoded query string is to be applied.
  - arrayEncoding: The encoding to use for `Array` parameters.
  - boolEncoding: The encoding to use for `Bool` parameters.

#### Returns

The new `URLEncoding` instance.

### `init(destination:arrayEncoding:boolEncoding:)`

Creates a `URLEncoding` instance using the specified destination.

``` swift
public init(destination: Destination = .methodDependent, arrayEncoding: ArrayEncoding = .brackets, boolEncoding: BoolEncoding = .numeric) 
```

#### Parameters

  - destination: The destination defining where the encoded query string is to be applied.
  - arrayEncoding: The encoding to use for `Array` parameters.
  - boolEncoding: The encoding to use for `Bool` parameters.

#### Returns

The new `URLEncoding` instance.

### `init(destination:arrayEncoding:boolEncoding:)`

Creates an instance using the specified parameters.

``` swift
public init(destination: Destination = .methodDependent,
                arrayEncoding: ArrayEncoding = .brackets,
                boolEncoding: BoolEncoding = .numeric) 
```

#### Parameters

  - destination: `Destination` defining where the encoded query string will be applied. `.methodDependent` by default.
  - arrayEncoding: `ArrayEncoding` to use. `.brackets` by default.
  - boolEncoding: `BoolEncoding` to use. `.numeric` by default.

### `init(destination:arrayEncoding:boolEncoding:)`

Creates an instance using the specified parameters.

``` swift
public init(destination: Destination = .methodDependent,
                arrayEncoding: ArrayEncoding = .brackets,
                boolEncoding: BoolEncoding = .numeric) 
```

#### Parameters

  - destination: `Destination` defining where the encoded query string will be applied. `.methodDependent` by default.
  - arrayEncoding: `ArrayEncoding` to use. `.brackets` by default.
  - boolEncoding: `BoolEncoding` to use. `.numeric` by default.

### `init(destination:arrayEncoding:boolEncoding:)`

Creates an instance using the specified parameters.

``` swift
public init(destination: Destination = .methodDependent,
                arrayEncoding: ArrayEncoding = .brackets,
                boolEncoding: BoolEncoding = .numeric) 
```

#### Parameters

  - destination: `Destination` defining where the encoded query string will be applied. `.methodDependent` by default.
  - arrayEncoding: `ArrayEncoding` to use. `.brackets` by default.
  - boolEncoding: `BoolEncoding` to use. `.numeric` by default.

## Properties

### `` `default` ``

Returns a default `URLEncoding` instance.

``` swift
public static var `default`: URLEncoding 
```

### `methodDependent`

Returns a `URLEncoding` instance with a `.methodDependent` destination.

``` swift
public static var methodDependent: URLEncoding 
```

### `queryString`

Returns a `URLEncoding` instance with a `.queryString` destination.

``` swift
public static var queryString: URLEncoding 
```

### `httpBody`

Returns a `URLEncoding` instance with an `.httpBody` destination.

``` swift
public static var httpBody: URLEncoding 
```

### `destination`

The destination defining where the encoded query string is to be applied to the URL request.

``` swift
public let destination: Destination
```

### `` `default` ``

Returns a default `URLEncoding` instance.

``` swift
public static var `default`: URLEncoding 
```

### `methodDependent`

Returns a `URLEncoding` instance with a `.methodDependent` destination.

``` swift
public static var methodDependent: URLEncoding 
```

### `queryString`

Returns a `URLEncoding` instance with a `.queryString` destination.

``` swift
public static var queryString: URLEncoding 
```

### `httpBody`

Returns a `URLEncoding` instance with an `.httpBody` destination.

``` swift
public static var httpBody: URLEncoding 
```

### `destination`

The destination defining where the encoded query string is to be applied to the URL request.

``` swift
public let destination: Destination
```

### `arrayEncoding`

The encoding to use for `Array` parameters.

``` swift
public let arrayEncoding: ArrayEncoding
```

### `boolEncoding`

The encoding to use for `Bool` parameters.

``` swift
public let boolEncoding: BoolEncoding
```

### `` `default` ``

Returns a default `URLEncoding` instance.

``` swift
public static var `default`: URLEncoding 
```

### `methodDependent`

Returns a `URLEncoding` instance with a `.methodDependent` destination.

``` swift
public static var methodDependent: URLEncoding 
```

### `queryString`

Returns a `URLEncoding` instance with a `.queryString` destination.

``` swift
public static var queryString: URLEncoding 
```

### `httpBody`

Returns a `URLEncoding` instance with an `.httpBody` destination.

``` swift
public static var httpBody: URLEncoding 
```

### `destination`

The destination defining where the encoded query string is to be applied to the URL request.

``` swift
public let destination: Destination
```

### `arrayEncoding`

The encoding to use for `Array` parameters.

``` swift
public let arrayEncoding: ArrayEncoding
```

### `boolEncoding`

The encoding to use for `Bool` parameters.

``` swift
public let boolEncoding: BoolEncoding
```

### `` `default` ``

Returns a default `URLEncoding` instance with a `.methodDependent` destination.

``` swift
public static var `default`: URLEncoding 
```

### `queryString`

Returns a `URLEncoding` instance with a `.queryString` destination.

``` swift
public static var queryString: URLEncoding 
```

### `httpBody`

Returns a `URLEncoding` instance with an `.httpBody` destination.

``` swift
public static var httpBody: URLEncoding 
```

### `destination`

The destination defining where the encoded query string is to be applied to the URL request.

``` swift
public let destination: Destination
```

### `arrayEncoding`

The encoding to use for `Array` parameters.

``` swift
public let arrayEncoding: ArrayEncoding
```

### `boolEncoding`

The encoding to use for `Bool` parameters.

``` swift
public let boolEncoding: BoolEncoding
```

### `` `default` ``

Returns a default `URLEncoding` instance with a `.methodDependent` destination.

``` swift
public static var `default`: URLEncoding 
```

### `queryString`

Returns a `URLEncoding` instance with a `.queryString` destination.

``` swift
public static var queryString: URLEncoding 
```

### `httpBody`

Returns a `URLEncoding` instance with an `.httpBody` destination.

``` swift
public static var httpBody: URLEncoding 
```

### `destination`

The destination defining where the encoded query string is to be applied to the URL request.

``` swift
public let destination: Destination
```

### `arrayEncoding`

The encoding to use for `Array` parameters.

``` swift
public let arrayEncoding: ArrayEncoding
```

### `boolEncoding`

The encoding to use for `Bool` parameters.

``` swift
public let boolEncoding: BoolEncoding
```

### `` `default` ``

Returns a default `URLEncoding` instance with a `.methodDependent` destination.

``` swift
public static var `default`: URLEncoding 
```

### `queryString`

Returns a `URLEncoding` instance with a `.queryString` destination.

``` swift
public static var queryString: URLEncoding 
```

### `httpBody`

Returns a `URLEncoding` instance with an `.httpBody` destination.

``` swift
public static var httpBody: URLEncoding 
```

### `destination`

The destination defining where the encoded query string is to be applied to the URL request.

``` swift
public let destination: Destination
```

### `arrayEncoding`

The encoding to use for `Array` parameters.

``` swift
public let arrayEncoding: ArrayEncoding
```

### `boolEncoding`

The encoding to use for `Bool` parameters.

``` swift
public let boolEncoding: BoolEncoding
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

### `queryComponents(fromKey:value:)`

Creates percent-escaped, URL encoded query string components from the given key-value pair using recursion.

``` swift
public func queryComponents(fromKey key: String, value: Any) -> [(String, String)] 
```

#### Parameters

  - key: The key of the query component.
  - value: The value of the query component.

#### Returns

The percent-escaped, URL encoded query string components.

### `escape(_:)`

Returns a percent-escaped string following RFC 3986 for a query string key or value.

``` swift
public func escape(_ string: String) -> String 
```

RFC 3986 states that the following characters are "reserved" characters.

  - General Delimiters: ":", "\#", "\[", "\]", "@", "?", "/"

  - Sub-Delimiters: "\!", "$", "&", "'", "(", ")", "\*", "+", ",", ";", "="

In RFC 3986 - Section 3.4, it states that the "?" and "/" characters should not be escaped to allow
query strings to include a URL. Therefore, all "reserved" characters with the exception of "?" and "/"
should be percent-escaped in the query string.

#### Parameters

  - string: The string to be percent-escaped.

#### Returns

The percent-escaped string.

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

### `queryComponents(fromKey:value:)`

Creates percent-escaped, URL encoded query string components from the given key-value pair using recursion.

``` swift
public func queryComponents(fromKey key: String, value: Any) -> [(String, String)] 
```

#### Parameters

  - key: The key of the query component.
  - value: The value of the query component.

#### Returns

The percent-escaped, URL encoded query string components.

### `escape(_:)`

Returns a percent-escaped string following RFC 3986 for a query string key or value.

``` swift
public func escape(_ string: String) -> String 
```

RFC 3986 states that the following characters are "reserved" characters.

  - General Delimiters: ":", "\#", "\[", "\]", "@", "?", "/"

  - Sub-Delimiters: "\!", "$", "&", "'", "(", ")", "\*", "+", ",", ";", "="

In RFC 3986 - Section 3.4, it states that the "?" and "/" characters should not be escaped to allow
query strings to include a URL. Therefore, all "reserved" characters with the exception of "?" and "/"
should be percent-escaped in the query string.

#### Parameters

  - string: The string to be percent-escaped.

#### Returns

The percent-escaped string.

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

### `queryComponents(fromKey:value:)`

Creates percent-escaped, URL encoded query string components from the given key-value pair using recursion.

``` swift
public func queryComponents(fromKey key: String, value: Any) -> [(String, String)] 
```

#### Parameters

  - key: The key of the query component.
  - value: The value of the query component.

#### Returns

The percent-escaped, URL encoded query string components.

### `escape(_:)`

Returns a percent-escaped string following RFC 3986 for a query string key or value.

``` swift
public func escape(_ string: String) -> String 
```

RFC 3986 states that the following characters are "reserved" characters.

  - General Delimiters: ":", "\#", "\[", "\]", "@", "?", "/"

  - Sub-Delimiters: "\!", "$", "&", "'", "(", ")", "\*", "+", ",", ";", "="

In RFC 3986 - Section 3.4, it states that the "?" and "/" characters should not be escaped to allow
query strings to include a URL. Therefore, all "reserved" characters with the exception of "?" and "/"
should be percent-escaped in the query string.

#### Parameters

  - string: The string to be percent-escaped.

#### Returns

The percent-escaped string.

### `encode(_:with:)`

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

### `queryComponents(fromKey:value:)`

Creates a percent-escaped, URL encoded query string components from the given key-value pair recursively.

``` swift
public func queryComponents(fromKey key: String, value: Any) -> [(String, String)] 
```

#### Parameters

  - key: Key of the query component.
  - value: Value of the query component.

#### Returns

The percent-escaped, URL encoded query string components.

### `escape(_:)`

Creates a percent-escaped string following RFC 3986 for a query string key or value.

``` swift
public func escape(_ string: String) -> String 
```

#### Parameters

  - string: `String` to be percent-escaped.

#### Returns

The percent-escaped `String`.

### `encode(_:with:)`

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

### `queryComponents(fromKey:value:)`

Creates a percent-escaped, URL encoded query string components from the given key-value pair recursively.

``` swift
public func queryComponents(fromKey key: String, value: Any) -> [(String, String)] 
```

#### Parameters

  - key: Key of the query component.
  - value: Value of the query component.

#### Returns

The percent-escaped, URL encoded query string components.

### `escape(_:)`

Creates a percent-escaped string following RFC 3986 for a query string key or value.

``` swift
public func escape(_ string: String) -> String 
```

#### Parameters

  - string: `String` to be percent-escaped.

#### Returns

The percent-escaped `String`.

### `encode(_:with:)`

``` swift
public func encode(_ urlRequest: URLRequestConvertible, with parameters: Parameters?) throws -> URLRequest 
```

### `queryComponents(fromKey:value:)`

Creates a percent-escaped, URL encoded query string components from the given key-value pair recursively.

``` swift
public func queryComponents(fromKey key: String, value: Any) -> [(String, String)] 
```

#### Parameters

  - key: Key of the query component.
  - value: Value of the query component.

#### Returns

The percent-escaped, URL encoded query string components.

### `escape(_:)`

Creates a percent-escaped string following RFC 3986 for a query string key or value.

``` swift
public func escape(_ string: String) -> String 
```

#### Parameters

  - string: `String` to be percent-escaped.

#### Returns

The percent-escaped `String`.
