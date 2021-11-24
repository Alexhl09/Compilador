# SignalProtocol

A protocol used to constraint `Signal` operators.

``` swift
public protocol SignalProtocol 
```

## Default Implementations

### `take(_:)`

``` swift
@available(*, unavailable, renamed:"take(first:)")
	public func take(_ count: Int) -> Signal<Value, Error> 
```

### `takeLast(_:)`

``` swift
@available(*, unavailable, renamed:"take(last:)")
	public func takeLast(_ count: Int) -> Signal<Value, Error> 
```

### `skip(_:)`

``` swift
@available(*, unavailable, renamed:"skip(first:)")
	public func skip(_ count: Int) -> Signal<Value, Error> 
```

### `observeOn(_:)`

``` swift
@available(*, unavailable, renamed:"observe(on:)")
	public func observeOn(_ scheduler: SchedulerProtocol) -> Signal<Value, Error> 
```

### `combineLatestWith(_:)`

``` swift
@available(*, unavailable, renamed:"combineLatest(with:)")
	public func combineLatestWith<S: SignalProtocol>(_ otherSignal: S) -> Signal<(Value, S.Value), Error> 
```

### `zipWith(_:)`

``` swift
@available(*, unavailable, renamed:"zip(with:)")
	public func zipWith<S: SignalProtocol>(_ otherSignal: S) -> Signal<(Value, S.Value), Error> 
```

### `takeUntil(_:)`

``` swift
@available(*, unavailable, renamed:"take(until:)")
	public func takeUntil(_ trigger: Signal<(), NoError>) -> Signal<Value, Error> 
```

### `takeUntilReplacement(_:)`

``` swift
@available(*, unavailable, renamed:"take(untilReplacement:)")
	public func takeUntilReplacement(_ replacement: Signal<Value, Error>) -> Signal<Value, Error> 
```

### `skipUntil(_:)`

``` swift
@available(*, unavailable, renamed:"skip(until:)")
	public func skipUntil(_ trigger: Signal<(), NoError>) -> Signal<Value, Error> 
```

### `skipWhile(_:)`

``` swift
@available(*, unavailable, renamed:"skip(while:)")
	public func skipWhile(_ predicate: (Value) -> Bool) -> Signal<Value, Error> 
```

### `takeWhile(_:)`

``` swift
@available(*, unavailable, renamed:"take(while:)")
	public func takeWhile(_ predicate: (Value) -> Bool) -> Signal<Value, Error> 
```

### `timeoutWithError(_:afterInterval:onScheduler:)`

``` swift
@available(*, unavailable, renamed:"timeout(after:raising:on:)")
	public func timeoutWithError(_ error: Error, afterInterval: TimeInterval, onScheduler: DateSchedulerProtocol) -> Signal<Value, Error> 
```

### `observeNext(_:)`

``` swift
@available(*, unavailable, message: "This Signal may emit errors which must be handled explicitly, or observed using `observeResult(_:)`")
	public func observeNext(_ next: (Value) -> Void) -> Disposable? 
```

### `ignoreNil()`

``` swift
@available(*, unavailable, renamed:"skipNil()")
	public func ignoreNil() -> SignalProducer<Value.Wrapped, Error> 
```

### `observeNext(_:)`

``` swift
@available(*, unavailable, renamed: "observeValues")
	public func observeNext(_ next: (Value) -> Void) -> Disposable? 
```

### `logEvents(identifier:events:fileName:functionName:lineNumber:logger:)`

Logs all events that the receiver sends. By default, it will print to
the standard output.

``` swift
public func logEvents(identifier: String = "", events: Set<LoggingEvent.Signal> = LoggingEvent.Signal.allEvents, fileName: String = #file, functionName: String = #function, lineNumber: Int = #line, logger: @escaping EventLogger = defaultEventLog) -> Signal<Value, Error> 
```

#### Parameters

  - identifier: a string to identify the Signal firing events.
  - events: Types of events to log.
  - fileName: Name of the file containing the code which fired the event.
  - functionName: Function where event was fired.
  - lineNumber: Line number where event was fired.
  - logger: Logger that logs the events.

#### Returns

Signal that, when observed, logs the fired events.

### `flatten(_:)`

Flattens the inner producers sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner producers sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Value.Error> 
```

> 

> 

#### Parameters

  - strategy: Strategy used when flattening signals.

### `flatten(_:)`

Flattens the inner producers sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Value.Error> 
```

> 

#### Parameters

  - strategy: Strategy used when flattening signals.

### `flatten(_:)`

