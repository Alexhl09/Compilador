# ActionProtocol

A protocol used to constraint `Action` initializers.

``` swift
public protocol ActionProtocol: BindingTargetProtocol 
```

## Inheritance

[`BindingTargetProtocol`](/BindingTargetProtocol)

## Default Implementations

### `consume(_:)`

``` swift
public func consume(_ value: Input) 
```

### `init(input:_:)`

Initializes an action that uses an `Optional` property for its input,
and is disabled whenever the input is `nil`. When executed, a `SignalProducer`
is created with the current value of the input.

``` swift
public init<P: PropertyProtocol, T>(input: P, _ execute: @escaping (T) -> SignalProducer<Output, Error>) where P.Value == T? 
```

#### Parameters

  - input: An `Optional` property whose current value is used as input whenever the action is executed. The action is disabled whenever the value is `nil`.
  - execute: A closure to return a new `SignalProducer` based on the current value of `input`.

### `init(input:_:)`

Initializes an action that uses a property for its input. When executed,
a `SignalProducer` is created with the current value of the input.

``` swift
public init<P: PropertyProtocol, T>(input: P, _ execute: @escaping (T) -> SignalProducer<Output, Error>) where P.Value == T 
```

#### Parameters

  - input: A property whose current value is used as input whenever the action is executed.
  - execute: A closure to return a new `SignalProducer` based on the current value of `input`.

### `enabled`

``` swift
@available(*, unavailable, renamed:"isEnabled")
	public var enabled: Bool 
```

### `executing`

``` swift
@available(*, unavailable, renamed:"isExecuting")
	public var executing: Bool 
```

## Requirements

### Input

The type of argument to apply the action to.

``` swift
associatedtype Input
```

### Output

The type of values returned by the action.

``` swift
associatedtype Output
```

### Error

The type of error when the action fails. If errors aren't possible then
`NoError` can be used.

``` swift
associatedtype Error: Swift.Error
```

### init(state:​enabledIf:​\_:​)

Initializes an action that will be conditionally enabled based on the
value of `state`. Creates a `SignalProducer` for each input and the
current value of `state`.

``` swift
init<State: PropertyProtocol>(state property: State, enabledIf isEnabled: @escaping (State.Value) -> Bool, _ execute: @escaping (State.Value, Input) -> SignalProducer<Output, Error>)
```

> 

> 

#### Parameters

  - state: A property that provides the current state of the action whenever `apply()` is called.
  - enabledIf: A predicate that, given the current value of `state`, returns whether the action should be enabled.
  - execute: A closure that returns the `SignalProducer` returned by calling `apply(Input)` on the action, optionally using the current value of `state`.

### isEnabled

Whether the action is currently enabled.

``` swift
var isEnabled: Property<Bool> 
```

### action

Extracts an action from the receiver.

``` swift
var action: Action<Input, Output, Error> 
```

### apply(\_:​)

Creates a SignalProducer that, when started, will execute the action
with the given input, then forward the results upon the produced Signal.

``` swift
func apply(_ input: Input) -> SignalProducer<Output, ActionError<Error>>
```

> 

#### Parameters

  - input: A value that will be passed to the closure creating the signal producer.
