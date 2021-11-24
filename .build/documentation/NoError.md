# NoError

An “error” that is impossible to construct.

``` swift
public enum NoError: Swift.Error, Equatable 
```

This can be used to describe `Result`s where failures will never
be generated. For example, `Result<Int, NoError>` describes a result that
contains an `Int`eger and is guaranteed never to be a `failure`.

## Inheritance

`Equatable`, `Swift.Error`

## Operators

### `==`

``` swift
public static func ==(lhs: NoError, rhs: NoError) -> Bool 
```
