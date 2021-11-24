# DocumentationServer.MessageType

A type of service message.

``` swift
struct MessageType: Codable, RawRepresentable, Hashable, CustomDebugStringConvertible,
                               ExpressibleByStringLiteral, Equatable 
```

The type of a service message is used to determine which service a server should invoke to process the message.

## Inheritance

`Codable`, `CustomDebugStringConvertible`, `Equatable`, `ExpressibleByStringLiteral`, `Hashable`, `RawRepresentable`

## Initializers

### `init(rawValue:)`

Creates a type from its string representation.

``` swift
public init(rawValue: String) 
```

### `init(stringLiteral:)`

``` swift
public init(stringLiteral value: StringLiteralType) 
```

## Properties

### `rawValue`

The string representation of the message.

``` swift
public var rawValue: String
```

### `error`

A type used to indicate error messages.

``` swift
public static let error 
```

### `debugDescription`

``` swift
public var debugDescription: String 
```
