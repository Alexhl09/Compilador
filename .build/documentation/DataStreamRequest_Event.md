# DataStreamRequest.Event

Type representing an event flowing through the stream. Contains either the `Result` of processing streamed
`Data` or the completion of the stream.

``` swift
public enum Event<Success, Failure: Error> 
```

## Enumeration Cases

### `stream`

Output produced every time the instance receives additional `Data`. The associated value contains the
`Result` of processing the incoming `Data`.

``` swift
case stream(Result<Success, Failure>)
```

### `complete`

Output produced when the instance has completed, whether due to stream end, cancellation, or an error.
Associated `Completion` value contains the final state.

``` swift
case complete(Completion)
```

### `stream`

Output produced every time the instance receives additional `Data`. The associated value contains the
`Result` of processing the incoming `Data`.

``` swift
case stream(Result<Success, Failure>)
```

### `complete`

Output produced when the instance has completed, whether due to stream end, cancellation, or an error.
Associated `Completion` value contains the final state.

``` swift
case complete(Completion)
```

### `stream`

Output produced every time the instance receives additional `Data`. The associated value contains the
`Result` of processing the incoming `Data`.

``` swift
case stream(Result<Success, Failure>)
```

### `complete`

Output produced when the instance has completed, whether due to stream end, cancellation, or an error.
Associated `Completion` value contains the final state.

``` swift
case complete(Completion)
```
