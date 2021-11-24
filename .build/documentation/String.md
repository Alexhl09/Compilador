# Extensions on String

## Initializers

### `init?(data:)`

``` swift
public init?(data: UnsafeRawBufferPointer) 
```

## Properties

### `plainText`

``` swift
var plainText: String 
```

## Methods

### `read(_:)`

``` swift
public func read<ResultType>(_ body: (UnsafeRawBufferPointer) throws -> ResultType) rethrows -> ResultType 
```

### `asURL()`

Returns a URL if `self` represents a valid URL string that conforms to RFC 2396 or throws an `AFError`.

``` swift
public func asURL() throws -> URL 
```

#### Throws

An `AFError.invalidURL` if `self` is not a valid URL string.

#### Returns

A URL or throws an `AFError`.

### `asURL()`

Returns a `URL` if `self` can be used to initialize a `URL` instance, otherwise throws.

``` swift
public func asURL() throws -> URL 
```

#### Throws

An `AFError.invalidURL` instance.

#### Returns

The `URL` initialized with `self`.

### `asURL()`

Returns a `URL` if `self` can be used to initialize a `URL` instance, otherwise throws.

``` swift
public func asURL() throws -> URL 
```

#### Throws

An `AFError.invalidURL` instance.

#### Returns

The `URL` initialized with `self`.

### `asURL()`

Returns a `URL` if `self` can be used to initialize a `URL` instance, otherwise throws.

``` swift
public func asURL() throws -> URL 
```

#### Throws

An `AFError.invalidURL` instance.

#### Returns

The `URL` initialized with `self`.

### `asURL()`

Returns a URL if `self` represents a valid URL string that conforms to RFC 2396 or throws an `AFError`.

``` swift
public func asURL() throws -> URL 
```

#### Throws

An `AFError.invalidURL` if `self` is not a valid URL string.

#### Returns

A URL or throws an `AFError`.

### `asURL()`

Returns a URL if `self` represents a valid URL string that conforms to RFC 2396 or throws an `AFError`.

``` swift
public func asURL() throws -> URL 
```

#### Throws

An `AFError.invalidURL` if `self` is not a valid URL string.

#### Returns

A URL or throws an `AFError`.

### `decode(_:)`

Decode `JSON` into `Decoded<String>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<String> 
```

Succeeds if the value is a string, otherwise it returns a type mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded `String` value
