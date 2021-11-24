# DataStreamRequest.Stream

Type encapsulating an `Event` as it flows through the stream, as well as a `CancellationToken` which can be used
to stop the stream at any time.

``` swift
public struct Stream<Success, Failure: Error> 
```

## Properties

### `event`

Latest `Event` from the stream.

``` swift
public let event: Event<Success, Failure>
```

### `token`

Token used to cancel the stream.

``` swift
public let token: CancellationToken
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

### `event`

Latest `Event` from the stream.

``` swift
public let event: Event<Success, Failure>
```

### `token`

Token used to cancel the stream.

``` swift
public let token: CancellationToken
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

### `event`

Latest `Event` from the stream.

``` swift
public let event: Event<Success, Failure>
```

### `token`

Token used to cancel the stream.

``` swift
public let token: CancellationToken
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `result`

Incoming `Result` values from `Event.stream`.

``` swift
public var result: Result<Success, Failure>? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `value`

`Success` value of the instance, if any.

``` swift
public var value: Success? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `error`

`Failure` value of the instance, if any.

``` swift
public var error: Failure? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

### `completion`

`Completion` value of the instance, if any.

``` swift
public var completion: DataStreamRequest.Completion? 
```

## Methods

### `cancel()`

Cancel the ongoing stream by canceling the underlying `DataStreamRequest`.

``` swift
public func cancel() 
```

### `cancel()`

Cancel the ongoing stream by canceling the underlying `DataStreamRequest`.

``` swift
public func cancel() 
```

### `cancel()`

Cancel the ongoing stream by canceling the underlying `DataStreamRequest`.

``` swift
public func cancel() 
```
