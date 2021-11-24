# Synchronized

A wrapper type that ensures a synchronous access to a value.

``` swift
public class Synchronized<Value> 
```

To guarantee safe concurrent access to a value wrap it in a `Synchronized` type.

``` swift
let index = Synchronized([String: String]())

// Mutate the value
index.sync { $0["key"] = "value" }
// Access the value
let value = index.sync { $0["key"] }
```

## Initializers

### `init(_:)`

Creates a new synchronization over the given value.

``` swift
public init(_ value: Value) 
```

#### Parameters

  - value: A value that requires synchronous access.

## Methods

### `sync(_:)`

Performs a given block of code while synchronizing over the type's stored value.

``` swift
@discardableResult
    public func sync<Result>(_ block: (inout Value) throws -> Result) rethrows -> Result 
```

#### Parameters

  - block: A throwing block of work that optionally returns a value.

#### Returns

Returns the returned value of `block`, if any.
