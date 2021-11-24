# DataDecoder

Any type which can decode `Data` into a `Decodable` type.

``` swift
public protocol DataDecoder 
```

## Requirements

### decode(\_:​from:​)

Decode `Data` into the provided type.

``` swift
func decode<D: Decodable>(_ type: D.Type, from data: Data) throws -> D
```

#### Parameters

  - type: The `Type` to be decoded.
  - data: The `Data` to be decoded.

#### Throws

Any error that occurs during decode.

#### Returns

The decoded value of type `D`.

### decode(\_:​from:​)

Decode `Data` into the provided type.

``` swift
func decode<D: Decodable>(_ type: D.Type, from data: Data) throws -> D
```

#### Parameters

  - type: The `Type` to be decoded.
  - data: The `Data` to be decoded.

#### Throws

Any error that occurs during decode.

#### Returns

The decoded value of type `D`.

### decode(\_:​from:​)

Decode `Data` into the provided type.

``` swift
func decode<D: Decodable>(_ type: D.Type, from data: Data) throws -> D
```

#### Parameters

  - type: The `Type` to be decoded.
  - data: The `Data` to be decoded.

#### Throws

Any error that occurs during decode.

#### Returns

The decoded value of type `D`.
