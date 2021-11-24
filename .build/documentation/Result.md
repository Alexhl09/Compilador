# Result

An enum representing either a failure with an explanatory error, or a success with a result value.

``` swift
public enum Result<T, Error: Swift.Error>: ResultProtocol, CustomStringConvertible, CustomDebugStringConvertible 
```

## Inheritance

`Codable`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, [`ResultProtocol`](/ResultProtocol)

## Initializers

### `init(value:)`

Constructs a success wrapping a `value`.

``` swift
public init(value: T) 
```

### `init(error:)`

Constructs a failure wrapping an `error`.

``` swift
public init(error: Error) 
```

### `init(_:failWith:)`

Constructs a result from an `Optional`, failing with `Error` if `nil`.

``` swift
public init(_ value: T?, failWith: @autoclosure () -> Error) 
```

### `init(_:)`

Constructs a result from a function that uses `throw`, failing with `Error` if throws.

``` swift
public init(_ f: @autoclosure () throws -> T) 
```

### `init(attempt:)`

Constructs a result from a function that uses `throw`, failing with `Error` if throws.

``` swift
public init(attempt f: () throws -> T) 
```

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

### `init(value:)`

Creates a `Result` instance from the result of a closure.

``` swift
public init(value: () throws -> Value) 
```

A failure result is created when the closure throws, and a success result is created when the closure
succeeds without throwing an error.

``` 
func someString() throws -> String { ... }

let result = Result(value: {
    return try someString()
})

// The type of result is Result<String>
```

The trailing closure syntax is also supported:

``` 
let result = Result { try someString() }
```

#### Parameters

  - value: The closure to execute and create the result for.

## Enumeration Cases

### `success`

``` swift
case success(Value)
```

### `failure`

``` swift
case failure(Error)
```

### `success`

``` swift
case success(T)
```

### `failure`

``` swift
case failure(Error)
```

### `success`

``` swift
case success(Value)
```

### `failure`

``` swift
case failure(Error)
```

### `success`

``` swift
case success(Value)
```

### `failure`

``` swift
case failure(Error)
```

## Properties

### `isSuccess`

Returns `true` if the result is a success, `false` otherwise.

``` swift
public var isSuccess: Bool 
```

### `isFailure`

Returns `true` if the result is a failure, `false` otherwise.

``` swift
public var isFailure: Bool 
```

### `value`

Returns the associated value if the result is a success, `nil` otherwise.

``` swift
public var value: Value? 
```

### `error`

Returns the associated error value if the result is a failure, `nil` otherwise.

``` swift
public var error: Error? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `errorDomain`

The domain for errors constructed by Result.

``` swift
public static var errorDomain: String 
```

### `functionKey`

The userInfo key for source functions in errors constructed by Result.

``` swift
public static var functionKey: String 
```

### `fileKey`

The userInfo key for source file paths in errors constructed by Result.

``` swift
public static var fileKey: String 
```

### `lineKey`

The userInfo key for source file line numbers in errors constructed by Result.

``` swift
public static var lineKey: String 
```

### `description`

``` swift
public var description: String 
```

### `debugDescription`

``` swift
public var debugDescription: String 
```

### `isSuccess`

Returns `true` if the result is a success, `false` otherwise.

``` swift
public var isSuccess: Bool 
```

### `isFailure`

Returns `true` if the result is a failure, `false` otherwise.

``` swift
public var isFailure: Bool 
```

### `value`

Returns the associated value if the result is a success, `nil` otherwise.

``` swift
public var value: Value? 
```

### `error`

Returns the associated error value if the result is a failure, `nil` otherwise.

``` swift
public var error: Error? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `isSuccess`

Returns `true` if the result is a success, `false` otherwise.

``` swift
public var isSuccess: Bool 
```

### `isFailure`

Returns `true` if the result is a failure, `false` otherwise.

``` swift
public var isFailure: Bool 
```

### `value`

Returns the associated value if the result is a success, `nil` otherwise.

``` swift
public var value: Value? 
```

### `error`

Returns the associated error value if the result is a failure, `nil` otherwise.

``` swift
public var error: Error? 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes whether the result was a
success or failure.

``` swift
public var description: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The debug textual representation used when written to an output stream, which includes whether the result was a
success or failure in addition to the value or error.

``` swift
public var debugDescription: String 
```

## Methods

### `dematerialize()`

Returns the value from `success` Results or `throw`s the error.

``` swift
public func dematerialize() throws -> T 
```

### `analysis(ifSuccess:ifFailure:)`

Case analysis for Result.

``` swift
public func analysis<Result>(ifSuccess: (T) -> Result, ifFailure: (Error) -> Result) -> Result 
```

Returns the value produced by applying `ifFailure` to `failure` Results, or `ifSuccess` to `success` Results.

