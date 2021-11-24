# MessageType

A description of the intent of a communication-bridge message.

``` swift
public struct MessageType: Codable, RawRepresentable, Hashable, CustomDebugStringConvertible 
```

Clients can use the type of the message to determine which handler to invoke.

> 

## Inheritance

`Codable`, `CustomDebugStringConvertible`, `Hashable`, `RawRepresentable`

## Initializers

### `init(rawValue:)`

Creates a type from a raw value.

``` swift
public init(rawValue: String) 
```

## Properties

### `rawValue`

``` swift
public var rawValue: String
```

### `rendered`

A message that indicates a renderer has finished rendering documentation content.

``` swift
public static let rendered 
```

### `requestCodeColors`

A message that indicates a request for code-color preferences.

``` swift
public static let requestCodeColors 
```

Use code-color preferences to control how a renderer syntax highlighted code listings.

### `codeColors`

A message that indicates what code colors a renderer uses to syntax highlight code listings.

``` swift
public static let codeColors 
```

### `debugDescription`

``` swift
public var debugDescription: String 
```
