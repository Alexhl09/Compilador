# ErrorProtocolConvertible

Protocol used to constrain `tryMap` to `Result`s with compatible `Error`s.

``` swift
public protocol ErrorProtocolConvertible: Swift.Error 
```

## Inheritance

`Swift.Error`

## Default Implementations

### `errorFromErrorType(_:)`

``` swift
@available(*, unavailable, renamed: "error(from:)")
	public static func errorFromErrorType(_ error: Swift.Error) -> Self 
```

## Requirements

### error(from:​)

``` swift
static func error(from error: Swift.Error) -> Self
```
