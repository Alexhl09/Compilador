# DocumentationServer

A server that provides documentation-related services.

``` swift
public class DocumentationServer: DocumentationServerProtocol 
```

A documentation server receives `Message` values (encoded in JSON format) from clients and
forwards them to the appropriate `DocumentationService` depending on their
`Message/type`. Documentation services declare what message types they handle and clients
register documentation services using the `register(service:)` function.

## Inheritance

[`DocumentationServerProtocol`](/DocumentationServerProtocol)

## Initializers

### `init(qualityOfService:)`

Creates a server that processes messages using the given quality of service.

``` swift
public init(qualityOfService: DispatchQoS = .unspecified) 
```

## Properties

### `services`

The services provided by the server.

``` swift
public var services: [DocumentationServer.MessageType: DocumentationService] = [:]
```

### `synchronizationQueue`

Synchronization queue used for server operations.

``` swift
public var synchronizationQueue: DispatchQueue
```

Operations on the server, for example registering new services or processing messages, are performed on this queue.

## Methods

### `createDefaultServer(qualityOfService:peer:)`

Creates a server configured with default services.

``` swift
static func createDefaultServer(
        qualityOfService: DispatchQoS,
        peer: DocumentationServer?
    ) -> DocumentationServer 
```

#### Parameters

  - qualityOfService: The quality of service for the server's dispatch queue.
  - peer: A peer server that can be used to perform outgoing requests.

### `register(service:)`

Registers the given service.

``` swift
public func register<S : DocumentationService>(service: S) 
```

The server registers the service for its declared handling message types. Message types that
already have a service registered will now use the new service instead.

#### Parameters

  - service: The service to register.

### `process(_:completion:)`

Processes the given message and responds using the given completion closure.

``` swift
public func process(_ message: Data, completion: @escaping (Data) -> ()) 
```

The given message is expected to be a `Message`, encoded as JSON. If the server cannot
decode the message, the completion closure is called with a `DocumentationServerError` message of type
"unsupported-message-type", encoded in JSON format.

Once decoded, the server uses the message's type to determine a service that can handle the message. If no service can
handle the message, the completion closure is called with a `DocumentationServerError` message of type
"invalid-message", encoded in JSON format.

#### Parameters

  - message: The message the server should process.
  - completion: The closure the server calls when the message has been processed.
