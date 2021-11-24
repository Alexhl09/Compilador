# CocoaAction

CocoaAction wraps an `Action` for use by a UI control (such as `NSControl` or
`UIControl`).

``` swift
public final class CocoaAction<Sender>: NSObject 
```

## Inheritance

`NSObject`

## Initializers

### `init(_:_:)`

Initialize a CocoaAction that invokes the given Action by mapping the
sender to the input type of the Action.

``` swift
public init<Input, Output, Error>(_ action: Action<Input, Output, Error>, _ inputTransform: @escaping (Sender) -> Input) 
```

#### Parameters

  - action: The Action.
  - inputTransform: A closure that maps Sender to the input type of the Action.

### `init(_:)`

Initialize a CocoaAction that invokes the given Action.

``` swift
public convenience init<Output, Error>(_ action: Action<(), Output, Error>) 
```

#### Parameters

  - action: The Action.

### `init(_:input:)`

Initialize a CocoaAction that invokes the given Action with the given
constant.

``` swift
public convenience init<Input, Output, Error>(_ action: Action<Input, Output, Error>, input: Input) 
```

#### Parameters

  - action: The Action.
  - input: The constant value as the input to the action.

## Properties

### `selector`

The selector for message senders.

``` swift
public static var selector: Selector 
```

### `isEnabled`

Whether the action is enabled.

``` swift
public let isEnabled: Property<Bool>
```

This property will only change on the main thread.

### `isExecuting`

Whether the action is executing.

``` swift
public let isExecuting: Property<Bool>
```

This property will only change on the main thread.

## Methods

### `execute(_:)`

Attempt to execute the underlying action with the given input, subject
to the behavior described by the initializer that was used.

``` swift
@IBAction public func execute(_ sender: Any) 
```

#### Parameters

  - sender: The sender which initiates the attempt.
