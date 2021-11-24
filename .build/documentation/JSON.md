# JSON

A type safe representation of JSON.

``` swift
public enum JSON 
```

## Inheritance

`Codable`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, [`Decodable`](/Decodable), [`Decodable`](/Decodable), [`Decodable`](/Decodable)

## Initializers

### `init(_:)`

Transform an `Any` instance into `JSON`.

``` swift
init(_ json: Any) 
```

This is used to move from a loosely typed object (like those returned from
`NSJSONSerialization`) to the strongly typed `JSON` tree structure.

#### Parameters

  - json: A loosely typed object

### `init(_:)`

Transform an `Any` instance into `JSON`.

``` swift
init(_ json: Any) 
```

This is used to move from a loosely typed object (like those returned from
`NSJSONSerialization`) to the strongly typed `JSON` tree structure.

#### Parameters

  - json: A loosely typed object

### `init(_:)`

Transform an `Any` instance into `JSON`.

``` swift
init(_ json: Any) 
```

This is used to move from a loosely typed object (like those returned from
`NSJSONSerialization`) to the strongly typed `JSON` tree structure.

#### Parameters

  - json: A loosely typed object

## Enumeration Cases

### `object`

``` swift
case object([String: JSON])
```

### `array`

``` swift
case array([JSON])
```

### `string`

``` swift
case string(String)
```

### `number`

``` swift
case number(NSNumber)
```

### `bool`

``` swift
case bool(Bool)
```

### `null`

``` swift
case null
```

## Properties

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

## Methods

### `decode(_:)`

Decode `JSON` into `Decoded<JSON>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<JSON> 
```

This simply wraps the provided `JSON` in `.Success`. This is useful because
it means we can use `JSON` values with the `<|` family of operators to pull
out sub-keys.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

The provided `JSON` wrapped in `.Success`

### `decode(_:)`

Decode `JSON` into `Decoded<JSON>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<JSON> 
```

This simply wraps the provided `JSON` in `.Success`. This is useful because
it means we can use `JSON` values with the `<|` family of operators to pull
out sub-keys.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

The provided `JSON` wrapped in `.Success`

### `decode(_:)`

Decode `JSON` into `Decoded<JSON>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<JSON> 
```

This simply wraps the provided `JSON` in `.Success`. This is useful because
it means we can use `JSON` values with the `<|` family of operators to pull
out sub-keys.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

The provided `JSON` wrapped in `.Success`

### `compare(lhs:rhs:diff:path:)`

Compares two `JSON` values recursively and produces detailed summary.

``` swift
public static func compare(lhs: JSON, rhs: JSON, diff: inout [String], path: [String] = [""]) -> Bool 
```
