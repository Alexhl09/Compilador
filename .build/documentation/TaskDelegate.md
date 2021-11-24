# TaskDelegate

The task delegate is responsible for handling all delegate callbacks for the underlying task as well as
executing all operations attached to the serial operation queue upon task completion.

``` swift
open class TaskDelegate: NSObject 
```

## Inheritance

`NSObject`, `NSObject`, `NSObject`

## Properties

### `queue`

The serial operation queue used to execute all operations after the task completes.

``` swift
open let queue: OperationQueue
```

### `data`

The data returned by the server.

``` swift
public var data: Data? 
```

### `error`

The error generated throughout the lifecyle of the task.

``` swift
public var error: Error?
```

### `queue`

The serial operation queue used to execute all operations after the task completes.

``` swift
public let queue: OperationQueue
```

### `data`

The data returned by the server.

``` swift
public var data: Data? 
```

### `error`

The error generated throughout the lifecyle of the task.

``` swift
public var error: Error?
```

### `queue`

The serial operation queue used to execute all operations after the task completes.

``` swift
public let queue: OperationQueue
```

### `data`

The data returned by the server.

``` swift
public var data: Data? 
```

### `error`

The error generated throughout the lifecyle of the task.

``` swift
public var error: Error?
```
