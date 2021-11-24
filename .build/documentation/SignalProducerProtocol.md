# SignalProducerProtocol

A protocol used to constraint `SignalProducer` operators.

``` swift
public protocol SignalProducerProtocol 
```

## Default Implementations

### `take(_:)`

``` swift
@available(*, unavailable, renamed:"take(first:)")
	public func take(_ count: Int) -> SignalProducer<Value, Error> 
```

### `takeLast(_:)`

``` swift
@available(*, unavailable, renamed:"take(last:)")
	public func takeLast(_ count: Int) -> SignalProducer<Value, Error> 
```

### `skip(_:)`

``` swift
@available(*, unavailable, renamed:"skip(first:)")
	public func skip(_ count: Int) -> SignalProducer<Value, Error> 
```

### `retry(_:)`

``` swift
@available(*, unavailable, renamed:"retry(upTo:)")
	public func retry(_ count: Int) -> SignalProducer<Value, Error> 
```

### `observeOn(_:)`

``` swift
@available(*, unavailable, renamed:"observe(on:)")
	public func observeOn(_ scheduler: SchedulerProtocol) -> SignalProducer<Value, Error> 
```

### `startOn(_:)`

``` swift
@available(*, unavailable, renamed:"start(on:)")
	public func startOn(_ scheduler: SchedulerProtocol) -> SignalProducer<Value, Error> 
```

### `combineLatestWith(_:)`

``` swift
@available(*, unavailable, renamed:"combineLatest(with:)")
	public func combineLatestWith<U>(_ otherProducer: SignalProducer<U, Error>) -> SignalProducer<(Value, U), Error> 
```

### `combineLatestWith(_:)`

``` swift
@available(*, unavailable, renamed:"combineLatest(with:)")
	public func combineLatestWith<U>(_ otherSignal: Signal<U, Error>) -> SignalProducer<(Value, U), Error> 
```

### `zipWith(_:)`

``` swift
@available(*, unavailable, renamed:"zip(with:)")
	public func zipWith<U>(_ otherProducer: SignalProducer<U, Error>) -> SignalProducer<(Value, U), Error> 
```

### `zipWith(_:)`

``` swift
@available(*, unavailable, renamed:"zip(with:)")
	public func zipWith<U>(_ otherSignal: Signal<U, Error>) -> SignalProducer<(Value, U), Error> 
```

### `takeUntil(_:)`

``` swift
@available(*, unavailable, renamed:"take(until:)")
	public func takeUntil(_ trigger: Signal<(), NoError>) -> SignalProducer<Value, Error> 
```

### `takeUntil(_:)`

``` swift
@available(*, unavailable, renamed:"take(until:)")
	public func takeUntil(_ trigger: SignalProducer<(), NoError>) -> SignalProducer<Value, Error> 
```

### `takeUntilReplacement(_:)`

``` swift
@available(*, unavailable, renamed:"take(untilReplacement:)")
	public func takeUntilReplacement(_ replacement: Signal<Value, Error>) -> SignalProducer<Value, Error> 
```

### `takeUntilReplacement(_:)`

``` swift
@available(*, unavailable, renamed:"take(untilReplacement:)")
	public func takeUntilReplacement(_ replacement: SignalProducer<Value, Error>) -> SignalProducer<Value, Error> 
```

### `skipUntil(_:)`

``` swift
@available(*, unavailable, renamed:"skip(until:)")
	public func skipUntil(_ trigger: Signal<(), NoError>) -> SignalProducer<Value, Error> 
```

### `skipUntil(_:)`

``` swift
@available(*, unavailable, renamed:"skip(until:)")
	public func skipUntil(_ trigger: SignalProducer<(), NoError>) -> SignalProducer<Value, Error> 
```

### `skipWhile(_:)`

``` swift
@available(*, unavailable, renamed:"skip(while:)")
	public func skipWhile(_ predicate: (Value) -> Bool) -> SignalProducer<Value, Error> 
```

### `takeWhile(_:)`

``` swift
@available(*, unavailable, renamed:"take(while:)")
	public func takeWhile(_ predicate: (Value) -> Bool) -> SignalProducer<Value, Error> 
```

### `timeoutWithError(_:afterInterval:onScheduler:)`

``` swift
@available(*, unavailable, renamed:"timeout(after:raising:on:)")
	public func timeoutWithError(_ error: Error, afterInterval: TimeInterval, onScheduler: DateSchedulerProtocol) -> SignalProducer<Value, Error> 
```

### `startWithNext(_:)`

``` swift
@available(*, unavailable, message:"This SignalProducer may emit errors which must be handled explicitly, or observed using `startWithResult(_:)`.")
	public func startWithNext(_ next: (Value) -> Void) -> Disposable 
```

### `times(_:)`

``` swift
@available(*, unavailable, renamed:"repeat(_:)")
	public func times(_ count: Int) -> SignalProducer<Value, Error> 
```

### `ignoreNil()`

``` swift
@available(*, unavailable, renamed:"skipNil()")
	public func ignoreNil() -> SignalProducer<Value.Wrapped, Error> 
```

### `startWithNext(_:)`

``` swift
@available(*, unavailable, renamed: "startWithValues")
	public func startWithNext(_ value: @escaping (Value) -> Void) -> Disposable 
```

### `logEvents(identifier:events:fileName:functionName:lineNumber:logger:)`

Logs all events that the receiver sends. By default, it will print to
the standard output.

``` swift
public func logEvents(identifier: String = "",
	                      events: Set<LoggingEvent.SignalProducer> = LoggingEvent.SignalProducer.allEvents,
	                      fileName: String = #file,
	                      functionName: String = #function,
	                      lineNumber: Int = #line,
	                      logger: @escaping EventLogger = defaultEventLog
	) -> SignalProducer<Value, Error> 
```

#### Parameters

  - identifier: a string to identify the SignalProducer firing events.
  - events: Types of events to log.
  - fileName: Name of the file containing the code which fired the event.
  - functionName: Function where event was fired.
  - lineNumber: Line number where event was fired.
  - logger: Logger that logs the events.

#### Returns

Signal producer that, when started, logs the fired events.

### `flatten(_:)`

