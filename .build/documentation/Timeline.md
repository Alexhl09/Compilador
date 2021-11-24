# Timeline

Responsible for computing the timing metrics for the complete lifecycle of a `Request`.

``` swift
public struct Timeline 
```

## Inheritance

`CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomDebugStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`, `CustomStringConvertible`

## Initializers

### `init(requestStartTime:initialResponseTime:requestCompletedTime:serializationCompletedTime:)`

Creates a new `Timeline` instance with the specified request times.

``` swift
public init(
        requestStartTime: CFAbsoluteTime = 0.0,
        initialResponseTime: CFAbsoluteTime = 0.0,
        requestCompletedTime: CFAbsoluteTime = 0.0,
        serializationCompletedTime: CFAbsoluteTime = 0.0)
```

#### Parameters

  - requestStartTime: The time the request was initialized. Defaults to `0.0`.
  - initialResponseTime: The time the first bytes were received from or sent to the server. Defaults to `0.0`.
  - requestCompletedTime: The time when the request was completed. Defaults to `0.0`.
  - serializationCompletedTime: The time when the response serialization was completed. Defaults to `0.0`.

#### Returns

The new `Timeline` instance.

### `init(requestStartTime:initialResponseTime:requestCompletedTime:serializationCompletedTime:)`

Creates a new `Timeline` instance with the specified request times.

``` swift
public init(
        requestStartTime: CFAbsoluteTime = 0.0,
        initialResponseTime: CFAbsoluteTime = 0.0,
        requestCompletedTime: CFAbsoluteTime = 0.0,
        serializationCompletedTime: CFAbsoluteTime = 0.0)
```

#### Parameters

  - requestStartTime: The time the request was initialized. Defaults to `0.0`.
  - initialResponseTime: The time the first bytes were received from or sent to the server. Defaults to `0.0`.
  - requestCompletedTime: The time when the request was completed. Defaults to `0.0`.
  - serializationCompletedTime: The time when the response serialization was completed. Defaults to `0.0`.

#### Returns

The new `Timeline` instance.

### `init(requestStartTime:initialResponseTime:requestCompletedTime:serializationCompletedTime:)`

Creates a new `Timeline` instance with the specified request times.

``` swift
public init(
        requestStartTime: CFAbsoluteTime = 0.0,
        initialResponseTime: CFAbsoluteTime = 0.0,
        requestCompletedTime: CFAbsoluteTime = 0.0,
        serializationCompletedTime: CFAbsoluteTime = 0.0)
```

#### Parameters

  - requestStartTime: The time the request was initialized. Defaults to `0.0`.
  - initialResponseTime: The time the first bytes were received from or sent to the server. Defaults to `0.0`.
  - requestCompletedTime: The time when the request was completed. Defaults to `0.0`.
  - serializationCompletedTime: The time when the response serialization was completed. Defaults to `0.0`.

#### Returns

The new `Timeline` instance.

## Properties

### `requestStartTime`

The time the request was initialized.

``` swift
public let requestStartTime: CFAbsoluteTime
```

### `initialResponseTime`

The time the first bytes were received from or sent to the server.

``` swift
public let initialResponseTime: CFAbsoluteTime
```

### `requestCompletedTime`

The time when the request was completed.

``` swift
public let requestCompletedTime: CFAbsoluteTime
```

### `serializationCompletedTime`

The time when the response serialization was completed.

``` swift
public let serializationCompletedTime: CFAbsoluteTime
```

### `latency`

The time interval in seconds from the time the request started to the initial response from the server.

``` swift
public let latency: TimeInterval
```

### `requestDuration`

The time interval in seconds from the time the request started to the time the request completed.

``` swift
public let requestDuration: TimeInterval
```

### `serializationDuration`

The time interval in seconds from the time the request completed to the time response serialization completed.

``` swift
public let serializationDuration: TimeInterval
```

### `totalDuration`

The time interval in seconds from the time the request started to the time response serialization completed.

``` swift
public let totalDuration: TimeInterval
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```

### `requestStartTime`

The time the request was initialized.

``` swift
public let requestStartTime: CFAbsoluteTime
```

### `initialResponseTime`

The time the first bytes were received from or sent to the server.

``` swift
public let initialResponseTime: CFAbsoluteTime
```

### `requestCompletedTime`

The time when the request was completed.

``` swift
public let requestCompletedTime: CFAbsoluteTime
```

### `serializationCompletedTime`

The time when the response serialization was completed.

``` swift
public let serializationCompletedTime: CFAbsoluteTime
```

### `latency`

The time interval in seconds from the time the request started to the initial response from the server.

``` swift
public let latency: TimeInterval
```

### `requestDuration`

The time interval in seconds from the time the request started to the time the request completed.

``` swift
public let requestDuration: TimeInterval
```

### `serializationDuration`

The time interval in seconds from the time the request completed to the time response serialization completed.

``` swift
public let serializationDuration: TimeInterval
```

### `totalDuration`

The time interval in seconds from the time the request started to the time response serialization completed.

``` swift
public let totalDuration: TimeInterval
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```

### `requestStartTime`

The time the request was initialized.

``` swift
public let requestStartTime: CFAbsoluteTime
```

### `initialResponseTime`

The time the first bytes were received from or sent to the server.

``` swift
public let initialResponseTime: CFAbsoluteTime
```

### `requestCompletedTime`

The time when the request was completed.

``` swift
public let requestCompletedTime: CFAbsoluteTime
```

### `serializationCompletedTime`

The time when the response serialization was completed.

``` swift
public let serializationCompletedTime: CFAbsoluteTime
```

### `latency`

The time interval in seconds from the time the request started to the initial response from the server.

``` swift
public let latency: TimeInterval
```

### `requestDuration`

The time interval in seconds from the time the request started to the time the request completed.

``` swift
public let requestDuration: TimeInterval
```

### `serializationDuration`

The time interval in seconds from the time the request completed to the time response serialization completed.

``` swift
public let serializationDuration: TimeInterval
```

### `totalDuration`

The time interval in seconds from the time the request started to the time response serialization completed.

``` swift
public let totalDuration: TimeInterval
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `description`

The textual representation used when written to an output stream, which includes the latency, the request
duration and the total duration.

``` swift
public var description: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```

### `debugDescription`

The textual representation used when written to an output stream, which includes the request start time, the
initial response time, the request completed time, the serialization completed time, the latency, the request
duration and the total duration.

``` swift
public var debugDescription: String 
```
