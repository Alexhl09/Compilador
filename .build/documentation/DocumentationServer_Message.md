# DocumentationServer.Message

A message that can be provided to a documentation service.

``` swift
struct Message: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(type:identifier:payload:)`

Creates a documentation service message.

``` swift
public init(
            type: MessageType,
            identifier: String = Self.randomIdentifierGenerator(),
            payload: Data?
        ) 
```

#### Parameters

  - type: The type of the message, which is used to determine which service should process the message.
  - identifier: The identifier of the message. By default, a random UUID string is created.
  - payload: The payload of the message, encoded in the format its handling service expects.

### `init(type:clientName:payload:)`

Creates a documentation service message.

``` swift
public init(type: MessageType, clientName: String, payload: Data?) 
```

#### Parameters

  - type: The type of the message, which is used to determine which service should process the message.
  - clientName: The name of the client creating this message, which this initializer uses as a prefix for the message's identifier.
  - payload: The payload of the message, encoded in the format its handling service expects.

## Properties

### `type`

The type of the message.

``` swift
public var type: MessageType
```

The message type is used to determine which service should process the message.

### `identifier`

The identifier of the message.

``` swift
public var identifier: String
```

### `payload`

The payload of the message.

``` swift
public var payload: Data?
```

The payload's encoding format is determine by the service that processes messages of its type.

### `randomIdentifierGenerator`

Closure that generates a random identifier.

``` swift
public static var randomIdentifierGenerator: () -> String 
```