Flattens the inner producers sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner signals sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner signals sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Value.Error> 
```

> 

> 

### `flatten(_:)`

Flattens the inner signals sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Value.Error> 
```

> 

### `flatten(_:)`

Flattens the inner signals sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Error> 
```

> 

> 

### `flatten(_:)`

Flattens the `sequence` value sent by `signal` according to
the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Iterator.Element, Error> 
```

### `flatten(_:)`

Flattens the inner properties sent upon `signal` (into a single signal of
values), according to the semantics of the given strategy.

``` swift
public func flatten(_ strategy: FlattenStrategy) -> Signal<Value.Value, Error> 
```

> 

### `merge(_:)`

Merges the given signals into a single `Signal` that will emit all
values from each of them, and complete when all of them have completed.

``` swift
public static func merge<Seq: Sequence, S: SignalProtocol>(_ signals: Seq) -> Signal<Value, Error>
		where S.Value == Value, S.Error == Error, Seq.Iterator.Element == S
```

### `merge(_:)`

Merges the given signals into a single `Signal` that will emit all
values from each of them, and complete when all of them have completed.

``` swift
public static func merge<S: SignalProtocol>(_ signals: S...) -> Signal<Value, Error>
		where S.Value == Value, S.Error == Error
```

### `flatMap(_:transform:)`

Maps each event from `signal` to a new signal, then flattens the
resulting producers (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> SignalProducer<U, Error>) -> Signal<U, Error> 
```

If `signal` or any of the created producers fail, the returned signal
will forward that failure immediately.

### `flatMap(_:transform:)`

Maps each event from `signal` to a new signal, then flattens the
resulting producers (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> SignalProducer<U, NoError>) -> Signal<U, Error> 
```

If `signal` fails, the returned signal will forward that failure
immediately.

### `flatMap(_:transform:)`

Maps each event from `signal` to a new signal, then flattens the
resulting signals (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> Signal<U, Error>) -> Signal<U, Error> 
```

If `signal` or any of the created signals emit an error, the returned
signal will forward that error immediately.

### `flatMap(_:transform:)`

Maps each event from `signal` to a new signal, then flattens the
resulting signals (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> Signal<U, NoError>) -> Signal<U, Error> 
```

If `signal` emits an error, the returned signal will forward that
error immediately.

### `flatMap(_:transform:)`

Maps each event from `signal` to a new property, then flattens the
resulting properties (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<P: PropertyProtocol>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> P) -> Signal<P.Value, Error> 
```

If `signal` emits an error, the returned signal will forward that
error immediately.

### `flatMap(_:transform:)`

Maps each event from `signal` to a new signal, then flattens the
resulting signals (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U, E>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> SignalProducer<U, E>) -> Signal<U, E> 
```

If any of the created signals emit an error, the returned signal
will forward that error immediately.

### `flatMap(_:transform:)`

Maps each event from `signal` to a new signal, then flattens the
resulting signals (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> SignalProducer<U, NoError>) -> Signal<U, NoError> 
```

### `flatMap(_:transform:)`

Maps each event from `signal` to a new signal, then flattens the
resulting signals (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U, E>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> Signal<U, E>) -> Signal<U, E> 
```

If any of the created signals emit an error, the returned signal
will forward that error immediately.

### `flatMap(_:transform:)`

Maps each event from `signal` to a new signal, then flattens the
resulting signals (into a signal of values), according to the
semantics of the given strategy.

``` swift
public func flatMap<U>(_ strategy: FlattenStrategy, transform: @escaping (Value) -> Signal<U, NoError>) -> Signal<U, NoError> 
```

### `flatMapError(_:)`

Catches any failure that may occur on the input signal, mapping to a new
producer that starts in its place.

``` swift
public func flatMapError<F>(_ handler: @escaping (Error) -> SignalProducer<Value, F>) -> Signal<Value, F> 
```

### `observe(_:)`

Convenience override for observe(\_:​) to allow trailing-closure style
invocations.

``` swift
@discardableResult
	public func observe(_ action: @escaping Signal<Value, Error>.Observer.Action) -> Disposable? 
```

#### Parameters

  - action: A closure that will accept an event of the signal

#### Returns

An optional `Disposable` which can be used to stop the invocation of the callback. Disposing of the Disposable will have no effect on the Signal itself.

### `observeResult(_:)`

Observe the `Signal` by invoking the given callback when `value` or
`failed` event are received.

``` swift
@discardableResult
	public func observeResult(_ result: @escaping (Result<Value, Error>) -> Void) -> Disposable? 
```

