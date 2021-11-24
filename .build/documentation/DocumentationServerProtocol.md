# DocumentationServerProtocol

Protocol for request-response based servers.

``` swift
public protocol DocumentationServerProtocol 
```

## Requirements

### process(\_:​completion:​)

Processes the given message and responds using the given completion closure.

``` swift
func process(_ message: Data, completion: @escaping (Data) -> ())
```
