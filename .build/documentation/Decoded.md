# Decoded

The result of a failable decoding operation.

``` swift
public enum Decoded<T> 
```

## Inheritance

`CustomStringConvertible`

## Enumeration Cases

### `success`

``` swift
case success(T)
```

### `failure`

``` swift
case failure(DecodeError)
```

## Properties

### `value`

Get the unwrapped value as an `Optional`.

``` swift
var value: T? 
```

#### Returns

The unwrapped value if it exists, otherwise `.None`

### `error`

Get the error value as an `Optional`.

``` swift
var error: DecodeError? 
```

#### Returns

The unwrapped error if it exists, otherwise `.None`

### `description`

``` swift
public var description: String 
```

## Methods

### `or(_:)`

Return `self` if it is `.Success`, otherwise return the provided default
value.

``` swift
func or(_ other: @autoclosure () -> Decoded<T>) -> Decoded<T> 
```

  - If `self` is `.Success`, this will return `self`.

  - If `self` is `.Failure`, this will return the default.

#### Parameters

  - other: A value of type `Decoded<T>`

#### Returns

A value of type `Decoded<T>`

### `apply(_:)`

Conditionally apply a `Decoded` function to `self`.

``` swift
func apply<U>(_ f: Decoded<(T) -> U>) -> Decoded<U> 
```

  - If either the function or `self` are `.Failure`, this will return
    `.Failure`. The function's `.Failure` takes precedence here, and will be
    returned first. If the function is `.Success` and `self` is `.Failure`,
    then `self`'s `.Failure` will be returned.

  - If both the function and `self` are `.Success`, this will return
    the result of the function applied to the unwrapped value.

#### Parameters

  - f: A `Decoded` transformation function from type `T` to type `U`

#### Returns

A value of type `Decoded<U>`

### `optional(_:)`

Convert a `Decoded` type into a `Decoded` `Optional` type.

``` swift
static func optional<T>(_ x: Decoded<T>) -> Decoded<T?> 
```

This is useful for when a decode operation should be allowed to fail, such
as when decoding an optional property.

#### Parameters

  - x: A `Decoded` type

#### Returns

The `Decoded` type with any failure converted to `.success(.none)`

### `fromOptional(_:)`

Convert an `Optional` into a `Decoded` value.

``` swift
static func fromOptional<T>(_ x: T?) -> Decoded<T> 
```

If the provided optional is `.Some`, this method extracts the value and
wraps it in `.Success`. Otherwise, it returns a `.TypeMismatch` error.

#### Returns

The provided `Optional` value transformed into a `Decoded` value

### `typeMismatch(expected:actual:)`

Convenience function for creating `.TypeMismatch` errors.

``` swift
static func typeMismatch<T, U>(expected: String, actual: U) -> Decoded<T> 
```

#### Parameters

  - expected: A string describing the expected type
  - actual: A string describing the actual type

#### Returns

A `Decoded.Failure` with a `.TypeMismatch` error constructed from the provided `expected` and `actual` values

### `missingKey(_:)`

Convenience function for creating `.MissingKey` errors.

``` swift
static func missingKey<T>(_ name: String) -> Decoded<T> 
```

#### Parameters

  - name: The name of the missing key

#### Returns

A `Decoded.Failure` with a `.MissingKey` error constructed from the provided `name` value

### `customError(_:)`

Convenience function for creating `.Custom` errors

``` swift
static func customError<T>(_ message: String) -> Decoded<T> 
```

#### Parameters

  - message: The custom error message

#### Returns

A `Decoded.Failure` with a `.Custom` error constructed from the provided `message` value

### `multipleErrors(errors:)`

Convenience function for creating `.Multiple` errors

``` swift
static func multipleErrors<T>(errors: [DecodeError]) -> Decoded<T> 
```

#### Parameters

  - errors: The errors

#### Returns

A `Decoded.Failure` with a `.Multiple` error constructed from the provided `errors` value

### `dematerialize()`

Extract the `.Success` value or throw an error.

``` swift
func dematerialize() throws -> T 
```

This can be used to move from `Decoded` types into the world of `throws`.
If the value exists, this will return it. Otherwise, it will throw the error
information.

#### Throws

`DecodeError` if `self` is `.Failure`

#### Returns

The unwrapped value

### `map(_:)`

Conditionally map a function over `self`.

``` swift
func map<U>(_ f: (T) -> U) -> Decoded<U> 
```

  - If `self` is `.Failure`, the function will not be evaluated and this will
    return `.Failure`.

  - If `self` is `.Success`, the function will be applied to the unwrapped
    value.

#### Parameters

  - f: A transformation function from type `T` to type `U`

#### Returns

A value of type `Decoded<U>`

### `flatMap(_:)`

Conditionally map a function over `self`, flattening the result.

``` swift
func flatMap<U>(_ f: (T) -> Decoded<U>) -> Decoded<U> 
```

  - If `self` is `.Failure`, the function will not be evaluated and this will
    return `.Failure`.

  - If `self` is `.Success`, the function will be applied to the unwrapped
    value.

#### Parameters

  - f: A transformation function from type `T` to type `Decoded<U>`

#### Returns

A value of type `Decoded<U>`