#### Parameters

  - result: A closure that accepts instance of `Result<Value, Error>` enum that contains either a `.success(Value)` or `.failure<Error>` case.

#### Returns

An optional `Disposable` which can be used to stop the invocation of the callback. Disposing of the Disposable will have no effect on the Signal itself.

### `observeCompleted(_:)`

Observe the `Signal` by invoking the given callback when a `completed`
event is received.

``` swift
@discardableResult
	public func observeCompleted(_ completed: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - completed: A closure that is called when `completed` event is received.

#### Returns

An optional `Disposable` which can be used to stop the invocation of the callback. Disposing of the Disposable will have no effect on the Signal itself.

### `observeFailed(_:)`

Observe the `Signal` by invoking the given callback when a `failed`
event is received.

``` swift
@discardableResult
	public func observeFailed(_ error: @escaping (Error) -> Void) -> Disposable? 
```

Returns a Disposable which can be used to stop the invocation of the
callback. Disposing of the Disposable will have no effect on the Signal
itself.

#### Parameters

  - error: A closure that is called when failed event is received. It accepts an error parameter.

### `observeInterrupted(_:)`

Observe the `Signal` by invoking the given callback when an
`interrupted` event is received. If the Signal has already terminated,
the callback will be invoked immediately.

``` swift
@discardableResult
	public func observeInterrupted(_ interrupted: @escaping () -> Void) -> Disposable? 
```

#### Parameters

  - interrupted: A closure that is invoked when `interrupted` event is received

#### Returns

An optional `Disposable` which can be used to stop the invocation of the callback. Disposing of the Disposable will have no effect on the Signal itself.

### `observeValues(_:)`

Observe the Signal by invoking the given callback when `value` events are
received.

``` swift
@discardableResult
	public func observeValues(_ value: @escaping (Value) -> Void) -> Disposable? 
```

#### Parameters

  - value: A closure that accepts a value when `value` event is received.

#### Returns

An optional `Disposable` which can be used to stop the invocation of the callback. Disposing of the Disposable will have no effect on the Signal itself.

### `map(_:)`

Map each value in the signal to a new value.

``` swift
public func map<U>(_ transform: @escaping (Value) -> U) -> Signal<U, Error> 
```

#### Parameters

  - transform: A closure that accepts a value from the `value` event and returns a new value.

#### Returns

A signal that will send new values.

### `mapError(_:)`

Map errors in the signal to a new error.

``` swift
public func mapError<F>(_ transform: @escaping (Error) -> F) -> Signal<Value, F> 
```

#### Parameters

  - transform: A closure that accepts current error object and returns a new type of error object.

#### Returns

A signal that will send new type of errors.

### `filter(_:)`

Preserve only the values of the signal that pass the given predicate.

``` swift
public func filter(_ predicate: @escaping (Value) -> Bool) -> Signal<Value, Error> 
```

#### Parameters

  - predicate: A closure that accepts value and returns `Bool` denoting whether value has passed the test.

#### Returns

A signal that will send only the values passing the given predicate.

### `skipNil()`

Unwrap non-`nil` values and forward them on the returned signal, `nil`
values are dropped.

``` swift
public func skipNil() -> Signal<Value.Wrapped, Error> 
```

#### Returns

A signal that sends only non-nil values.

### `take(first:)`

Take up to `n` values from the signal and then complete.

``` swift
public func take(first count: Int) -> Signal<Value, Error> 
```

> 

#### Parameters

  - count: A number of values to take from the signal.

#### Returns

A signal that will yield the first `count` values from `self`

### `collect()`

Collect all values sent by the signal then forward them as a single
array and complete.

``` swift
public func collect() -> Signal<[Value], Error> 
```

> 

#### Returns

A signal that will yield an array of values when `self` completes.

### `collect(count:)`

Collect at most `count` values from `self`, forward them as a single
array and complete.

``` swift
public func collect(count: Int) -> Signal<[Value], Error> 
```

> 

> 

> 

### `collect(_:)`

Collect values that pass the given predicate then forward them as a
single array and complete.

``` swift
public func collect(_ predicate: @escaping (_ values: [Value]) -> Bool) -> Signal<[Value], Error> 
```

> 

``` 
let (signal, observer) = Signal<Int, NoError>.pipe()

signal
    .collect { values in values.reduce(0, combine: +) == 8 }
    .observeValues { print($0) }

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

A signal that collects values passing the predicate and, when `self` completes, forwards them as a single array and complets.

