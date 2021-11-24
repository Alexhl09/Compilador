# UploadRequest

Specific type of `Request` that manages an underlying `URLSessionUploadTask`.

``` swift
open class UploadRequest: DataRequest 
```

## Inheritance

[`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest), [`DataRequest`](/DataRequest)

## Properties

### `request`

The request sent or to be sent to the server.

``` swift
open override var request: URLRequest? 
```

### `uploadProgress`

The progress of uploading the payload to the server for the upload request.

``` swift
open var uploadProgress: Progress 
```

### `request`

The request sent or to be sent to the server.

``` swift
open override var request: URLRequest? 
```

### `uploadProgress`

The progress of uploading the payload to the server for the upload request.

``` swift
open var uploadProgress: Progress 
```

### `request`

The request sent or to be sent to the server.

``` swift
open override var request: URLRequest? 
```

### `uploadProgress`

The progress of uploading the payload to the server for the upload request.

``` swift
open var uploadProgress: Progress 
```

### `upload`

The `UploadableConvertible` value used to produce the `Uploadable` value for this instance.

``` swift
public let upload: UploadableConvertible
```

### `fileManager`

`FileManager` used to perform cleanup tasks, including the removal of multipart form encoded payloads written
to disk.

``` swift
public let fileManager: FileManager
```

### `uploadable`

`Uploadable` value used by the instance.

``` swift
public var uploadable: Uploadable?
```

### `upload`

The `UploadableConvertible` value used to produce the `Uploadable` value for this instance.

``` swift
public let upload: UploadableConvertible
```

### `fileManager`

`FileManager` used to perform cleanup tasks, including the removal of multipart form encoded payloads written
to disk.

``` swift
public let fileManager: FileManager
```

### `uploadable`

`Uploadable` value used by the instance.

``` swift
public var uploadable: Uploadable?
```

### `upload`

The `UploadableConvertible` value used to produce the `Uploadable` value for this instance.

``` swift
public let upload: UploadableConvertible
```

### `fileManager`

`FileManager` used to perform cleanup tasks, including the removal of multipart form encoded payloads written
to disk.

``` swift
public let fileManager: FileManager
```

### `uploadable`

`Uploadable` value used by the instance.

``` swift
public var uploadable: Uploadable?
```

## Methods

### `uploadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the `UploadRequest` as data is sent to
the server.

``` swift
@discardableResult
    open func uploadProgress(queue: DispatchQueue = DispatchQueue.main, closure: @escaping ProgressHandler) -> Self 
```

After the data is sent to the server, the `progress(queue:closure:)` APIs can be used to monitor the progress
of data being read from the server.

#### Parameters

  - queue: The dispatch queue to execute the closure on.
  - closure: The code to be executed periodically as data is sent to the server.

#### Returns

The request.

### `uploadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the `UploadRequest` as data is sent to
the server.

``` swift
@discardableResult
    open func uploadProgress(queue: DispatchQueue = DispatchQueue.main, closure: @escaping ProgressHandler) -> Self 
```

After the data is sent to the server, the `progress(queue:closure:)` APIs can be used to monitor the progress
of data being read from the server.

#### Parameters

  - queue: The dispatch queue to execute the closure on.
  - closure: The code to be executed periodically as data is sent to the server.

#### Returns

The request.

### `uploadProgress(queue:closure:)`

Sets a closure to be called periodically during the lifecycle of the `UploadRequest` as data is sent to
the server.

``` swift
@discardableResult
    open func uploadProgress(queue: DispatchQueue = DispatchQueue.main, closure: @escaping ProgressHandler) -> Self 
```

After the data is sent to the server, the `progress(queue:closure:)` APIs can be used to monitor the progress
of data being read from the server.

#### Parameters

  - queue: The dispatch queue to execute the closure on.
  - closure: The code to be executed periodically as data is sent to the server.

#### Returns

The request.

### `cleanup()`

``` swift
override public func cleanup() 
```

### `cleanup()`

``` swift
override public func cleanup() 
```

### `cleanup()`

``` swift
override public func cleanup() 
```
