# CommunicationBridgeError

An error that occurs when using a communication bridge.

``` swift
public enum CommunicationBridgeError: Error 
```

## Inheritance

`Error`

## Enumeration Cases

### `unableToEncodeMessage`

An indication that a message could not be encoded when using a communication bridge.

``` swift
case unableToEncodeMessage(_ message: Message, underlyingError: Error)
```
