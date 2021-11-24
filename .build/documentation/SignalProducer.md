# SignalProducer

A SignalProducer creates Signals that can produce values of type `Value`
and/or fail with errors of type `Error`. If no failure should be possible,
`NoError` can be specified for `Error`.

``` swift
public struct SignalProducer<Value, Error: Swift.Error> 
```

SignalProducers can be used to represent operations or tasks, like network
requests, where each invocation of `start()` will create a new underlying
operation. This ensures that consumers will receive the results, versus a
plain Signal, where the results might be sent before any observers are
attached.

Because of the behavior of `start()`, different Signals created from the
producer may see a different version of Events. The Events may arrive in a
different order between Signals, or the stream might be completely
different\!

## Inheritance

[`SignalProducerProtocol`](/SignalProducerProtocol), [`BindingSourceProtocol`](/BindingSourceProtocol)

## Nested Type Aliases

### `ProducedSignal`

``` swift
public typealias ProducedSignal = Signal<Value, Error>
```

## Initializers

### `init(signal:)`

``` swift
@available(*, unavailable, renamed:"init(_:)")
	public init<S: SignalProtocol>(signal: S) where S.Value == Value, S.Error == Error 
```

### `init(values:)`

``` swift
@available(*, unavailable, renamed:"init(_:)")
	public init<S: Sequence>(values: S) where S.Iterator.Element == Value 
```

### `init(_:)`

Initializes a `SignalProducer` that will emit the same events as the
given signal.

``` swift
public init<S: SignalProtocol>(_ signal: S) where S.Value == Value, S.Error == Error 
```

If the Disposable returned from `start()` is disposed or a terminating
event is sent to the observer, the given signal will be disposed.

#### Parameters

  - signal: A signal to observe after starting the producer.

### `init(_:)`

Initializes a SignalProducer that will invoke the given closure once for
each invocation of `start()`.

``` swift
public init(_ startHandler: @escaping (Signal<Value, Error>.Observer, CompositeDisposable) -> Void) 
```

The events that the closure puts into the given observer will become
the events sent by the started `Signal` to its observers.

> 

#### Parameters

  - startHandler: A closure that accepts observer and a disposable.

### `init(value:)`

Creates a producer for a `Signal` that will immediately send one value
then complete.

``` swift
public init(value: Value) 
```

#### Parameters

  - value: A value that should be sent by the `Signal` in a `value` event.

### `init(error:)`

Creates a producer for a `Signal` that will immediately fail with the
given error.

``` swift
public init(error: Error) 
```

#### Parameters

  - error: An error that should be sent by the `Signal` in a `failed` event.

### `init(result:)`

Creates a producer for a Signal that will immediately send one value
then complete, or immediately fail, depending on the given Result.

``` swift
public init(result: Result<Value, Error>) 
```

#### Parameters

  - result: A `Result` instance that will send either `value` event if `result` is `success`ful or `failed` event if `result` is a `failure`.

### `init(_:)`

Creates a producer for a Signal that will immediately send the values
from the given sequence, then complete.

``` swift
public init<S: Sequence>(_ values: S) where S.Iterator.Element == Value 
```

#### Parameters

  - values: A sequence of values that a `Signal` will send as separate `value` events and then complete.

### `init(values:_:_:)`

Creates a producer for a Signal that will immediately send the values
from the given sequence, then complete.

``` swift
public init(values first: Value, _ second: Value, _ tail: Value...) 
```

#### Parameters

  - first: First value for the `Signal` to send.
  - second: Second value for the `Signal` to send.
  - tail: Rest of the values to be sent by the `Signal`.

## Properties

### `empty`

A producer for a Signal that will immediately complete without sending
any values.

``` swift
public static var empty: SignalProducer 
```

### `never`

A producer for a Signal that never sends any events to its observers.

``` swift
public static var never: SignalProducer 
```

### `producer`

``` swift
public var producer: SignalProducer 
```

## Methods

### `buffer(_:)`

``` swift
@available(*, unavailable, message:"Use properties instead. `buffer(_:)` is removed in RAC 5.0.")
	public static func buffer(_ capacity: Int) -> (SignalProducer, Signal<Value, Error>.Observer) 
```

### `startWithSignal(_:)`

Create a Signal from the producer, pass it into the given closure,
then start sending events on the Signal when the closure has returned.

``` swift
public func startWithSignal(_ setup: (_ signal: Signal<Value, Error>, _ interrupter: Disposable) -> Void) 
```

The closure will also receive a disposable which can be used to
interrupt the work associated with the signal and immediately send an
`interrupted` event.

#### Parameters

  - setUp: A closure that accepts a `signal` and `interrupter`.

### `attempt(_:)`

Create a `SignalProducer` that will attempt the given operation once for
each invocation of `start()`.

``` swift
public static func attempt(_ operation: @escaping () -> Result<Value, Error>) -> SignalProducer 
```

Upon success, the started signal will send the resulting value then
complete. Upon failure, the started signal will fail with the error that
occurred.

#### Parameters

  - operation: A closure that returns instance of `Result`.

#### Returns

A `SignalProducer` that will forward `success`ful `result` as `value` event and then complete or `failed` event if `result` is a `failure`.

### `observe(_:during:)`

``` swift
@discardableResult
	public func observe(_ observer: ProducedSignal.Observer, during lifetime: Lifetime) -> Disposable? 
```
