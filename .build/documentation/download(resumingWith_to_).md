# download(resumingWith:to:)

Creates a `DownloadRequest` using the default `SessionManager` from the `resumeData` produced from a
previous request cancellation to retrieve the contents of the original request and save them to the `destination`.

``` swift
@discardableResult
public func download(
    resumingWith resumeData: Data,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

On the latest release of all the Apple platforms (iOS 10, macOS 10.12, tvOS 10, watchOS 3), `resumeData` is broken
on background URL session configurations. There's an underlying bug in the `resumeData` generation logic where the
data is written incorrectly and will always fail to resume the download. For more information about the bug and
possible workarounds, please refer to the following Stack Overflow post:

  - http://stackoverflow.com/a/39347461/1342462

## Parameters

  - resumeData: The resume data. This is an opaque data blob produced by `URLSessionDownloadTask` when a task is cancelled. See `URLSession -downloadTask(withResumeData:)` for additional information.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.

# download(resumingWith:to:)

Creates a `DownloadRequest` using the default `SessionManager` from the `resumeData` produced from a
previous request cancellation to retrieve the contents of the original request and save them to the `destination`.

``` swift
@discardableResult
public func download(
    resumingWith resumeData: Data,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

On the latest release of all the Apple platforms (iOS 10, macOS 10.12, tvOS 10, watchOS 3), `resumeData` is broken
on background URL session configurations. There's an underlying bug in the `resumeData` generation logic where the
data is written incorrectly and will always fail to resume the download. For more information about the bug and
possible workarounds, please refer to the following Stack Overflow post:

  - http://stackoverflow.com/a/39347461/1342462

## Parameters

  - resumeData: The resume data. This is an opaque data blob produced by `URLSessionDownloadTask` when a task is cancelled. See `URLSession -downloadTask(withResumeData:)` for additional information.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.

# download(resumingWith:to:)

Creates a `DownloadRequest` using the default `SessionManager` from the `resumeData` produced from a
previous request cancellation to retrieve the contents of the original request and save them to the `destination`.

``` swift
@discardableResult
public func download(
    resumingWith resumeData: Data,
    to destination: DownloadRequest.DownloadFileDestination? = nil)
    -> DownloadRequest
```

If `destination` is not specified, the contents will remain in the temporary location determined by the
underlying URL session.

On the latest release of all the Apple platforms (iOS 10, macOS 10.12, tvOS 10, watchOS 3), `resumeData` is broken
on background URL session configurations. There's an underlying bug in the `resumeData` generation logic where the
data is written incorrectly and will always fail to resume the download. For more information about the bug and
possible workarounds, please refer to the following Stack Overflow post:

  - http://stackoverflow.com/a/39347461/1342462

## Parameters

  - resumeData: The resume data. This is an opaque data blob produced by `URLSessionDownloadTask` when a task is cancelled. See `URLSession -downloadTask(withResumeData:)` for additional information.
  - destination: The closure used to determine the destination of the downloaded file. `nil` by default.

## Returns

The created `DownloadRequest`.
