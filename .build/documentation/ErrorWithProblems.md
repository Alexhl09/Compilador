# ErrorWithProblems

An error that contains a list of problems.

``` swift
@available(*, deprecated)
public struct ErrorWithProblems: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Initializers

### `init(_:)`

Creates a new error with the given problems.

``` swift
public init(_ problems: [Problem]) 
```

## Properties

### `errorDescription`

``` swift
public var errorDescription: String 
```
