# JSONPointer

A pointer to a specific value in a JSON document.

``` swift
public struct JSONPointer: Codable, CustomStringConvertible 
```

For more information, see [RFC6901](https://datatracker.ietf.org/doc/html/rfc6901).

## Inheritance

`Codable`, `CustomStringConvertible`

## Initializers

### `init(pathComponents:)`

Creates a JSON Pointer given its path components.

``` swift
public init<Components: Sequence>(pathComponents: Components) where Components.Element == String 
```

The components are assumed to be properly escaped per [RFC6901](https://datatracker.ietf.org/doc/html/rfc6901).

### `init(from:)`

Creates a JSON pointer given a coding path.

``` swift
public init(from codingPath: [CodingKey]) 
```

Use this initializer when creating JSON pointers during encoding. This initializer escapes components as defined by
[RFC6901](https://datatracker.ietf.org/doc/html/rfc6901).

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `pathComponents`

The path components of the pointer.

``` swift
public var pathComponents: [String]
```

The path components of the pointer are not escaped.

### `description`

``` swift
public var description: String 
```

## Methods

### `removingFirstPathComponent()`

Returns the pointer with the first path component removed.

``` swift
public func removingFirstPathComponent() -> JSONPointer 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