### `collect(_:)`

Repeatedly collect an array of values up to a matching `value` value.
Then forward them as single array and wait for value events.

``` swift
public func collect(_ predicate: @escaping (_ values: [Value], _ value: Value) -> Bool) -> Signal<[Value], Error> 
```

> 

``` 
let (signal, observer) = Signal<Int, NoError>.pipe()

signal
    .collect { values, value in value == 7 }
    .observeValues { print($0) }

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

  - predicate: Predicate to match when values should be sent (returning `true`) or alternatively when they should be collected (where it should return `false`). The most recent value (`value`) is not included in `values` and will be the start of the next array of values if the predicate returns `true`.

#### Returns

A signal that will yield an array of values based on a predicate which matches the values collected and the next value.

### `observe(on:)`

Forward all events onto the given scheduler, instead of whichever
scheduler they originally arrived upon.

``` swift
public func observe(on scheduler: SchedulerProtocol) -> Signal<Value, Error> 
```

#### Parameters

  - scheduler: A scheduler to deliver events on.

#### Returns

A signal that will yield `self` values on provided scheduler.

### `combineLatest(with:)`

Combine the latest value of the receiver with the latest value from the
given signal.

``` swift
public func combineLatest<U>(with other: Signal<U, Error>) -> Signal<(Value, U), Error> 
```

> 

> 

#### Parameters

  - otherSignal: A signal to combine `self`'s value with.

#### Returns

A signal that will yield a tuple containing values of `self` and given signal.

### `delay(_:on:)`

Delay `value` and `completed` events by the given interval, forwarding
them on the given scheduler.

``` swift
public func delay(_ interval: TimeInterval, on scheduler: DateSchedulerProtocol) -> Signal<Value, Error> 
```

> 

#### Parameters

  - interval: Interval to delay `value` and `completed` events by.
  - scheduler: A scheduler to deliver delayed events on.

#### Returns

A signal that will delay `value` and `completed` events and will yield them on given scheduler.

### `skip(first:)`

Skip first `count` number of values then act as usual.

``` swift
public func skip(first count: Int) -> Signal<Value, Error> 
```

#### Parameters

  - count: A number of values to skip.

#### Returns

A signal that will skip the first `count` values, then forward everything afterward.

### `materialize()`

Treat all Events from `self` as plain values, allowing them to be
manipulated just like any other value.

``` swift
public func materialize() -> Signal<Event<Value, Error>, NoError> 
```

In other words, this brings Events “into the monad”.

> 

#### Returns

A signal that sends events as its values.

### `dematerialize()`

Translate a signal of `Event` *values* into a signal of those events
themselves.

``` swift
public func dematerialize() -> Signal<Value.Value, Value.Error> 
```

#### Returns

A signal that sends values carried by `self` events.

### `on(event:failed:completed:interrupted:terminated:disposed:value:)`

Inject side effects to be performed upon the specified signal events.

``` swift
public func on(
		event: ((Event<Value, Error>) -> Void)? = nil,
		failed: ((Error) -> Void)? = nil,
		completed: (() -> Void)? = nil,
		interrupted: (() -> Void)? = nil,
		terminated: (() -> Void)? = nil,
		disposed: (() -> Void)? = nil,
		value: ((Value) -> Void)? = nil
	) -> Signal<Value, Error> 
