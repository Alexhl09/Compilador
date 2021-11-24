# Signal

A push-driven stream that sends Events over time, parameterized by the type
of values being sent (`Value`) and the type of failure that can occur
(`Error`). If no failures should be possible, NoError can be specified for
`Error`.

``` swift
public final class Signal<Value, Error: Swift.Error> 
```

An observer of a Signal will see the exact same sequence of events as all
other observers. In other words, events will be sent to all observers at the
same time.

Signals are generally used to represent event streams that are already “in
progress,” like notifications, user input, etc. To represent streams that
must first be *started*, see the SignalProducer type.

A Signal is kept alive until either of the following happens:

1.  its input observer receives a terminating event; or
2.  it has no active observers, and is not being retained.

## Inheritance

[`SignalProtocol`](/SignalProtocol), [`SignalProtocol`](/SignalProtocol), [`BindingSourceProtocol`](/BindingSourceProtocol), [`BindingSourceProtocol`](/BindingSourceProtocol)

## Nested Type Aliases

### `Observer`

``` swift
public typealias Observer = ReactiveSwift.Observer<Value, Error>
```

## Initializers

### `init(_:)`

Initialize a Signal that will immediately invoke the given generator,
then forward events sent to the given observer.

``` swift
public init(_ generator: (Observer) -> Disposable?) 
```

> 

#### Parameters

  - generator: A closure that accepts an implicitly created observer that will act as an event emitter for the signal.

## Properties

### `never`

A Signal that never sends any events to its observers.

``` swift
public static var never: Signal 
```

### `empty`

A Signal that completes immediately without emitting any value.

``` swift
public static var empty: Signal 
```

### `signal`

``` swift
public var signal: Signal 
```

### `signal`

``` swift
public var signal: Signal 
```

### `all`

List of all system signals that interrupt the program execution.

``` swift
public static let all = [SIGHUP, SIGINT, SIGQUIT, SIGABRT, SIGKILL, SIGALRM, SIGTERM]
```

## Methods

### `pipe(disposable:)`

Create a `Signal` that will be controlled by sending events to an
input observer.

``` swift
public static func pipe(disposable: Disposable? = nil) -> (output: Signal, input: Observer) 
```

> 

#### Parameters

  - disposable: An optional disposable to associate with the signal, and to be disposed of when the signal terminates.

#### Returns

A tuple of `output:​ Signal`, the output end of the pipe, and `input:​ Observer`, the input end of the pipe.

### `observe(_:)`

Observe the Signal by sending any future events to the given observer.

``` swift
@discardableResult
	public func observe(_ observer: Observer) -> Disposable? 
```

> 

#### Parameters

  - observer: An observer to forward the events to.

#### Returns

A `Disposable` which can be used to disconnect the observer, or `nil` if the signal has already terminated.

### `observe(_:during:)`

``` swift
@discardableResult
	public func observe(_ observer: Observer, during lifetime: Lifetime) -> Disposable? 
```

### `observe(_:during:)`

``` swift
@discardableResult
	public func observe(_ observer: Observer, during lifetime: Lifetime) -> Disposable? 
```

### `on(_:callback:)`

Intercepts the given list of signals and invokes `callback` instead of interrupting execution.

``` swift
public static func on(_ signals: [Int32], callback: @convention(c) @escaping (Int32) -> Void) 
```
