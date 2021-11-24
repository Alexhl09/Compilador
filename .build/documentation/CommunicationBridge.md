# CommunicationBridge

A bridge that provides bi-directional communication with a documentation renderer.

``` swift
public protocol CommunicationBridge 
```

Use a communication bridge to send and receive messages between an IDE and an embedded documentation renderer.

## Requirements

### SendHandler

Handler for sending messages.

``` swift
associatedtype SendHandler
```

### onReceiveMessage

A closure that the communication bridge calls when it receives a message.

``` swift
var onReceiveMessage: ((Message) -> ())? 
```

### send(\_:​using:​)

Sends a message to the documentation renderer using the given handler.

``` swift
func send(_ message: Message, using handler: SendHandler) throws
```

#### Parameters

  - message: The message to send to the renderer.
  - handler: A closure that performs the sending operation.

#### Throws

Throws a `CommunicationBridgeError.unableToEncodeMessage` if the given message could not be encoded.