```

#### Parameters

  - event: A closure that accepts an event and is invoked on every received event.
  - failed: A closure that accepts error object and is invoked for failed event.
  - completed: A closure that is invoked for `completed` event.
  - interrupted: A closure that is invoked for `interrupted` event.
  - terminated: A closure that is invoked for any terminating event.
  - disposed: A closure added as disposable when signal completes.
  - value: A closure that accepts a value from `value` event.

#### Returns

A signal with attached side-effects for given event cases.

### `sample(with:)`

Forward the latest value from `self` with the value from `sampler` as a
tuple, only when`sampler` sends a `value` event.

``` swift
public func sample<T>(with sampler: Signal<T, NoError>) -> Signal<(Value, T), Error> 
```

> 

#### Parameters

  - sampler: A signal that will trigger the delivery of `value` event from `self`.

#### Returns

A signal that will send values from `self` and `sampler`, sampled (possibly multiple times) by `sampler`, then complete once both input signals have completed, or interrupt if either input signal is interrupted.

### `sample(on:)`

Forward the latest value from `self` whenever `sampler` sends a `value`
event.

``` swift
public func sample(on sampler: Signal<(), NoError>) -> Signal<Value, Error> 
```

> 

#### Parameters

  - sampler: A signal that will trigger the delivery of `value` event from `self`.

#### Returns

A signal that will send values from `self`, sampled (possibly multiple times) by `sampler`, then complete once both input signals have completed, or interrupt if either input signal is interrupted.

### `withLatest(from:)`

Forward the latest value from `samplee` with the value from `self` as a
tuple, only when `self` sends a `value` event.
This is like a flipped version of `sample(with:​)`, but `samplee`'s
terminal events are completely ignored.

``` swift
public func withLatest<U>(from samplee: Signal<U, NoError>) -> Signal<(Value, U), Error> 
```

> 

#### Parameters

  - samplee: A signal whose latest value is sampled by `self`.

#### Returns

A signal that will send values from `self` and `samplee`, sampled (possibly multiple times) by `self`, then terminate once `self` has terminated. **`samplee`'s terminated events are ignored**.

### `withLatest(from:)`

Forward the latest value from `samplee` with the value from `self` as a
tuple, only when `self` sends a `value` event.
This is like a flipped version of `sample(with:​)`, but `samplee`'s
terminal events are completely ignored.

``` swift
public func withLatest<U>(from samplee: SignalProducer<U, NoError>) -> Signal<(Value, U), Error> 
```

> 

#### Parameters

  - samplee: A producer whose latest value is sampled by `self`.

#### Returns

A signal that will send values from `self` and `samplee`, sampled (possibly multiple times) by `self`, then terminate once `self` has terminated. **`samplee`'s terminated events are ignored**.

### `take(during:)`

Forwards events from `self` until `lifetime` ends, at which point the
returned signal will complete.

``` swift
public func take(during lifetime: Lifetime) -> Signal<Value, Error> 
```

#### Parameters

  - lifetime: A lifetime whose `ended` signal will cause the returned signal to complete.

#### Returns

A signal that will deliver events until `lifetime` ends.

### `take(until:)`

Forward events from `self` until `trigger` sends a `value` or
`completed` event, at which point the returned signal will complete.

``` swift
public func take(until trigger: Signal<(), NoError>) -> Signal<Value, Error> 
```

#### Parameters

  - trigger: A signal whose `value` or `completed` events will stop the delivery of `value` events from `self`.

#### Returns

A signal that will deliver events until `trigger` sends `value` or `completed` events.

### `skip(until:)`

Do not forward any values from `self` until `trigger` sends a `value` or
`completed` event, at which point the returned signal behaves exactly
like `signal`.

``` swift
public func skip(until trigger: Signal<(), NoError>) -> Signal<Value, Error> 
```

#### Parameters

  - trigger: A signal whose `value` or `completed` events will start the deliver of events on `self`.

#### Returns

A signal that will deliver events once the `trigger` sends `value` or `completed` events.

### `combinePrevious(_:)`

Forward events from `self` with history:​ values of the returned signal
are a tuples whose first member is the previous value and whose second member
is the current value. `initial` is supplied as the first member when `self`
sends its first value.

``` swift
public func combinePrevious(_ initial: Value) -> Signal<(Value, Value), Error> 
```

#### Parameters

  - initial: A value that will be combined with the first value sent by `self`.

#### Returns

A signal that sends tuples that contain previous and current sent values of `self`.

### `reduce(_:_:)`

Send only the final value and then immediately completes.

``` swift
public func reduce<U>(_ initial: U, _ combine: @escaping (U, Value) -> U) -> Signal<U, Error> 
```

#### Parameters

  - initial: Initial value for the accumulator.
  - combine: A closure that accepts accumulator and sent value of `self`.

#### Returns

A signal that sends accumulated value after `self` completes.

### `scan(_:_:)`

Aggregate values into a single combined value. When `self` emits its
first value, `combine` is invoked with `initial` as the first argument
and that emitted value as the second argument. The result is emitted
from the signal returned from `scan`. That result is then passed to
`combine` as the first argument when the next value is emitted, and so
on.

``` swift
public func scan<U>(_ initial: U, _ combine: @escaping (U, Value) -> U) -> Signal<U, Error> 
```

#### Parameters

  - initial: Initial value for the accumulator.
  - combine: A closure that accepts accumulator and sent value of `self`.

#### Returns

A signal that sends accumulated value each time `self` emits own value.

### `skipRepeats()`

Forward only those values from `self` which are not duplicates of the
immedately preceding value.

``` swift
public func skipRepeats() -> Signal<Value, Error> 
```

> 

#### Returns

A signal that does not send two equal values sequentially.

### `skipRepeats(_:)`

Forward only those values from `self` which do not pass `isRepeat` with
respect to the previous value.

``` swift
public func skipRepeats(_ isRepeat: @escaping (Value, Value) -> Bool) -> Signal<Value, Error> 
```

> 

#### Parameters

  - isRepeate: A closure that accepts previous and current values of `self` and returns `Bool` whether these values are repeating.

#### Returns

A signal that forwards only those values that fail given `isRepeat` predicate.

### `skip(while:)`

Do not forward any values from `self` until `predicate` returns false,
at which point the returned signal behaves exactly like `signal`.

``` swift
public func skip(while predicate: @escaping (Value) -> Bool) -> Signal<Value, Error> 
```

#### Parameters

  - predicate: A closure that accepts a value and returns whether `self` should still not forward that value to a `signal`.

#### Returns

A signal that sends only forwarded values from `self`.

### `take(untilReplacement:)`

Forward events from `self` until `replacement` begins sending events.

``` swift
public func take(untilReplacement signal: Signal<Value, Error>) -> Signal<Value, Error> 
```

#### Parameters

  - replacement: A signal to wait to wait for values from and start sending them as a replacement to `self`'s values.

#### Returns

A signal which passes through `value`, failed, and `interrupted` events from `self` until `replacement` sends an event, at which point the returned signal will send that event and switch to passing through events from `replacement` instead, regardless of whether `self` has sent events already.

### `take(last:)`

Wait until `self` completes and then forward the final `count` values
on the returned signal.

``` swift
public func take(last count: Int) -> Signal<Value, Error> 
```

#### Parameters

  - count: Number of last events to send after `self` completes.

#### Returns

A signal that receives up to `count` values from `self` after `self` completes.

### `take(while:)`

Forward any values from `self` until `predicate` returns false, at which
point the returned signal will complete.

``` swift
public func take(while predicate: @escaping (Value) -> Bool) -> Signal<Value, Error> 
```

#### Parameters

  - predicate: A closure that accepts value and returns `Bool` value whether `self` should forward it to `signal` and continue sending other events.

#### Returns

A signal that sends events until the values sent by `self` pass the given `predicate`.

### `zip(with:)`

Zip elements of two signals into pairs. The elements of any Nth pair
are the Nth elements of the two input signals.

``` swift
public func zip<U>(with other: Signal<U, Error>) -> Signal<(Value, U), Error> 
```

#### Parameters

  - otherSignal: A signal to zip values with.

#### Returns

A signal that sends tuples of `self` and `otherSignal`.

### `throttle(_:on:)`

Throttle values sent by the receiver, so that at least `interval`
seconds pass between each, then forwards them on the given scheduler.

``` swift
public func throttle(_ interval: TimeInterval, on scheduler: DateSchedulerProtocol) -> Signal<Value, Error> 
```

> 

> 

> 

#### Parameters

  - interval: Number of seconds to wait between sent values.
  - scheduler: A scheduler to deliver events on.

#### Returns

A signal that sends values at least `interval` seconds appart on a given scheduler.

### `throttle(while:on:)`

Conditionally throttles values sent on the receiver whenever
`shouldThrottle` is true, forwarding values on the given scheduler.

``` swift
public func throttle<P: PropertyProtocol>(while shouldThrottle: P, on scheduler: SchedulerProtocol) -> Signal<Value, Error>
		where P.Value == Bool
