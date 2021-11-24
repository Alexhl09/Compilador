# Observer

An Observer is a simple wrapper around a function which can receive Events
(typically from a Signal).

``` swift
public final class Observer<Value, Error: Swift.Error> 
```

## Inheritance

[`ObserverProtocol`](/ObserverProtocol)

## Nested Type Aliases

### `Action`

``` swift
public typealias Action = (Event<Value, Error>) -> Void
```

## Initializers

### `init(next:failed:completed:interrupted:)`

``` swift
@available(*, unavailable, renamed: "init(value:failed:completed:interrupted:)")
	public convenience init(
		next: ((Value) -> Void)? = nil,
		failed: ((Error) -> Void)? = nil,
		completed: (() -> Void)? = nil,
		interrupted: (() -> Void)? = nil
		) 
```

### `init(_:)`

An initializer that accepts a closure accepting an event for the
observer.

``` swift
public init(_ action: @escaping Action) 
```

#### Parameters

  - action: A closure to lift over received event.

### `init(value:failed:completed:interrupted:)`

An initializer that accepts closures for different event types.

``` swift
public convenience init(
		value: ((Value) -> Void)? = nil,
		failed: ((Error) -> Void)? = nil,
		completed: (() -> Void)? = nil,
		interrupted: (() -> Void)? = nil
	) 
```

#### Parameters

  - value: Optional closure executed when a `value` event is observed.
  - failed: Optional closure that accepts an `Error` parameter when a failed event is observed.
  - completed: Optional closure executed when a `completed` event is observed.
  - interruped: Optional closure executed when an `interrupted` event is observed.

## Properties

### `action`

An action that will be performed upon arrival of the event.

``` swift
public let action: Action
```

## Methods

### `send(value:)`

Puts a `value` event into `self`.

``` swift
public func send(value: Value) 
```

#### Parameters

  - value: A value sent with the `value` event.

### `send(error:)`

Puts a failed event into `self`.

``` swift
public func send(error: Error) 
```

#### Parameters

  - error: An error object sent with failed event.

### `sendCompleted()`

Puts a `completed` event into `self`.

``` swift
public func sendCompleted() 
```

### `sendInterrupted()`

Puts an `interrupted` event into `self`.

``` swift
public func sendInterrupted() 
```
