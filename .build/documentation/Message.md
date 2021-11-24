# Message

A message to send or receive from a documentation renderer using a communication bridge.

``` swift
public struct Message 
```

## Inheritance

`Codable`, `Codable`, `Content`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

### `init(type:data:identifier:)`

Creates a message given a type, a data payload, and an identifier.

``` swift
public init(type: MessageType, data: AnyCodable?, identifier: String?) 
```

#### Parameters

  - type: The type of the message.
  - data: The data payload of the message.
  - identifier: The identifier of the message.

## Properties

### `type`

The type of the message.

``` swift
public var type: MessageType
```

Clients can use the type of the message to determine which handler to invoke.

### `data`

The payload of the message.

``` swift
public var data: AnyCodable?
```

The data associated with a message is encodable, so a communication bridge can encode it when a client sends a
message.

### `identifier`

An identifier for the message.

``` swift
public var identifier: String?
```

The identifier helps clients keep track of which messages they've received, and messages for which they're awaiting a
response in a request-response model.

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```

### `generateUUID()`

Generates a unique string identifier for a message.

``` swift
public static func generateUUID() -> String 
```

### `rendered(identifier:)`

Creates a message that indicates a renderer has finished rendering documentation content.

``` swift
public static func rendered(identifier: String = generateUUID()) -> Message 
```

The string value of this message type is `rendered`.

### `requestCodeColors(identifier:)`

Creates a message that indicates a request for code-color preferences.

``` swift
public static func requestCodeColors(identifier: String = generateUUID()) -> Message 
```

This message is sent by renderer to request code-color preferences that renderers use when syntax highlighting code listings.
The string value of this message type is `requestCodeColors`.

### `codeColors(_:identifier:)`

Creates a message that indicates what code colors a renderer uses to syntax highlight code listings.

``` swift
public static func codeColors(_ codeColors: CodeColors, identifier: String = generateUUID()) -> Message 
```

A "codeColors" message is sent as a response to a `requestCodeColors` message and provides code colors
preferences that a renderer uses when syntax highlighting code. The string value of this message type is `codeColors`.

#### Parameters

  - codeColors: The code colors information that a renderer uses to syntax highlight code listings.
  - identifier: An identifier for the message.
