# WebKitCommunicationBridge

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Provides bi-directional communication with a documentation renderer via JavaScript calls in a web view.

``` swift
public struct WebKitCommunicationBridge: CommunicationBridge 
```

</dd>
</dl>

## Inheritance

[`CommunicationBridge`](/CommunicationBridge)

## Initializers

### `init(with:onReceiveMessage:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Creates a communication bridge configured with the given controller to receive messages.

``` swift
public init(
        with contentController: WKUserContentController? = nil,
        onReceiveMessage: ((Message) -> ())? = nil
    ) 
```

#### Parameters

  - contentController: The controller that receives messages. Set to `nil` if  you need the communication bridge to ignore received messages.
  - onReceiveMessage: The handler that the communication bridge calls when it receives a message. Set to `nil` if you need the communication bridge to ignore received messages.

</dd>
</dl>

## Properties

### `onReceiveMessage`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

``` swift
public var onReceiveMessage: ((Message) -> ())? = nil
```

</dd>
</dl>

## Methods

### `send(_:using:)`

<dl>
<dt><code>canImport(WebKit)</code></dt>
<dd>

Sends a message using the given handler using the JSON format.

``` swift
public func send(
        _ message: Message,
        using evaluateJavaScript: (String, ((Any?, Error?) -> ())?) -> ()
    ) throws 
```

#### Parameters

  - message: The message to send.
  - evaluateJavaScript: A handler that the communication bridge uses to send the given message, encoded in JSON.

#### Throws

Throws a `CommunicationBridgeError/unableToEncodeMessage(_:​underlyingError:​)` if the communication bridge could not encode the given message to JSON.

</dd>
</dl>
