# ConvertService

A service that converts documentation.

``` swift
public struct ConvertService: DocumentationService 
```

This service accepts in-memory documentation data with a `ConvertRequest` and returns the conversion's build products
such as the produced render nodes.

## Inheritance

[`DocumentationService`](/DocumentationService)

## Initializers

### `init(linkResolvingServer:)`

Creates a conversion service, which converts in-memory documentation data.

``` swift
public init(linkResolvingServer: DocumentationServer? = nil) 
```

## Properties

### `convertMessageType`

The message type that this service accepts.

``` swift
public static let convertMessageType: DocumentationServer.MessageType = "convert"
```

### `convertResponseMessageType`

The message type that this service responds with when the requested conversion was successful.

``` swift
public static
    let convertResponseMessageType: DocumentationServer.MessageType = "convert-response"
```

### `convertResponseErrorMessageType`

The message type that this service responds with when the requested conversion failed.

``` swift
public static
    let convertResponseErrorMessageType: DocumentationServer.MessageType = "convert-response-error"
```

### `handlingTypes`

``` swift
public static var handlingTypes = [convertMessageType]
```

## Methods

### `process(_:completion:)`

``` swift
public func process(
        _ message: DocumentationServer.Message,
        completion: @escaping (DocumentationServer.Message) -> ()
    ) 
```