Flattens the inner producers sent upon `producer` (into a single
producer of values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner producers sent upon `producer` (into a single
producer of values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Value.Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner producers sent upon `producer` (into a single
producer of values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Value.Error> 
```

> 

### `flatten(_:)`

Flattens the inner producers sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner signals sent upon `producer` (into a single producer
of values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner signals sent upon `producer` (into a single producer
of values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Value.Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner signals sent upon `producer` (into a single producer
of values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Value.Error> 
```

> 

### `flatten(_:)`

Flattens the inner signals sent upon `producer` (into a single producer
of values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Error> 
```

> 

> 

### `flatten(_:)`

Flattens the `sequence` value sent by `producer` according to
the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Iterator.Element, Error> 
```

### `flatten(_:)`

Flattens the inner properties sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> SignalProducer<Value.Value, Error> 
```

> 

### `concat(_:)`

`concat`s `next` onto `self`.

``` swift
public func concat(_ next: SignalProducer<Value, Error>) -> SignalProducer<Value, Error> 
```

### `concat(value:)`

`concat`s `value` onto `self`.

``` swift
public func concat(value: Value) -> SignalProducer<Value, Error> 
```

### `prefix(_:)`

`concat`s `self` onto initial `previous`.

``` swift
public func prefix<P: SignalProducerProtocol>(_ previous: P) -> SignalProducer<Value, Error>
		where P.Value == Value, P.Error == Error
```

### `prefix(value:)`

`concat`s `self` onto initial `value`.

``` swift
public func prefix(value: Value) -> SignalProducer<Value, Error> 
```

### `merge(_:)`

Merges the given producers into a single `SignalProducer` that will emit
all values from each of them, and complete when all of them have
completed.

``` swift
public static func merge<Seq: Sequence, S: SignalProducerProtocol>(_ producers: Seq) -> SignalProducer<Value, Error>
		where S.Value == Value, S.Error == Error, Seq.Iterator.Element == S
```

### `merge(_:)`

Merges the given producers into a single `SignalProducer` that will emit
all values from each of them, and complete when all of them have
completed.

``` swift
public static func merge<S: SignalProducerProtocol>(_ producers: S...) -> SignalProducer<Value, Error>
		where S.Value == Value, S.Error == Error
```

### `flatMap(_:transform:)`

Maps each event from `self` to a new producer, then flattens the
resulting producers (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> SignalProducer<U, Error>) -> SignalProducer<U, Error> 
```

If `self` or any of the created producers fail, the returned producer
will forward that failure immediately.

### `flatMap(_:transform:)`

Maps each event from `self` to a new producer, then flattens the
resulting producers (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> SignalProducer<U, NoError>) -> SignalProducer<U, Error> 
```

If `self` fails, the returned producer will forward that failure
immediately.

### `flatMap(_:transform:)`

Maps each event from `self` to a new producer, then flattens the
resulting signals (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> Signal<U, Error>) -> SignalProducer<U, Error> 
```

If `self` or any of the created signals emit an error, the returned
producer will forward that error immediately.

### `flatMap(_:transform:)`

Maps each event from `self` to a new producer, then flattens the
resulting signals (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> Signal<U, NoError>) -> SignalProducer<U, Error> 
```

If `self` emits an error, the returned producer will forward that
error immediately.

### `flatMap(_:transform:)`

Maps each event from `self` to a new property, then flattens the
resulting properties (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<P: PropertyProtocol>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> P) -> SignalProducer<P.Value, Error> 
```

If `self` emits an error, the returned producer will forward that
error immediately.

### `flatMap(_:transform:)`

Maps each event from `self` to a new producer, then flattens the
resulting producers (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U, E>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> SignalProducer<U, E>) -> SignalProducer<U, E> 
```

If any of the created producers fail, the returned producer will
forward that failure immediately.

### `flatMap(_:transform:)`

Maps each event from `self` to a new producer, then flattens the
resulting producers (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> SignalProducer<U, NoError>) -> SignalProducer<U, NoError> 
```

### `flatMap(_:transform:)`

Maps each event from `self` to a new producer, then flattens the
resulting signals (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U, E>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> Signal<U, E>) -> SignalProducer<U, E> 
```

If any of the created signals emit an error, the returned
producer will forward that error immediately.

### `flatMap(_:transform:)`

Maps each event from `self` to a new producer, then flattens the
resulting signals (into a producer of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> Signal<U, NoError>) -> SignalProducer<U, NoError> 
```

### `flatMapError(_:)`

Catches any failure that may occur on the input producer, mapping to a
new producer that starts in its place.

``` swift
public func flatMapError<F>(_ handler: @escaping (Error) -> SignalProducer<Value, F>) -> SignalProducer<Value, F> 
```

### `start(_:)`

Create a Signal from the producer, then attach the given observer to
the `Signal` as an observer.

``` swift
@discardableResult
	public func start(_ observer: Signal<Value, Error>.Observer = .init()) -> Disposable 
```

#### Parameters

  - observer: An observer to attach to produced signal.

#### Returns

A `Disposable` which can be used to interrupt the work associated with the signal and immediately send an `interrupted` event.

### `start(_:)`

Convenience override for start(\_:​) to allow trailing-closure style
invocations.

``` swift
@discardableResult
	public func start(_ observerAction: @escaping Signal<Value, Error>.Observer.Action) -> Disposable 
```

#### Parameters

  - observerAction: A closure that accepts `Event` sent by the produced signal.

#### Returns

A `Disposable` which can be used to interrupt the work associated with the signal and immediately send an `interrupted` event.

### `startWithResult(_:)`

Create a Signal from the producer, then add an observer to the `Signal`,
which will invoke the given callback when `value` or `failed` events are
received.

``` swift
@discardableResult
	public func startWithResult(_ result: @escaping (Result<Value, Error>) -> Void) -> Disposable 
```

#### Parameters

  - result: A closure that accepts a `result` that contains a `.success` case for `value` events or `.failure` case for `failed` event.

#### Returns

A Disposable which can be used to interrupt the work associated with the Signal, and prevent any future callbacks from being invoked.

### `startWithCompleted(_:)`

Create a Signal from the producer, then add exactly one observer to the
Signal, which will invoke the given callback when a `completed` event is
received.

``` swift
@discardableResult
	public func startWithCompleted(_ completed: @escaping () -> Void) -> Disposable 
```

#### Parameters

  - completed: A closure that will be envoked when produced signal sends `completed` event.

#### Returns

A `Disposable` which can be used to interrupt the work associated with the signal.

### `startWithFailed(_:)`

Creates a Signal from the producer, then adds exactly one observer to
the Signal, which will invoke the given callback when a `failed` event
is received.

``` swift
@discardableResult
	public func startWithFailed(_ failed: @escaping (Error) -> Void) -> Disposable 
```

#### Parameters

  - failed: A closure that accepts an error object.

#### Returns

A `Disposable` which can be used to interrupt the work associated with the signal.

### `startWithInterrupted(_:)`

Creates a Signal from the producer, then adds exactly one observer to
the Signal, which will invoke the given callback when an `interrupted`
event is received.

``` swift
@discardableResult
	public func startWithInterrupted(_ interrupted: @escaping () -> Void) -> Disposable 
```

#### Parameters

  - interrupted: A closure that is invoked when `interrupted` event is received.

#### Returns

A `Disposable` which can be used to interrupt the work associated with the signal.

### `startWithValues(_:)`

Create a Signal from the producer, then add exactly one observer to
the Signal, which will invoke the given callback when `value` events are
received.

``` swift
@discardableResult
	public func startWithValues(_ value: @escaping (Value) -> Void) -> Disposable 
```

#### Parameters

  - value: A closure that accepts a value carried by `value` event.

#### Returns

A `Disposable` which can be used to interrupt the work associated with the Signal, and prevent any future callbacks from being invoked.

### `lift(_:)`

Lift an unary Signal operator to operate upon SignalProducers instead.

``` swift
public func lift<U, F>(_ transform: @escaping (Signal<Value, Error>) -> Signal<U, F>) -> SignalProducer<U, F> 
```

In other words, this will create a new `SignalProducer` which will apply
the given `Signal` operator to *every* created `Signal`, just as if the
operator had been applied to each `Signal` yielded from `start()`.

#### Parameters

  - transform: An unary operator to lift.

#### Returns

A signal producer that applies signal's operator to every created signal.

### `lift(_:)`

Lift a binary Signal operator to operate upon SignalProducers instead.

``` swift
public func lift<U, F, V, G>(_ transform: @escaping (Signal<Value, Error>) -> (Signal<U, F>) -> Signal<V, G>) -> (SignalProducer<U, F>) -> SignalProducer<V, G> 
```

In other words, this will create a new `SignalProducer` which will apply
the given `Signal` operator to *every* `Signal` created from the two
producers, just as if the operator had been applied to each `Signal`
yielded from `start()`.

> 

#### Parameters

  - transform: A binary operator to lift.

#### Returns

A binary operator that operates on two signal producers.

### `lift(_:)`

Lift a binary Signal operator to operate upon a Signal and a
SignalProducer instead.

``` swift
public func lift<U, F, V, G>(_ transform: @escaping (Signal<Value, Error>) -> (Signal<U, F>) -> Signal<V, G>) -> (Signal<U, F>) -> SignalProducer<V, G> 
```

In other words, this will create a new `SignalProducer` which will apply
the given `Signal` operator to *every* `Signal` created from the two
producers, just as if the operator had been applied to each `Signal`
yielded from `start()`.

#### Parameters

  - transform: A binary operator to lift.

#### Returns

A binary operator that works on `Signal` and returns `SignalProducer`.

### `map(_:)`

Map each value in the producer to a new value.

``` swift
public func map<U>(_ transform: @escaping (Value) -> U) -> SignalProducer<U, Error> 
```

#### Parameters

  - transform: A closure that accepts a value and returns a different value.

#### Returns

A signal producer that, when started, will send a mapped value of `self.`

### `mapError(_:)`

Map errors in the producer to a new error.

``` swift
public func mapError<F>(_ transform: @escaping (Error) -> F) -> SignalProducer<Value, F> 
```

#### Parameters

  - transform: A closure that accepts an error object and returns a different error.

#### Returns

A producer that emits errors of new type.

### `filter(_:)`

Preserve only the values of the producer that pass the given predicate.

``` swift
public func filter(_ predicate: @escaping (Value) -> Bool) -> SignalProducer<Value, Error> 
```

#### Parameters

  - predicate: A closure that accepts value and returns `Bool` denoting whether value has passed the test.

#### Returns

A producer that, when started, will send only the values passing the given predicate.

### `take(first:)`

Yield the first `count` values from the input producer.

``` swift
public func take(first count: Int) -> SignalProducer<Value, Error> 
```

> 

#### Parameters

  - count: A number of values to take from the signal.

#### Returns

A producer that, when started, will yield the first `count` values from `self`.

### `collect()`

Yield an array of values when `self` completes.

``` swift
public func collect() -> SignalProducer<[Value], Error> 
```

> 

#### Returns

A producer that, when started, will yield an array of values when `self` completes.

### `collect(count:)`

Yield an array of values until it reaches a certain count.

``` swift
public func collect(count: Int) -> SignalProducer<[Value], Error> 
```

> 

> 

> 

#### Returns

A producer that, when started, collects at most `count` values from `self`, forwards them as a single array and completes.

### `collect(_:)`

Yield an array of values based on a predicate which matches the values
collected.

``` swift
public func collect(_ predicate: @escaping (_ values: [Value]) -> Bool) -> SignalProducer<[Value], Error> 
```

> 

``` 
let (producer, observer) = SignalProducer<Int, NoError>.buffer(1)

producer
    .collect { values in values.reduce(0, combine: +) == 8 }
    .startWithValues { print($0) }

observer.send(value: 1)
observer.send(value: 3)
observer.send(value: 4)
observer.send(value: 7)
observer.send(value: 1)
observer.send(value: 5)
observer.send(value: 6)
observer.sendCompleted()

// Output:
// [1, 3, 4]
// [7, 1]
// [5, 6]
```

#### Parameters

  - predicate: Predicate to match when values should be sent (returning `true`) or alternatively when they should be collected (where it should return `false`). The most recent value (`value`) is included in `values` and will be the end of the current array of values if the predicate returns `true`.

#### Returns

A producer that, when started, collects values passing the predicate and, when `self` completes, forwards them as a single array and complets.

### `collect(_:)`

Yield an array of values based on a predicate which matches the values
collected and the next value.

``` swift
public func collect(_ predicate: @escaping (_ values: [Value], _ value: Value) -> Bool) -> SignalProducer<[Value], Error> 
```

> 

``` 
let (producer, observer) = SignalProducer<Int, NoError>.buffer(1)

producer
    .collect { values, value in value == 7 }
    .startWithValues { print($0) }

observer.send(value: 1)
observer.send(value: 1)
observer.send(value: 7)
observer.send(value: 7)
observer.send(value: 5)
observer.send(value: 6)
observer.sendCompleted()

// Output:
// [1, 1]
// [7]
// [7, 5, 6]
```

#### Parameters

  - predicate: Predicate to match when values should be sent (returning `true`) or alternatively when they should be collected (where it should return `false`). The most recent value (`vaule`) is not included in `values` and will be the start of the next array of values if the predicate returns `true`.

#### Returns

A signal that will yield an array of values based on a predicate which matches the values collected and the next value.

### `observe(on:)`

Forward all events onto the given scheduler, instead of whichever
scheduler they originally arrived upon.

``` swift
public func observe(on scheduler: SchedulerProtocol) -> SignalProducer<Value, Error> 
```

#### Parameters

  - scheduler: A scheduler to deliver events on.

#### Returns

A producer that, when started, will yield `self` values on provided scheduler.

### `combineLatest(with:)`

Combine the latest value of the receiver with the latest value from the
given producer.

``` swift
public func combineLatest<U>(with other: SignalProducer<U, Error>) -> SignalProducer<(Value, U), Error> 
```

> 

> 

#### Parameters

  - other: A producer to combine `self`'s value with.

#### Returns

A producer that, when started, will yield a tuple containing values of `self` and given producer.

### `combineLatest(with:)`

Combine the latest value of the receiver with the latest value from
the given signal.

``` swift
public func combineLatest<U>(with other: Signal<U, Error>) -> SignalProducer<(Value, U), Error> 
```

> 

> 

#### Parameters

  - other: A signal to combine `self`'s value with.

#### Returns

A producer that, when started, will yield a tuple containing values of `self` and given signal.

### `delay(_:on:)`

Delay `value` and `completed` events by the given interval, forwarding
them on the given scheduler.

``` swift
public func delay(_ interval: TimeInterval, on scheduler: DateSchedulerProtocol) -> SignalProducer<Value, Error> 
```

> 

#### Parameters

  - interval: Interval to delay `value` and `completed` events by.
  - scheduler: A scheduler to deliver delayed events on.

#### Returns

A producer that, when started, will delay `value` and `completed` events and will yield them on given scheduler.

### `skip(first:)`

Skip the first `count` values, then forward everything afterward.

``` swift
public func skip(first count: Int) -> SignalProducer<Value, Error> 
```

#### Parameters

  - count: A number of values to skip.

#### Returns

A producer that, when started, will skip the first `count` values, then forward everything afterward.

### `materialize()`

Treats all Events from the input producer as plain values, allowing them
to be manipulated just like any other value.

``` swift
public func materialize() -> SignalProducer<Event<Value, Error>, NoError> 
```

In other words, this brings Events “into the monad.”

> 

#### Returns

A producer that sends events as its values.

### `sample(with:)`

Forward the latest value from `self` with the value from `sampler` as a
tuple, only when `sampler` sends a `value` event.

``` swift
public func sample<T>(with sampler: SignalProducer<T, NoError>) -> SignalProducer<(Value, T), Error> 
```

> 

#### Parameters

  - sampler: A producer that will trigger the delivery of `value` event from `self`.

#### Returns

A producer that will send values from `self` and `sampler`, sampled (possibly multiple times) by `sampler`, then complete once both input producers have completed, or interrupt if either input producer is interrupted.

### `sample(with:)`

Forward the latest value from `self` with the value from `sampler` as a
tuple, only when `sampler` sends a `value` event.

``` swift
public func sample<T>(with sampler: Signal<T, NoError>) -> SignalProducer<(Value, T), Error> 
```

> 

#### Parameters

  - sampler: A signal that will trigger the delivery of `value` event from `self`.

#### Returns

A producer that, when started, will send values from `self` and `sampler`, sampled (possibly multiple times) by `sampler`, then complete once both input producers have completed, or interrupt if either input producer is interrupted.

### `sample(on:)`

Forward the latest value from `self` whenever `sampler` sends a `value`
event.

``` swift
public func sample(on sampler: SignalProducer<(), NoError>) -> SignalProducer<Value, Error> 
```

> 

#### Parameters

  - sampler: A producer that will trigger the delivery of `value` event from `self`.

#### Returns

A producer that, when started, will send values from `self`, sampled (possibly multiple times) by `sampler`, then complete once both input producers have completed, or interrupt if either input producer is interrupted.

### `sample(on:)`

Forward the latest value from `self` whenever `sampler` sends a `value`
event.

``` swift
public func sample(on sampler: Signal<(), NoError>) -> SignalProducer<Value, Error> 
```

> 

#### Parameters

  - trigger: A signal whose `value` or `completed` events will start the deliver of events on `self`.

#### Returns

A producer that will send values from `self`, sampled (possibly multiple times) by `sampler`, then complete once both inputs have completed, or interrupt if either input is interrupted.

### `withLatest(from:)`

Forward the latest value from `samplee` with the value from `self` as a
tuple, only when `self` sends a `value` event.
This is like a flipped version of `sample(with:​)`, but `samplee`'s
terminal events are completely ignored.

``` swift
public func withLatest<U>(from samplee: SignalProducer<U, NoError>) -> SignalProducer<(Value, U), Error> 
```

> 

#### Parameters

  - samplee: A producer whose latest value is sampled by `self`.

#### Returns

A signal that will send values from `self` and `samplee`, sampled (possibly multiple times) by `self`, then terminate once `self` has terminated. **`samplee`'s terminated events are ignored**.

### `withLatest(from:)`

Forward the latest value from `samplee` with the value from `self` as a
tuple, only when `self` sends a `value` event.
This is like a flipped version of `sample(with:​)`, but `samplee`'s
terminal events are completely ignored.

``` swift
public func withLatest<U>(from samplee: Signal<U, NoError>) -> SignalProducer<(Value, U), Error> 
```

> 

#### Parameters

  - samplee: A signal whose latest value is sampled by `self`.

#### Returns

A signal that will send values from `self` and `samplee`, sampled (possibly multiple times) by `self`, then terminate once `self` has terminated. **`samplee`'s terminated events are ignored**.

### `take(during:)`

Forwards events from `self` until `lifetime` ends, at which point the
returned producer will complete.

``` swift
public func take(during lifetime: Lifetime) -> SignalProducer<Value, Error> 
```

#### Parameters

  - lifetime: A lifetime whose `ended` signal will cause the returned producer to complete.

#### Returns

A producer that will deliver events until `lifetime` ends.

### `take(until:)`

Forward events from `self` until `trigger` sends a `value` or `completed`
event, at which point the returned producer will complete.

``` swift
public func take(until trigger: SignalProducer<(), NoError>) -> SignalProducer<Value, Error> 
```

#### Parameters

  - trigger: A producer whose `value` or `completed` events will stop the delivery of `value` events from `self`.

#### Returns

A producer that will deliver events until `trigger` sends `value` or `completed` events.

### `take(until:)`

Forward events from `self` until `trigger` sends a `value` or
`completed` event, at which point the returned producer will complete.

``` swift
public func take(until trigger: Signal<(), NoError>) -> SignalProducer<Value, Error> 
```

#### Parameters

  - trigger: A signal whose `value` or `completed` events will stop the delivery of `value` events from `self`.

#### Returns

A producer that will deliver events until `trigger` sends `value` or `completed` events.

### `skip(until:)`

Do not forward any values from `self` until `trigger` sends a `value`
or `completed`, at which point the returned producer behaves exactly
like `producer`.

``` swift
public func skip(until trigger: SignalProducer<(), NoError>) -> SignalProducer<Value, Error> 
```

#### Parameters

  - trigger: A producer whose `value` or `completed` events will start the deliver of events on `self`.

#### Returns

A producer that will deliver events once the `trigger` sends `value` or `completed` events.

### `skip(until:)`

Do not forward any values from `self` until `trigger` sends a `value`
or `completed`, at which point the returned signal behaves exactly like
`signal`.

``` swift
public func skip(until trigger: Signal<(), NoError>) -> SignalProducer<Value, Error> 
```

#### Parameters

  - trigger: A signal whose `value` or `completed` events will start the deliver of events on `self`.

#### Returns

A producer that will deliver events once the `trigger` sends `value` or `completed` events.

### `combinePrevious(_:)`

Forward events from `self` with history:​ values of the returned producer
are a tuple whose first member is the previous value and whose second
member is the current value. `initial` is supplied as the first member
when `self` sends its first value.

``` swift
public func combinePrevious(_ initial: Value) -> SignalProducer<(Value, Value), Error> 
```

#### Parameters

  - initial: A value that will be combined with the first value sent by `self`.

#### Returns

A producer that sends tuples that contain previous and current sent values of `self`.

### `reduce(_:_:)`

Send only the final value and then immediately completes.

``` swift
public func reduce<U>(_ initial: U, _ combine: @escaping (U, Value) -> U) -> SignalProducer<U, Error> 
```

#### Parameters

  - initial: Initial value for the accumulator.
  - combine: A closure that accepts accumulator and sent value of `self`.

#### Returns

A producer that sends accumulated value after `self` completes.

### `scan(_:_:)`

Aggregate `self`'s values into a single combined value. When `self`
emits its first value, `combine` is invoked with `initial` as the first
argument and that emitted value as the second argument. The result is
emitted from the producer returned from `scan`. That result is then
passed to `combine` as the first argument when the next value is
emitted, and so on.

``` swift
public func scan<U>(_ initial: U, _ combine: @escaping (U, Value) -> U) -> SignalProducer<U, Error> 
```

#### Parameters

  - initial: Initial value for the accumulator.
  - combine: A closure that accepts accumulator and sent value of `self`.

#### Returns

A producer that sends accumulated value each time `self` emits own value.

### `skipRepeats(_:)`

Forward only those values from `self` which do not pass `isRepeat` with
respect to the previous value.

``` swift
public func skipRepeats(_ isRepeat: @escaping (Value, Value) -> Bool) -> SignalProducer<Value, Error> 
```

> 

#### Returns

A producer that does not send two equal values sequentially.

### `skip(while:)`

Do not forward any values from `self` until `predicate` returns false,
at which point the returned producer behaves exactly like `self`.

``` swift
public func skip(while predicate: @escaping (Value) -> Bool) -> SignalProducer<Value, Error> 
```

#### Parameters

  - predicate: A closure that accepts a value and returns whether `self` should still not forward that value to a `producer`.

#### Returns

A producer that sends only forwarded values from `self`.

### `take(untilReplacement:)`

Forward events from `self` until `replacement` begins sending events.

``` swift
public func take(untilReplacement signal: SignalProducer<Value, Error>) -> SignalProducer<Value, Error> 
```

#### Parameters

  - replacement: A producer to wait to wait for values from and start sending them as a replacement to `self`'s values.

#### Returns

A producer which passes through `value`, `failed`, and `interrupted` events from `self` until `replacement` sends an event, at which point the returned producer will send that event and switch to passing through events from `replacement` instead, regardless of whether `self` has sent events already.

### `take(untilReplacement:)`

Forwards events from `self` until `replacement` begins sending events.

``` swift
public func take(untilReplacement signal: Signal<Value, Error>) -> SignalProducer<Value, Error> 
```

#### Parameters

  - replacement: A signal to wait to wait for values from and start sending them as a replacement to `self`'s values.

#### Returns

A producer which passes through `value`, `failed`, and `interrupted` events from `self` until `replacement` sends an event, at which point the returned producer will send that event and switch to passing through events from `replacement` instead, regardless of whether `self` has sent events already.

### `take(last:)`

Wait until `self` completes and then forward the final `count` values
on the returned producer.

``` swift
public func take(last count: Int) -> SignalProducer<Value, Error> 
```

#### Parameters

  - count: Number of last events to send after `self` completes.

#### Returns

A producer that receives up to `count` values from `self` after `self` completes.

### `take(while:)`

Forward any values from `self` until `predicate` returns false, at which
point the returned producer will complete.

``` swift
public func take(while predicate: @escaping (Value) -> Bool) -> SignalProducer<Value, Error> 
```

#### Parameters

  - predicate: A closure that accepts value and returns `Bool` value whether `self` should forward it to `signal` and continue sending other events.

#### Returns

A producer that sends events until the values sent by `self` pass the given `predicate`.

### `zip(with:)`

Zip elements of two producers into pairs. The elements of any Nth pair
are the Nth elements of the two input producers.

``` swift
public func zip<U>(with other: SignalProducer<U, Error>) -> SignalProducer<(Value, U), Error> 
```

#### Parameters

  - other: A producer to zip values with.

#### Returns

A producer that sends tuples of `self` and `otherProducer`.

### `zip(with:)`

Zip elements of this producer and a signal into pairs. The elements of
any Nth pair are the Nth elements of the two.

``` swift
public func zip<U>(with other: Signal<U, Error>) -> SignalProducer<(Value, U), Error> 
```

#### Parameters

  - other: A signal to zip values with.

#### Returns

A producer that sends tuples of `self` and `otherSignal`.

### `attempt(operation:)`

Apply `operation` to values from `self` with `success`ful results
forwarded on the returned producer and `failure`s sent as `failed`
events.

``` swift
public func attempt(operation: @escaping (Value) -> Result<(), Error>) -> SignalProducer<Value, Error> 
```

#### Parameters

  - operation: A closure that accepts a value and returns a `Result`.

#### Returns

A producer that receives `success`ful `Result` as `value` event and `failure` as `failed` event.

### `attemptMap(_:)`

Apply `operation` to values from `self` with `success`ful results
mapped on the returned producer and `failure`s sent as `failed` events.

``` swift
public func attemptMap<U>(_ operation: @escaping (Value) -> Result<U, Error>) -> SignalProducer<U, Error> 
```

#### Parameters

  - operation: A closure that accepts a value and returns a result of a mapped value as `success`.

#### Returns

A producer that sends mapped values from `self` if returned `Result` is `success`ful, `failed` events otherwise.

### `throttle(_:on:)`

Throttle values sent by the receiver, so that at least `interval`
seconds pass between each, then forwards them on the given scheduler.

``` swift
public func throttle(_ interval: TimeInterval, on scheduler: DateSchedulerProtocol) -> SignalProducer<Value, Error> 
```

> 

  - norw: If `self` terminates while a value is being throttled, that
    value will be discarded and the returned producer will terminate
    immediately.

#### Parameters

  - interval: Number of seconds to wait between sent values.
  - scheduler: A scheduler to deliver events on.

#### Returns

A producer that sends values at least `interval` seconds appart on a given scheduler.

### `throttle(while:on:)`

Conditionally throttles values sent on the receiver whenever
`shouldThrottle` is true, forwarding values on the given scheduler.

``` swift
public func throttle<P: PropertyProtocol>(while shouldThrottle: P, on scheduler: SchedulerProtocol) -> SignalProducer<Value, Error>
		where P.Value == Bool
```

> 

> 

> 

#### Parameters

  - shouldThrottle: A boolean property that controls whether values should be throttled.
  - scheduler: A scheduler to deliver events on.

#### Returns

A producer that sends values only while `shouldThrottle` is false.

### `debounce(_:on:)`

Debounce values sent by the receiver, such that at least `interval`
seconds pass after the receiver has last sent a value, then
forward the latest value on the given scheduler.

``` swift
public func debounce(_ interval: TimeInterval, on scheduler: DateSchedulerProtocol) -> SignalProducer<Value, Error> 
```

> 

> 

#### Parameters

  - interval: A number of seconds to wait before sending a value.
  - scheduler: A scheduler to send values on.

#### Returns

A producer that sends values that are sent from `self` at least `interval` seconds apart.

### `timeout(after:raising:on:)`

Forward events from `self` until `interval`. Then if producer isn't
completed yet, fails with `error` on `scheduler`.

``` swift
public func timeout(after interval: TimeInterval, raising error: Error, on scheduler: DateSchedulerProtocol) -> SignalProducer<Value, Error> 
```

> 

#### Parameters

  - interval: Number of seconds to wait for `self` to complete.
  - error: Error to send with `failed` event if `self` is not completed when `interval` passes.
  - scheduler: A scheduler to deliver error on.

#### Returns

A producer that sends events for at most `interval` seconds, then, if not `completed` - sends `error` with `failed` event on `scheduler`.

### `skipNil()`

Unwraps non-`nil` values and forwards them on the returned signal, `nil`
values are dropped.

``` swift
public func skipNil() -> SignalProducer<Value.Wrapped, Error> 
```

#### Returns

A producer that sends only non-nil values.

### `dematerialize()`

The inverse of materialize(), this will translate a producer of `Event`
*values* into a producer of those events themselves.

``` swift
public func dematerialize() -> SignalProducer<Value.Value, Value.Error> 
```

#### Returns

A producer that sends values carried by `self` events.

### `promoteErrors(_:)`

Promote a producer that does not generate failures into one that can.

``` swift
public func promoteErrors<F: Swift.Error>(_: F.Type) -> SignalProducer<Value, F> 
```

> 

  - \_ An `ErrorType`.

#### Returns

A producer that has an instantiatable `ErrorType`.

### `timeout(after:raising:on:)`

Forward events from `self` until `interval`. Then if producer isn't
completed yet, fails with `error` on `scheduler`.

``` swift
public func timeout<NewError: Swift.Error>(
		after interval: TimeInterval,
		raising error: NewError,
		on scheduler: DateSchedulerProtocol
	) -> SignalProducer<Value, NewError> 
```

> 

#### Parameters

  - interval: Number of seconds to wait for `self` to complete.
  - error: Error to send with `failed` event if `self` is not completed when `interval` passes.
  - scheudler: A scheduler to deliver error on.

#### Returns

A producer that sends events for at most `interval` seconds, then, if not `completed` - sends `error` with `failed` event on `scheduler`.

### `then(_:)`

Wait for completion of `self`, *then* forward all events from
`replacement`.

``` swift
public func then<U, NewError: Swift.Error>(_ replacement: SignalProducer<U, NewError>) -> SignalProducer<U, NewError> 
```

> 

#### Parameters

  - replacement: A producer to start when `self` completes.

#### Returns

A producer that sends events from `self` and then from `replacement` when `self` completes.

### `attempt(_:)`

Apply a failable `operation` to values from `self` with successful
results forwarded on the returned producer and thrown errors sent as
failed events.

``` swift
public func attempt(_ operation: @escaping (Value) throws -> Void) -> SignalProducer<Value, AnyError> 
```

#### Parameters

  - operation: A failable closure that accepts a value.

#### Returns

A producer that forwards successes as `value` events and thrown errors as `failed` events.

### `attemptMap(_:)`

Apply a failable `operation` to values from `self` with successful
results mapped on the returned producer and thrown errors sent as
failed events.

``` swift
public func attemptMap<U>(_ operation: @escaping (Value) throws -> U) -> SignalProducer<U, AnyError> 
```

#### Parameters

  - operation: A failable closure that accepts a value and attempts to transform it.

#### Returns

A producer that sends successfully mapped values from `self`, or thrown errors as `failed` events.

### `attempt(_:)`

Create a `SignalProducer` that will attempt the given failable operation once for
each invocation of `start()`.

``` swift
public static func attempt(_ operation: @escaping () throws -> Value) -> SignalProducer<Value, Error> 
```

Upon success, the started producer will send the resulting value then
complete. Upon failure, the started signal will fail with the error that
occurred.

#### Parameters

  - operation: A failable closure.

#### Returns

A `SignalProducer` that will forward a success as a `value` event and then complete or `failed` event if the closure throws.

### `attempt(_:)`

Apply a failable `operation` to values from `self` with successful
results forwarded on the returned producer and thrown errors sent as
failed events.

``` swift
public func attempt(_ operation: @escaping (Value) throws -> Void) -> SignalProducer<Value, AnyError> 
```

#### Parameters

  - operation: A failable closure that accepts a value.

#### Returns

A producer that forwards successes as `value` events and thrown errors as `failed` events.

### `attemptMap(_:)`

Apply a failable `operation` to values from `self` with successful
results mapped on the returned producer and thrown errors sent as
failed events.

``` swift
public func attemptMap<U>(_ operation: @escaping (Value) throws -> U) -> SignalProducer<U, AnyError> 
```

#### Parameters

  - operation: A failable closure that accepts a value and attempts to transform it.

#### Returns

A producer that sends successfully mapped values from `self`, or thrown errors as `failed` events.

### `skipRepeats()`

Forward only those values from `self` which are not duplicates of the
immedately preceding value.

``` swift
public func skipRepeats() -> SignalProducer<Value, Error> 
```

> 

#### Returns

A producer that does not send two equal values sequentially.

### `uniqueValues(_:)`

Forward only those values from `self` that have unique identities across
the set of all values that have been seen.

``` swift
public func uniqueValues<Identity: Hashable>(_ transform: @escaping (Value) -> Identity) -> SignalProducer<Value, Error> 
```

> 

#### Parameters

  - transform: A closure that accepts a value and returns identity value.

#### Returns

A producer that sends unique values during its lifetime.

### `uniqueValues()`

Forward only those values from `self` that are unique across the set of
all values that have been seen.

``` swift
public func uniqueValues() -> SignalProducer<Value, Error> 
```

> 

#### Returns

A producer that sends unique values during its lifetime.

### `on(starting:started:event:failed:completed:interrupted:terminated:disposed:value:)`

Injects side effects to be performed upon the specified producer events.

``` swift
public func on(
		starting: (() -> Void)? = nil,
		started: (() -> Void)? = nil,
		event: ((Event<Value, Error>) -> Void)? = nil,
		failed: ((Error) -> Void)? = nil,
		completed: (() -> Void)? = nil,
		interrupted: (() -> Void)? = nil,
		terminated: (() -> Void)? = nil,
		disposed: (() -> Void)? = nil,
		value: ((Value) -> Void)? = nil
	) -> SignalProducer<Value, Error> 
```

> 

#### Parameters

  - starting: A closure that is invoked before the producer is started.
  - started: A closure that is invoked after the producer is started.
  - event: A closure that accepts an event and is invoked on every received event.
  - failed: A closure that accepts error object and is invoked for `failed` event.
  - completed: A closure that is invoked for `completed` event.
  - interrupted: A closure that is invoked for `interrupted` event.
  - terminated: A closure that is invoked for any terminating event.
  - disposed: A closure added as disposable when signal completes.
  - value: A closure that accepts a value from `value` event.

#### Returns

A producer with attached side-effects for given event cases.

### `start(on:)`

Start the returned producer on the given `Scheduler`.

``` swift
public func start(on scheduler: SchedulerProtocol) -> SignalProducer<Value, Error> 
```

> 

> 

#### Parameters

  - scheduler: A scheduler to deliver events on.

#### Returns

A producer that will deliver events on given `scheduler` when started.

### `combineLatest(_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>) -> SignalProducer<(Value, B), Error> 
```

### `combineLatest(_:_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>) -> SignalProducer<(Value, B, C), Error> 
```

### `combineLatest(_:_:_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>) -> SignalProducer<(Value, B, C, D), Error> 
```

### `combineLatest(_:_:_:_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>) -> SignalProducer<(Value, B, C, D, E), Error> 
```

### `combineLatest(_:_:_:_:_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>) -> SignalProducer<(Value, B, C, D, E, F), Error> 
```

### `combineLatest(_:_:_:_:_:_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F, G>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>, _ g: SignalProducer<G, Error>) -> SignalProducer<(Value, B, C, D, E, F, G), Error> 
```

### `combineLatest(_:_:_:_:_:_:_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F, G, H>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>, _ g: SignalProducer<G, Error>, _ h: SignalProducer<H, Error>) -> SignalProducer<(Value, B, C, D, E, F, G, H), Error> 
```

### `combineLatest(_:_:_:_:_:_:_:_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F, G, H, I>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>, _ g: SignalProducer<G, Error>, _ h: SignalProducer<H, Error>, _ i: SignalProducer<I, Error>) -> SignalProducer<(Value, B, C, D, E, F, G, H, I), Error> 
```

### `combineLatest(_:_:_:_:_:_:_:_:_:_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F, G, H, I, J>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>, _ g: SignalProducer<G, Error>, _ h: SignalProducer<H, Error>, _ i: SignalProducer<I, Error>, _ j: SignalProducer<J, Error>) -> SignalProducer<(Value, B, C, D, E, F, G, H, I, J), Error> 
```

### `combineLatest(_:)`

Combines the values of all the given producers, in the manner described by
`combineLatestWith`. Will return an empty `SignalProducer` if the sequence is empty.

``` swift
public static func combineLatest<S: Sequence>(_ producers: S) -> SignalProducer<[Value], Error>
		where S.Iterator.Element == SignalProducer<Value, Error>
```

### `zip(_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>) -> SignalProducer<(Value, B), Error> 
```

### `zip(_:_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>) -> SignalProducer<(Value, B, C), Error> 
```

### `zip(_:_:_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>) -> SignalProducer<(Value, B, C, D), Error> 
```

### `zip(_:_:_:_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>) -> SignalProducer<(Value, B, C, D, E), Error> 
```

### `zip(_:_:_:_:_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>) -> SignalProducer<(Value, B, C, D, E, F), Error> 
```

### `zip(_:_:_:_:_:_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F, G>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>, _ g: SignalProducer<G, Error>) -> SignalProducer<(Value, B, C, D, E, F, G), Error> 
```

### `zip(_:_:_:_:_:_:_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F, G, H>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>, _ g: SignalProducer<G, Error>, _ h: SignalProducer<H, Error>) -> SignalProducer<(Value, B, C, D, E, F, G, H), Error> 
```

### `zip(_:_:_:_:_:_:_:_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F, G, H, I>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>, _ g: SignalProducer<G, Error>, _ h: SignalProducer<H, Error>, _ i: SignalProducer<I, Error>) -> SignalProducer<(Value, B, C, D, E, F, G, H, I), Error> 
```

### `zip(_:_:_:_:_:_:_:_:_:_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F, G, H, I, J>(_ a: SignalProducer<Value, Error>, _ b: SignalProducer<B, Error>, _ c: SignalProducer<C, Error>, _ d: SignalProducer<D, Error>, _ e: SignalProducer<E, Error>, _ f: SignalProducer<F, Error>, _ g: SignalProducer<G, Error>, _ h: SignalProducer<H, Error>, _ i: SignalProducer<I, Error>, _ j: SignalProducer<J, Error>) -> SignalProducer<(Value, B, C, D, E, F, G, H, I, J), Error> 
```

### `zip(_:)`

Zips the values of all the given producers, in the manner described by
`zipWith`. Will return an empty `SignalProducer` if the sequence is empty.

``` swift
public static func zip<S: Sequence>(_ producers: S) -> SignalProducer<[Value], Error>
		where S.Iterator.Element == SignalProducer<Value, Error>
```

### `` `repeat`(_:) ``

Repeat `self` a total of `count` times. In other words, start producer
`count` number of times, each one after previously started producer
completes.

``` swift
public func `repeat`(_ count: Int) -> SignalProducer<Value, Error> 
```

> 

> 

#### Parameters

  - count: Number of repetitions.

#### Returns

A signal producer start sequentially starts `self` after previously started producer completes.

### `retry(upTo:)`

Ignore failures up to `count` times.

``` swift
public func retry(upTo count: Int) -> SignalProducer<Value, Error> 
```

> 

#### Parameters

  - count: Number of retries.

#### Returns

A signal producer that restarts up to `count` times.

### `then(_:)`

Wait for completion of `self`, *then* forward all events from
`replacement`. Any failure or interruption sent from `self` is
forwarded immediately, in which case `replacement` will not be started,
and none of its events will be be forwarded.

``` swift
public func then<U>(_ replacement: SignalProducer<U, Error>) -> SignalProducer<U, Error> 
```

> 

#### Parameters

  - replacement: A producer to start when `self` completes.

#### Returns

A producer that sends events from `self` and then from `replacement` when `self` completes.

### `then(_:)`

Wait for completion of `self`, *then* forward all events from
`replacement`. Any failure or interruption sent from `self` is
forwarded immediately, in which case `replacement` will not be started,
and none of its events will be be forwarded.

``` swift
public func then<U>(_ replacement: SignalProducer<U, NoError>) -> SignalProducer<U, Error> 
```

> 

#### Parameters

  - replacement: A producer to start when `self` completes.

#### Returns

A producer that sends events from `self` and then from `replacement` when `self` completes.

### `first()`

Start the producer, then block, waiting for the first value.

``` swift
public func first() -> Result<Value, Error>? 
```

When a single value or error is sent, the returned `Result` will
represent those cases. However, when no values are sent, `nil` will be
returned.

#### Returns

Result when single `value` or `failed` event is received. `nil` when no events are received.

### `single()`

Start the producer, then block, waiting for events:​ `value` and
`completed`.

``` swift
public func single() -> Result<Value, Error>? 
```

When a single value or error is sent, the returned `Result` will
represent those cases. However, when no values are sent, or when more
than one value is sent, `nil` will be returned.

#### Returns

Result when single `value` or `failed` event is received. `nil` when 0 or more than 1 events are received.

### `last()`

Start the producer, then block, waiting for the last value.

``` swift
public func last() -> Result<Value, Error>? 
```

When a single value or error is sent, the returned `Result` will
represent those cases. However, when no values are sent, `nil` will be
returned.

#### Returns

Result when single `value` or `failed` event is received. `nil` when no events are received.

### `wait()`

Starts the producer, then blocks, waiting for completion.

``` swift
public func wait() -> Result<(), Error> 
```

When a completion or error is sent, the returned `Result` will represent
those cases.

#### Returns

Result when single `completion` or `failed` event is received.

### `replayLazily(upTo:)`

Creates a new `SignalProducer` that will multicast values emitted by
the underlying producer, up to `capacity`.
This means that all clients of this `SignalProducer` will see the same
version of the emitted values/errors.

``` swift
public func replayLazily(upTo capacity: Int) -> SignalProducer<Value, Error> 
```

The underlying `SignalProducer` will not be started until `self` is
started for the first time. When subscribing to this producer, all
previous values (up to `capacity`) will be emitted, followed by any new
values.

If you find yourself needing *the current value* (the last buffered
value) you should consider using `PropertyType` instead, which, unlike
this operator, will guarantee at compile time that there's always a
buffered value. This operator is not recommended in most cases, as it
will introduce an implicit relationship between the original client and
the rest, so consider alternatives like `PropertyType`, or representing
your stream using a `Signal` instead.

This operator is only recommended when you absolutely need to introduce
a layer of caching in front of another `SignalProducer`.

  - precondtion: `capacity` must be non-negative integer.

#### Parameters

  - capcity: Number of values to hold.

#### Returns

A caching producer that will hold up to last `capacity` values.

## Requirements

### Value

The type of values being sent on the producer

``` swift
associatedtype Value
```

### Error

The type of error that can occur on the producer. If errors aren't possible
then `NoError` can be used.

``` swift
associatedtype Error: Swift.Error
```

### producer

Extracts a signal producer from the receiver.

``` swift
var producer: SignalProducer<Value, Error> 
```

### init(\_:​)

Initialize a signal

``` swift
init(_ startHandler: @escaping (Signal<Value, Error>.Observer, CompositeDisposable) -> Void)
```

### startWithSignal(\_:​)

Creates a Signal from the producer, passes it into the given closure,
then starts sending events on the Signal when the closure has returned.

``` swift
func startWithSignal(_ setup: (_ signal: Signal<Value, Error>, _ interrupter: Disposable) -> Void)
```