```

> 

> 

> 

#### Parameters

  - shouldThrottle: A boolean property that controls whether values should be throttled.
  - scheduler: A scheduler to deliver events on.

#### Returns

A signal that sends values only while `shouldThrottle` is false.

### `debounce(_:on:)`

Debounce values sent by the receiver, such that at least `interval`
seconds pass after the receiver has last sent a value, then forward the
latest value on the given scheduler.

``` swift
public func debounce(_ interval: TimeInterval, on scheduler: DateSchedulerProtocol) -> Signal<Value, Error> 
```

> 

> 

#### Parameters

  - interval: A number of seconds to wait before sending a value.
  - scheduler: A scheduler to send values on.

#### Returns

A signal that sends values that are sent from `self` at least `interval` seconds apart.

### `uniqueValues(_:)`

Forward only those values from `self` that have unique identities across
the set of all values that have been seen.

``` swift
public func uniqueValues<Identity: Hashable>(_ transform: @escaping (Value) -> Identity) -> Signal<Value, Error> 
```

> 

#### Parameters

  - transform: A closure that accepts a value and returns identity value.

#### Returns

A signal that sends unique values during its lifetime.

### `uniqueValues()`

Forward only those values from `self` that are unique across the set of
all values that have been seen.

``` swift
public func uniqueValues() -> Signal<Value, Error> 
```

> 

#### Returns

A signal that sends unique values during its lifetime.

### `combineLatest(_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>) -> Signal<(Value, B), Error> 
```

### `combineLatest(_:_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>) -> Signal<(Value, B, C), Error> 
```

### `combineLatest(_:_:_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>) -> Signal<(Value, B, C, D), Error> 
```

### `combineLatest(_:_:_:_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>) -> Signal<(Value, B, C, D, E), Error> 
```

### `combineLatest(_:_:_:_:_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>) -> Signal<(Value, B, C, D, E, F), Error> 
```

### `combineLatest(_:_:_:_:_:_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F, G>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>, _ g: Signal<G, Error>) -> Signal<(Value, B, C, D, E, F, G), Error> 
```

### `combineLatest(_:_:_:_:_:_:_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F, G, H>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>, _ g: Signal<G, Error>, _ h: Signal<H, Error>) -> Signal<(Value, B, C, D, E, F, G, H), Error> 
```

### `combineLatest(_:_:_:_:_:_:_:_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F, G, H, I>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>, _ g: Signal<G, Error>, _ h: Signal<H, Error>, _ i: Signal<I, Error>) -> Signal<(Value, B, C, D, E, F, G, H, I), Error> 
```

### `combineLatest(_:_:_:_:_:_:_:_:_:_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`.

``` swift
public static func combineLatest<B, C, D, E, F, G, H, I, J>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>, _ g: Signal<G, Error>, _ h: Signal<H, Error>, _ i: Signal<I, Error>, _ j: Signal<J, Error>) -> Signal<(Value, B, C, D, E, F, G, H, I, J), Error> 
```

### `combineLatest(_:)`

Combines the values of all the given signals, in the manner described by
`combineLatestWith`. No events will be sent if the sequence is empty.

``` swift
public static func combineLatest<S: Sequence>(_ signals: S) -> Signal<[Value], Error>
		where S.Iterator.Element == Signal<Value, Error>
