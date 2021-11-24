# Event

Represents a signal event.

``` swift
public enum Event<Value, Error: Swift.Error> 
```

Signals must conform to the grammar:
`value* (failed | completed | interrupted)?`

## Inheritance

`CustomStringConvertible`, `CustomStringConvertible`, [`Decodable`](/Decodable), [`EventProtocol`](/EventProtocol), [`EventProtocol`](/EventProtocol)

## Enumeration Cases

### `value`

A value provided by the signal.

``` swift
case value(Value)
```

### `failed`

The signal terminated because of an error. No further events will be
received.

``` swift
case failed(Error)
```

### `completed`

The signal successfully terminated. No further events will be received.

``` swift
case completed
```

### `interrupted`

Event production on the signal has been interrupted. No further events
will be received.

``` swift
case interrupted
```

> 

## Properties

### `Next`

``` swift
@available(*, unavailable, renamed:"value")
	public static var Next: Event<Value, Error> 
```

### `Next`

``` swift
@available(*, unavailable, renamed:"value")
	public static var Next: Event<Value, Error> 
```

### `Failed`

``` swift
@available(*, unavailable, renamed:"failed")
	public static var Failed: Event<Value, Error> 
```

### `Failed`

``` swift
@available(*, unavailable, renamed:"failed")
	public static var Failed: Event<Value, Error> 
```

### `Completed`

``` swift
@available(*, unavailable, renamed:"completed")
	public static var Completed: Event<Value, Error> 
```

### `Completed`

``` swift
@available(*, unavailable, renamed:"completed")
	public static var Completed: Event<Value, Error> 
```

### `Interrupted`

``` swift
@available(*, unavailable, renamed:"interrupted")
	public static var Interrupted: Event<Value, Error> 
```

### `Interrupted`

``` swift
@available(*, unavailable, renamed:"interrupted")
	public static var Interrupted: Event<Value, Error> 
```

### `isCompleted`

Whether this event is a completed event.

``` swift
public var isCompleted: Bool 
```

### `isTerminating`

Whether this event indicates signal termination (i.e., that no further
events will be received).

``` swift
public var isTerminating: Bool 
```

### `value`

Unwrap the contained `value` value.

``` swift
public var value: Value? 
```

### `error`

Unwrap the contained `Error` value.

``` swift
public var error: Error? 
```

### `description`

``` swift
public var description: String 
```

### `description`

``` swift
public var description: String 
```

### `event`

``` swift
public var event: Event<Value, Error> 
```

### `event`

``` swift
public var event: Event<Value, Error> 
```

## Methods

### `map(_:)`

Lift the given closure over the event's value.

``` swift
public func map<U>(_ f: (Value) -> U) -> Event<U, Error> 
```

> 

#### Parameters

  - f: A closure that accepts a value and returns a new value

#### Returns

An event with function applied to a value in case `self` is a `value` type of event.

### `mapError(_:)`

Lift the given closure over the event's error.

``` swift
public func mapError<F>(_ f: (Error) -> F) -> Event<Value, F> 
```

> 

#### Parameters

  - f: A closure that accepts an error object and returns a new error object

#### Returns

An event with function applied to an error object in case `self` is a `.Failed` type of event.
