# URLEncodedFormEncoder

An object that encodes instances into URL-encoded query strings.

``` swift
public final class URLEncodedFormEncoder 
```

There is no published specification for how to encode collection types. By default, the convention of appending
`[]` to the key for array values (`foo[]=1&foo[]=2`), and appending the key surrounded by square brackets for
nested dictionary values (`foo[bar]=baz`) is used. Optionally, `ArrayEncoding` can be used to omit the
square brackets appended to array keys.

`BoolEncoding` can be used to configure how `Bool` values are encoded. The default behavior is to encode
`true` as 1 and `false` as 0.

`DateEncoding` can be used to configure how `Date` values are encoded. By default, the `.deferredToDate`
strategy is used, which formats dates from their structure.

`SpaceEncoding` can be used to configure how spaces are encoded. Modern encodings use percent replacement (`%20`),
while older encodings may expect spaces to be replaced with `+`.

This type is largely based on Vapor's [`url-encoded-form`](https://github.com/vapor/url-encoded-form) project.

## Initializers

### `init(alphabetizeKeyValuePairs:arrayEncoding:boolEncoding:dataEncoding:dateEncoding:keyEncoding:spaceEncoding:allowedCharacters:)`

Creates an instance from the supplied parameters.

``` swift
public init(alphabetizeKeyValuePairs: Bool = true,
                arrayEncoding: ArrayEncoding = .brackets,
                boolEncoding: BoolEncoding = .numeric,
                dataEncoding: DataEncoding = .base64,
                dateEncoding: DateEncoding = .deferredToDate,
                keyEncoding: KeyEncoding = .useDefaultKeys,
                spaceEncoding: SpaceEncoding = .percentEscaped,
                allowedCharacters: CharacterSet = .afURLQueryAllowed) 
```

#### Parameters

  - alphabetizeKeyValuePairs: Whether or not to sort the encoded key value pairs. `true` by default.
  - arrayEncoding: The `ArrayEncoding` to use. `.brackets` by default.
  - boolEncoding: The `BoolEncoding` to use. `.numeric` by default.
  - dataEncoding: The `DataEncoding` to use. `.base64` by default.
  - dateEncoding: The `DateEncoding` to use. `.deferredToDate` by default.
  - keyEncoding: The `KeyEncoding` to use. `.useDefaultKeys` by default.
  - spaceEncoding: The `SpaceEncoding` to use. `.percentEscaped` by default.
  - allowedCharacters: The `CharacterSet` of allowed (non-escaped) characters. `.afURLQueryAllowed` by default.

### `init(alphabetizeKeyValuePairs:arrayEncoding:boolEncoding:dataEncoding:dateEncoding:keyEncoding:spaceEncoding:allowedCharacters:)`

Creates an instance from the supplied parameters.

``` swift
public init(alphabetizeKeyValuePairs: Bool = true,
                arrayEncoding: ArrayEncoding = .brackets,
                boolEncoding: BoolEncoding = .numeric,
                dataEncoding: DataEncoding = .base64,
                dateEncoding: DateEncoding = .deferredToDate,
                keyEncoding: KeyEncoding = .useDefaultKeys,
                spaceEncoding: SpaceEncoding = .percentEscaped,
                allowedCharacters: CharacterSet = .afURLQueryAllowed) 
```

#### Parameters

  - alphabetizeKeyValuePairs: Whether or not to sort the encoded key value pairs. `true` by default.
  - arrayEncoding: The `ArrayEncoding` to use. `.brackets` by default.
  - boolEncoding: The `BoolEncoding` to use. `.numeric` by default.
  - dataEncoding: The `DataEncoding` to use. `.base64` by default.
  - dateEncoding: The `DateEncoding` to use. `.deferredToDate` by default.
  - keyEncoding: The `KeyEncoding` to use. `.useDefaultKeys` by default.
  - spaceEncoding: The `SpaceEncoding` to use. `.percentEscaped` by default.
  - allowedCharacters: The `CharacterSet` of allowed (non-escaped) characters. `.afURLQueryAllowed` by default.

### `init(alphabetizeKeyValuePairs:arrayEncoding:boolEncoding:dataEncoding:dateEncoding:keyEncoding:spaceEncoding:allowedCharacters:)`

Creates an instance from the supplied parameters.

``` swift
public init(alphabetizeKeyValuePairs: Bool = true,
                arrayEncoding: ArrayEncoding = .brackets,
                boolEncoding: BoolEncoding = .numeric,
                dataEncoding: DataEncoding = .base64,
                dateEncoding: DateEncoding = .deferredToDate,
                keyEncoding: KeyEncoding = .useDefaultKeys,
                spaceEncoding: SpaceEncoding = .percentEscaped,
                allowedCharacters: CharacterSet = .afURLQueryAllowed) 
```

#### Parameters

  - alphabetizeKeyValuePairs: Whether or not to sort the encoded key value pairs. `true` by default.
  - arrayEncoding: The `ArrayEncoding` to use. `.brackets` by default.
  - boolEncoding: The `BoolEncoding` to use. `.numeric` by default.
  - dataEncoding: The `DataEncoding` to use. `.base64` by default.
  - dateEncoding: The `DateEncoding` to use. `.deferredToDate` by default.
  - keyEncoding: The `KeyEncoding` to use. `.useDefaultKeys` by default.
  - spaceEncoding: The `SpaceEncoding` to use. `.percentEscaped` by default.
  - allowedCharacters: The `CharacterSet` of allowed (non-escaped) characters. `.afURLQueryAllowed` by default.