### `error(_:function:file:line:)`

Constructs an error.

``` swift
public static func error(_ message: String? = nil, function: String = #function, file: String = #file, line: Int = #line) -> NSError 
```

### `Success(_:)`

``` swift
@available(*, unavailable, renamed: "success")
	public static func Success(_: T) -> Result<T, Error> 
```

### `Success(_:)`

``` swift
@available(*, unavailable, renamed: "success")
	public static func Success(_: T) -> Result<T, Error> 
```

### `Success(_:)`

``` swift
@available(*, unavailable, renamed: "success")
	public static func Success(_: T) -> Result<T, Error> 
```

### `Success(_:)`

``` swift
@available(*, unavailable, renamed: "success")
	public static func Success(_: T) -> Result<T, Error> 
```

### `Success(_:)`

``` swift
@available(*, unavailable, renamed: "success")
	public static func Success(_: T) -> Result<T, Error> 
```

### `Failure(_:)`

``` swift
@available(*, unavailable, renamed: "failure")
	public static func Failure(_: Error) -> Result<T, Error> 
```

### `Failure(_:)`

``` swift
@available(*, unavailable, renamed: "failure")
	public static func Failure(_: Error) -> Result<T, Error> 
```

### `Failure(_:)`

``` swift
@available(*, unavailable, renamed: "failure")
	public static func Failure(_: Error) -> Result<T, Error> 
```

### `Failure(_:)`

``` swift
@available(*, unavailable, renamed: "failure")
	public static func Failure(_: Error) -> Result<T, Error> 
```

### `Failure(_:)`

``` swift
@available(*, unavailable, renamed: "failure")
	public static func Failure(_: Error) -> Result<T, Error> 
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `unwrap()`

Returns the success value, or throws the failure error.

``` swift
public func unwrap() throws -> Value 
```

``` 
let possibleString: Result<String> = .success("success")
try print(possibleString.unwrap())
// Prints "success"

let noString: Result<String> = .failure(error)
try print(noString.unwrap())
// Throws error
```

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `map(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func map<T>(_ transform: (Value) -> T) -> Result<T> 
```

Use the `map` method with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .success(Data())
let possibleInt = possibleData.map { $0.count }
try print(possibleInt.unwrap())
// Prints "0"

let noData: Result<Data> = .failure(error)
let noInt = noData.map { $0.count }
try print(noInt.unwrap())
// Throws error
```

#### Parameters

  - transform: A closure that takes the success value of the `Result` instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `flatMap(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
public func flatMap<T>(_ transform: (Value) throws -> T) -> Result<T> 
```

Use the `flatMap` method with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMap {
    try JSONSerialization.jsonObject(with: $0)
}
```

#### Parameters

  - transform: A closure that takes the success value of the instance.

#### Returns

A `Result` containing the result of the given closure. If this instance is a failure, returns the same failure.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `mapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func mapError<T: Error>(_ transform: (Error) -> T) -> Result 
```

Use the `mapError` function with a closure that does not throw. For example:

``` 
let possibleData: Result<Data> = .failure(someError)
let withMyError: Result<Data> = possibleData.mapError { MyError.error($0) }
```

#### Parameters

  - transform: A closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `flatMapError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
public func flatMapError<T: Error>(_ transform: (Error) throws -> T) -> Result 
```

Use the `flatMapError` function with a closure that may throw an error. For example:

``` 
let possibleData: Result<Data> = .success(Data(...))
let possibleObject = possibleData.flatMapError {
    try someFailableFunction(taking: $0)
}
```

#### Parameters

  - transform: A throwing closure that takes the error of the instance.

#### Returns

A `Result` instance containing the result of the transform. If this instance is a success, returns the same instance.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withValue(_:)`

Evaluates the specified closure when the `Result` is a success, passing the unwrapped value as a parameter.

``` swift
@discardableResult
    public func withValue(_ closure: (Value) throws -> Void) rethrows -> Result 
```

Use the `withValue` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `withError(_:)`

Evaluates the specified closure when the `Result` is a failure, passing the unwrapped error as a parameter.

``` swift
@discardableResult
    public func withError(_ closure: (Error) throws -> Void) rethrows -> Result 
```

Use the `withError` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A closure that takes the success value of this instance.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifSuccess(_:)`

Evaluates the specified closure when the `Result` is a success.

``` swift
@discardableResult
    public func ifSuccess(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifSuccess` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.

### `ifFailure(_:)`

Evaluates the specified closure when the `Result` is a failure.

``` swift
@discardableResult
    public func ifFailure(_ closure: () throws -> Void) rethrows -> Result 
```

Use the `ifFailure` function to evaluate the passed closure without modifying the `Result` instance.

#### Parameters

  - closure: A `Void` closure.

#### Returns

This `Result` instance, unmodified.
