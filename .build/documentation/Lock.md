# Extensions on Lock

## Initializers

### `init()`

Creates a new lock.

``` swift
convenience init() 
```

## Methods

### `sync(_:)`

``` swift
@discardableResult
    func sync<Result>(_ block: () throws -> Result) rethrows -> Result 
```