## Properties

### `alphabetizeKeyValuePairs`

Whether or not to sort the encoded key value pairs.

``` swift
public let alphabetizeKeyValuePairs: Bool
```

> 

### `arrayEncoding`

The `ArrayEncoding` to use.

``` swift
public let arrayEncoding: ArrayEncoding
```

### `boolEncoding`

The `BoolEncoding` to use.

``` swift
public let boolEncoding: BoolEncoding
```

### `dataEncoding`

THe `DataEncoding` to use.

``` swift
public let dataEncoding: DataEncoding
```

### `dateEncoding`

The `DateEncoding` to use.

``` swift
public let dateEncoding: DateEncoding
```

### `keyEncoding`

The `KeyEncoding` to use.

``` swift
public let keyEncoding: KeyEncoding
```

### `spaceEncoding`

The `SpaceEncoding` to use.

``` swift
public let spaceEncoding: SpaceEncoding
```

### `allowedCharacters`

The `CharacterSet` of allowed (non-escaped) characters.

``` swift
public var allowedCharacters: CharacterSet
```

### `alphabetizeKeyValuePairs`

Whether or not to sort the encoded key value pairs.

``` swift
public let alphabetizeKeyValuePairs: Bool
```

> 

### `arrayEncoding`

The `ArrayEncoding` to use.

``` swift
public let arrayEncoding: ArrayEncoding
```

### `boolEncoding`

The `BoolEncoding` to use.

``` swift
public let boolEncoding: BoolEncoding
```

### `dataEncoding`

THe `DataEncoding` to use.

``` swift
public let dataEncoding: DataEncoding
```

### `dateEncoding`

The `DateEncoding` to use.

``` swift
public let dateEncoding: DateEncoding
```

### `keyEncoding`

The `KeyEncoding` to use.

``` swift
public let keyEncoding: KeyEncoding
```

### `spaceEncoding`

The `SpaceEncoding` to use.

``` swift
public let spaceEncoding: SpaceEncoding
```

### `allowedCharacters`

The `CharacterSet` of allowed (non-escaped) characters.

``` swift
public var allowedCharacters: CharacterSet
```

### `alphabetizeKeyValuePairs`

Whether or not to sort the encoded key value pairs.

``` swift
public let alphabetizeKeyValuePairs: Bool
```

> 

### `arrayEncoding`

The `ArrayEncoding` to use.

``` swift
public let arrayEncoding: ArrayEncoding
```

### `boolEncoding`

The `BoolEncoding` to use.

``` swift
public let boolEncoding: BoolEncoding
```

### `dataEncoding`

THe `DataEncoding` to use.

``` swift
public let dataEncoding: DataEncoding
```

### `dateEncoding`

The `DateEncoding` to use.

``` swift
public let dateEncoding: DateEncoding
```

### `keyEncoding`

The `KeyEncoding` to use.

``` swift
public let keyEncoding: KeyEncoding
```

### `spaceEncoding`

The `SpaceEncoding` to use.

``` swift
public let spaceEncoding: SpaceEncoding
```

### `allowedCharacters`

The `CharacterSet` of allowed (non-escaped) characters.

``` swift
public var allowedCharacters: CharacterSet
```

## Methods

### `encode(_:)`

Encodes the `value` as a URL form encoded `String`.

``` swift
public func encode(_ value: Encodable) throws -> String 
```

#### Parameters

  - value: The `Encodable` value.\`

#### Throws

An `Error` or `EncodingError` instance if encoding fails.

#### Returns

The encoded `String`.

### `encode(_:)`

Encodes the value as `Data`. This is performed by first creating an encoded `String` and then returning the
`.utf8` data.

``` swift
public func encode(_ value: Encodable) throws -> Data 
```

#### Parameters

  - value: The `Encodable` value.

#### Throws

An `Error` or `EncodingError` instance if encoding fails.

#### Returns

The encoded `Data`.

### `encode(_:)`

Encodes the `value` as a URL form encoded `String`.

``` swift
public func encode(_ value: Encodable) throws -> String 
```

#### Parameters

  - value: The `Encodable` value.\`

#### Throws

An `Error` or `EncodingError` instance if encoding fails.

#### Returns

The encoded `String`.

### `encode(_:)`

Encodes the value as `Data`. This is performed by first creating an encoded `String` and then returning the
`.utf8` data.

``` swift
public func encode(_ value: Encodable) throws -> Data 
```

#### Parameters

  - value: The `Encodable` value.

#### Throws

An `Error` or `EncodingError` instance if encoding fails.

#### Returns

The encoded `Data`.

### `encode(_:)`

Encodes the `value` as a URL form encoded `String`.

``` swift
public func encode(_ value: Encodable) throws -> String 
```

#### Parameters

  - value: The `Encodable` value.\`

#### Throws

An `Error` or `EncodingError` instance if encoding fails.

#### Returns

The encoded `String`.

### `encode(_:)`

Encodes the value as `Data`. This is performed by first creating an encoded `String` and then returning the
`.utf8` data.

``` swift
public func encode(_ value: Encodable) throws -> Data 
```

#### Parameters

  - value: The `Encodable` value.

#### Throws

An `Error` or `EncodingError` instance if encoding fails.

#### Returns

The encoded `Data`.
