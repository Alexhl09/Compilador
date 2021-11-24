# materialize(\_:)

``` swift
public func materialize<T>(_ f: () throws -> T) -> Result<T, AnyError> 
```

# materialize(\_:)

``` swift
public func materialize<T>(_ f: @autoclosure () throws -> T) -> Result<T, AnyError> 
```

# materialize(\_:)

``` swift
@available(*, deprecated, message: "Use the overload which returns `Result<T, AnyError>` instead")
public func materialize<T>(_ f: () throws -> T) -> Result<T, NSError> 
```

# materialize(\_:)

``` swift
@available(*, deprecated, message: "Use the overload which returns `Result<T, AnyError>` instead")
public func materialize<T>(_ f: @autoclosure () throws -> T) -> Result<T, NSError> 
```

# materialize(\_:)

Construct a `Decoded` type from a throwing function.

``` swift
public func materialize<T>(_ f: () throws -> T) -> Decoded<T> 
```

This can be used to move from the world of `throws` into a `Decoded` type. If
the function succeeds, it will wrap the returned value in a minimal context of
`.Success`. Otherwise, it will return a custom error with the thrown error from
the function.

## Parameters

  - f: A function from `Void` to `T` that can `throw` an error

## Returns

A `Decoded` type representing the success or failure of the function
