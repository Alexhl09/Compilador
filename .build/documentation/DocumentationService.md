# DocumentationService

A service for processing documentation requests.

``` swift
public protocol DocumentationService 
```

## Requirements

### handlingTypes

The types of messages this service can handle.

``` swift
static var handlingTypes: [DocumentationServer.MessageType] 
```

### process(\_:​completion:​)

Processes the given documentation service message and calls the completion closure with the result as a message.

``` swift
func process(
        _ message: DocumentationServer.Message,
        completion: @escaping (DocumentationServer.Message) -> ()
    )
```
