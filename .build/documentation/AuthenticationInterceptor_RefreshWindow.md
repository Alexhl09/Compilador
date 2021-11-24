# AuthenticationInterceptor.RefreshWindow

Type that defines a time window used to identify excessive refresh calls. When enabled, prior to executing a
refresh, the `AuthenticationInterceptor` compares the timestamp history of previous refresh calls against the
`RefreshWindow`. If more refreshes have occurred within the refresh window than allowed, the refresh is
cancelled and an `AuthorizationError.excessiveRefresh` error is thrown.

``` swift
public struct RefreshWindow 
```

## Initializers

### `init(interval:maximumAttempts:)`

Creates a `RefreshWindow` instance from the specified `interval` and `maximumAttempts`.

``` swift
public init(interval: TimeInterval = 30.0, maximumAttempts: Int = 5) 
```

#### Parameters

  - interval: `TimeInterval` defining the duration of the time window before the current time.
  - maximumAttempts: The maximum attempts allowed within the `TimeInterval`.

### `init(interval:maximumAttempts:)`

Creates a `RefreshWindow` instance from the specified `interval` and `maximumAttempts`.

``` swift
public init(interval: TimeInterval = 30.0, maximumAttempts: Int = 5) 
```

#### Parameters

  - interval: `TimeInterval` defining the duration of the time window before the current time.
  - maximumAttempts: The maximum attempts allowed within the `TimeInterval`.

### `init(interval:maximumAttempts:)`

Creates a `RefreshWindow` instance from the specified `interval` and `maximumAttempts`.

``` swift
public init(interval: TimeInterval = 30.0, maximumAttempts: Int = 5) 
```

#### Parameters

  - interval: `TimeInterval` defining the duration of the time window before the current time.
  - maximumAttempts: The maximum attempts allowed within the `TimeInterval`.

## Properties

### `interval`

`TimeInterval` defining the duration of the time window before the current time in which the number of
refresh attempts is compared against `maximumAttempts`. For example, if `interval` is 30 seconds, then the
`RefreshWindow` represents the past 30 seconds. If more attempts occurred in the past 30 seconds than
`maximumAttempts`, an `.excessiveRefresh` error will be thrown.

``` swift
public let interval: TimeInterval
```

### `maximumAttempts`

Total refresh attempts allowed within `interval` before throwing an `.excessiveRefresh` error.

``` swift
public let maximumAttempts: Int
```

### `interval`

`TimeInterval` defining the duration of the time window before the current time in which the number of
refresh attempts is compared against `maximumAttempts`. For example, if `interval` is 30 seconds, then the
`RefreshWindow` represents the past 30 seconds. If more attempts occurred in the past 30 seconds than
`maximumAttempts`, an `.excessiveRefresh` error will be thrown.

``` swift
public let interval: TimeInterval
```

### `maximumAttempts`

Total refresh attempts allowed within `interval` before throwing an `.excessiveRefresh` error.

``` swift
public let maximumAttempts: Int
```

### `interval`

`TimeInterval` defining the duration of the time window before the current time in which the number of
refresh attempts is compared against `maximumAttempts`. For example, if `interval` is 30 seconds, then the
`RefreshWindow` represents the past 30 seconds. If more attempts occurred in the past 30 seconds than
`maximumAttempts`, an `.excessiveRefresh` error will be thrown.

``` swift
public let interval: TimeInterval
```

### `maximumAttempts`

Total refresh attempts allowed within `interval` before throwing an `.excessiveRefresh` error.

``` swift
public let maximumAttempts: Int
```
