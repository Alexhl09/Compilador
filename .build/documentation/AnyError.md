# AnyError

A type-erased error which wraps an arbitrary error instance. This should be
useful for generic contexts.

``` swift
public struct AnyError: Swift.Error 
```

## Inheritance

`CustomStringConvertible`, [`ErrorProtocolConvertible`](/ErrorProtocolConvertible), `Swift.Error`

## Initializers

### `init(_:)`

``` swift
public init(_ error: Swift.Error) 
```

## Properties

### `error`

The underlying error.

``` swift
public let error: Swift.Error
```

### `description`

``` swift
public var description: String 
```

## Methods

### `error(from:)`

``` swift
public static func error(from error: Error) -> AnyError 
```