```

### `zip(_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>) -> Signal<(Value, B), Error> 
```

### `zip(_:_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>) -> Signal<(Value, B, C), Error> 
```

### `zip(_:_:_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>) -> Signal<(Value, B, C, D), Error> 
```

### `zip(_:_:_:_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>) -> Signal<(Value, B, C, D, E), Error> 
```

### `zip(_:_:_:_:_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>) -> Signal<(Value, B, C, D, E, F), Error> 
```

### `zip(_:_:_:_:_:_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F, G>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>, _ g: Signal<G, Error>) -> Signal<(Value, B, C, D, E, F, G), Error> 
```

### `zip(_:_:_:_:_:_:_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F, G, H>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>, _ g: Signal<G, Error>, _ h: Signal<H, Error>) -> Signal<(Value, B, C, D, E, F, G, H), Error> 
```

### `zip(_:_:_:_:_:_:_:_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F, G, H, I>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>, _ g: Signal<G, Error>, _ h: Signal<H, Error>, _ i: Signal<I, Error>) -> Signal<(Value, B, C, D, E, F, G, H, I), Error> 
```

### `zip(_:_:_:_:_:_:_:_:_:_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`.

``` swift
public static func zip<B, C, D, E, F, G, H, I, J>(_ a: Signal<Value, Error>, _ b: Signal<B, Error>, _ c: Signal<C, Error>, _ d: Signal<D, Error>, _ e: Signal<E, Error>, _ f: Signal<F, Error>, _ g: Signal<G, Error>, _ h: Signal<H, Error>, _ i: Signal<I, Error>, _ j: Signal<J, Error>) -> Signal<(Value, B, C, D, E, F, G, H, I, J), Error> 
```

### `zip(_:)`

Zips the values of all the given signals, in the manner described by
`zipWith`. No events will be sent if the sequence is empty.

``` swift
public static func zip<S: Sequence>(_ signals: S) -> Signal<[Value], Error>
		where S.Iterator.Element == Signal<Value, Error>
```

### `timeout(after:raising:on:)`

Forward events from `self` until `interval`. Then if signal isn't
completed yet, fails with `error` on `scheduler`.

``` swift
public func timeout(after interval: TimeInterval, raising error: Error, on scheduler: DateSchedulerProtocol) -> Signal<Value, Error> 
```

> 

#### Parameters

  - error: Error to send with failed event if `self` is not completed when `interval` passes.
  - interval: Number of seconds to wait for `self` to complete.
  - scheudler: A scheduler to deliver error on.

#### Returns

A signal that sends events for at most `interval` seconds, then, if not `completed` - sends `error` with failed event on `scheduler`.

### `promoteErrors(_:)`

Promote a signal that does not generate failures into one that can.

``` swift
public func promoteErrors<F: Swift.Error>(_: F.Type) -> Signal<Value, F> 
```

> 

  - \_ An `ErrorType`.

#### Returns

A signal that has an instantiatable `ErrorType`.

### `timeout(after:raising:on:)`

Forward events from `self` until `interval`. Then if signal isn't
completed yet, fails with `error` on `scheduler`.

``` swift
public func timeout<NewError: Swift.Error>(
		after interval: TimeInterval,
		raising error: NewError,
		on scheduler: DateSchedulerProtocol
	) -> Signal<Value, NewError> 
```

> 

#### Parameters

  - interval: Number of seconds to wait for `self` to complete.
  - error: Error to send with `failed` event if `self` is not completed when `interval` passes.
  - scheudler: A scheduler to deliver error on.

#### Returns

A signal that sends events for at most `interval` seconds, then, if not `completed` - sends `error` with `failed` event on `scheduler`.

### `attempt(_:)`

Apply `operation` to values from `self` with `success`ful results
forwarded on the returned signal and `failure`s sent as failed events.

``` swift
public func attempt(_ operation: @escaping (Value) -> Result<(), Error>) -> Signal<Value, Error> 
```

#### Parameters

  - operation: A closure that accepts a value and returns a `Result`.

#### Returns

A signal that receives `success`ful `Result` as `value` event and `failure` as failed event.

### `attemptMap(_:)`

Apply `operation` to values from `self` with `success`ful results mapped
on the returned signal and `failure`s sent as failed events.

``` swift
public func attemptMap<U>(_ operation: @escaping (Value) -> Result<U, Error>) -> Signal<U, Error> 
```

#### Parameters

  - operation: A closure that accepts a value and returns a result of a mapped value as `success`.

#### Returns

A signal that sends mapped values from `self` if returned `Result` is `success`ful, `failed` events otherwise.

### `attempt(_:)`

Apply a failable `operation` to values from `self` with successful
results forwarded on the returned signal and thrown errors sent as
failed events.

``` swift
public func attempt(_ operation: @escaping (Value) throws -> Void) -> Signal<Value, AnyError> 
```

#### Parameters

  - operation: A failable closure that accepts a value.

#### Returns

A signal that forwards successes as `value` events and thrown errors as `failed` events.

### `attemptMap(_:)`

Apply a failable `operation` to values from `self` with successful
results mapped on the returned signal and thrown errors sent as
failed events.

``` swift
public func attemptMap<U>(_ operation: @escaping (Value) throws -> U) -> Signal<U, AnyError> 
```

#### Parameters

  - operation: A failable closure that accepts a value and attempts to transform it.

#### Returns

A signal that sends successfully mapped values from `self`, or thrown errors as `failed` events.

### `attempt(_:)`

Apply a failable `operation` to values from `self` with successful
results forwarded on the returned signal and thrown errors sent as
failed events.

``` swift
public func attempt(_ operation: @escaping (Value) throws -> Void) -> Signal<Value, AnyError> 
```

#### Parameters

  - operation: A failable closure that accepts a value.

#### Returns

A signal that forwards successes as `value` events and thrown errors as `failed` events.

### `attemptMap(_:)`

Apply a failable `operation` to values from `self` with successful
results mapped on the returned signal and thrown errors sent as
failed events.

``` swift
public func attemptMap<U>(_ operation: @escaping (Value) throws -> U) -> Signal<U, AnyError> 
```

#### Parameters

  - operation: A failable closure that accepts a value and attempts to transform it.

#### Returns

A signal that sends successfully mapped values from `self`, or thrown errors as `failed` events.

## Requirements

### Value

The type of values being sent on the signal.

``` swift
associatedtype Value
```

### Error

The type of error that can occur on the signal. If errors aren't
possible then `NoError` can be used.

``` swift
associatedtype Error: Swift.Error
```

### signal

Extracts a signal from the receiver.

``` swift
var signal: Signal<Value, Error> 
```

### observe(\_:​)

Observes the Signal by sending any future events to the given observer.

``` swift
@discardableResult
	func observe(_ observer: Signal<Value, Error>.Observer) -> Disposable?
```
