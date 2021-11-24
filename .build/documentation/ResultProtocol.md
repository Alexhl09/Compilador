# ResultProtocol

A type that can represent either failure with an error or success with a result value.

``` swift
public protocol ResultProtocol 
```

## Default Implementations

### `value`

Returns the value if self represents a success, `nil` otherwise.

``` swift
public var value: Value? 
```

### `error`

Returns the error if self represents a failure, `nil` otherwise.

``` swift
public var error: Error? 
```

### `map(_:)`

Returns a new Result by mapping `Success`es’ values using `transform`, or re-wrapping `Failure`s’ errors.

``` swift
public func map<U>(_ transform: (Value) -> U) -> Result<U, Error> 
```

### `flatMap(_:)`

Returns the result of applying `transform` to `Success`es’ values, or re-wrapping `Failure`’s errors.

``` swift
public func flatMap<U>(_ transform: (Value) -> Result<U, Error>) -> Result<U, Error> 
```

### `mapError(_:)`

Returns a new Result by mapping `Failure`'s values using `transform`, or re-wrapping `Success`es’ values.

``` swift
public func mapError<Error2>(_ transform: (Error) -> Error2) -> Result<Value, Error2> 
```

### `flatMapError(_:)`

Returns the result of applying `transform` to `Failure`’s errors, or re-wrapping `Success`es’ values.

``` swift
public func flatMapError<Error2>(_ transform: (Error) -> Result<Value, Error2>) -> Result<Value, Error2> 
```

### `recover(_:)`

Returns `self.value` if this result is a .Success, or the given value otherwise. Equivalent with `??`

``` swift
public func recover(_ value: @autoclosure () -> Value) -> Value 
```

### `recover(with:)`

Returns this result if it is a .Success, or the given result otherwise. Equivalent with `??`

``` swift
public func recover(with result: @autoclosure () -> Self) -> Self 
```

### `tryMap(_:)`

Returns the result of applying `transform` to `Success`es’ values, or wrapping thrown errors.

``` swift
public func tryMap<U>(_ transform: (Value) throws -> U) -> Result<U, Error> 
```

### `recoverWith(_:)`

``` swift
@available(*, unavailable, renamed: "recover(with:)")
	public func recoverWith(_ result: @autoclosure () -> Self) -> Self 
```

## Requirements

### Value

``` swift
associatedtype Value
```

### Error

``` swift
associatedtype Error: Swift.Error
```

### init(value:​)

Constructs a successful result wrapping a `value`.

``` swift
init(value: Value)
```

### init(error:​)

Constructs a failed result wrapping an `error`.

``` swift
init(error: Error)
```

### analysis(ifSuccess:​ifFailure:​)

Case analysis for ResultProtocol.

``` swift
func analysis<U>(ifSuccess: (Value) -> U, ifFailure: (Error) -> U) -> U
```

Returns the value produced by appliying `ifFailure` to the error if self represents a failure, or `ifSuccess` to the result value if self represents a success.

### value

Returns the value if self represents a success, `nil` otherwise.

``` swift
var value: Value? 
```

A default implementation is provided by a protocol extension. Conforming types may specialize it.

### error

Returns the error if self represents a failure, `nil` otherwise.

``` swift
var error: Error? 
```

A default implementation is provided by a protocol extension. Conforming types may specialize it.
