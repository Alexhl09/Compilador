# AFError.MultipartEncodingFailureReason

The underlying reason the multipart encoding error occurred.

``` swift
public enum MultipartEncodingFailureReason 
```

  - bodyPartURLInvalid:                   The `fileURL` provided for reading an encodable body part isn't a
    file URL.

  - bodyPartFilenameInvalid:              The filename of the `fileURL` provided has either an empty
    `lastPathComponent` or \`pathExtension.

  - bodyPartFileNotReachable:             The file at the `fileURL` provided was not reachable.

  - bodyPartFileNotReachableWithError:    Attempting to check the reachability of the `fileURL` provided threw
    an error.

  - bodyPartFileIsDirectory:              The file at the `fileURL` provided is actually a directory.

  - bodyPartFileSizeNotAvailable:         The size of the file at the `fileURL` provided was not returned by
    the system.

  - bodyPartFileSizeQueryFailedWithError: The attempt to find the size of the file at the `fileURL` provided
    threw an error.

  - bodyPartInputStreamCreationFailed:    An `InputStream` could not be created for the provided `fileURL`.

  - outputStreamCreationFailed:           An `OutputStream` could not be created when attempting to write the
    encoded data to disk.

  - outputStreamFileAlreadyExists:        The encoded body data could not be writtent disk because a file
    already exists at the provided `fileURL`.

  - outputStreamURLInvalid:               The `fileURL` provided for writing the encoded body data to disk is
    not a file URL.

  - outputStreamWriteFailed:              The attempt to write the encoded body data to disk failed with an
    underlying error.

  - inputStreamReadFailed:                The attempt to read an encoded body part `InputStream` failed with
    underlying system error.

## Enumeration Cases

### `bodyPartURLInvalid`

``` swift
case bodyPartURLInvalid(url: URL)
```

### `bodyPartFilenameInvalid`

``` swift
case bodyPartFilenameInvalid(in: URL)
```

### `bodyPartFileNotReachable`

``` swift
case bodyPartFileNotReachable(at: URL)
```

### `bodyPartFileNotReachableWithError`

``` swift
case bodyPartFileNotReachableWithError(atURL: URL, error: Error)
```

### `bodyPartFileIsDirectory`

``` swift
case bodyPartFileIsDirectory(at: URL)
```

### `bodyPartFileSizeNotAvailable`

``` swift
case bodyPartFileSizeNotAvailable(at: URL)
```

### `bodyPartFileSizeQueryFailedWithError`

``` swift
case bodyPartFileSizeQueryFailedWithError(forURL: URL, error: Error)
```

### `bodyPartInputStreamCreationFailed`

``` swift
case bodyPartInputStreamCreationFailed(for: URL)
```

### `outputStreamCreationFailed`

``` swift
case outputStreamCreationFailed(for: URL)
```

### `outputStreamFileAlreadyExists`

``` swift
case outputStreamFileAlreadyExists(at: URL)
```

### `outputStreamURLInvalid`

``` swift
case outputStreamURLInvalid(url: URL)
```

### `outputStreamWriteFailed`

``` swift
case outputStreamWriteFailed(error: Error)
```

### `inputStreamReadFailed`

``` swift
case inputStreamReadFailed(error: Error)
```

### `bodyPartURLInvalid`

``` swift
case bodyPartURLInvalid(url: URL)
```

### `bodyPartFilenameInvalid`

``` swift
case bodyPartFilenameInvalid(in: URL)
```

### `bodyPartFileNotReachable`

``` swift
case bodyPartFileNotReachable(at: URL)
```

### `bodyPartFileNotReachableWithError`

``` swift
case bodyPartFileNotReachableWithError(atURL: URL, error: Error)
```

### `bodyPartFileIsDirectory`

``` swift
case bodyPartFileIsDirectory(at: URL)
```

### `bodyPartFileSizeNotAvailable`

``` swift
case bodyPartFileSizeNotAvailable(at: URL)
```

### `bodyPartFileSizeQueryFailedWithError`

``` swift
case bodyPartFileSizeQueryFailedWithError(forURL: URL, error: Error)
```

### `bodyPartInputStreamCreationFailed`

``` swift
case bodyPartInputStreamCreationFailed(for: URL)
```

### `outputStreamCreationFailed`

``` swift
case outputStreamCreationFailed(for: URL)
```

### `outputStreamFileAlreadyExists`

``` swift
case outputStreamFileAlreadyExists(at: URL)
```

### `outputStreamURLInvalid`

``` swift
case outputStreamURLInvalid(url: URL)
```

### `outputStreamWriteFailed`

``` swift
case outputStreamWriteFailed(error: Error)
```

### `inputStreamReadFailed`

``` swift
case inputStreamReadFailed(error: Error)
```

### `bodyPartURLInvalid`

``` swift
case bodyPartURLInvalid(url: URL)
```

### `bodyPartFilenameInvalid`

``` swift
case bodyPartFilenameInvalid(in: URL)
```

### `bodyPartFileNotReachable`

``` swift
case bodyPartFileNotReachable(at: URL)
```

### `bodyPartFileNotReachableWithError`

``` swift
case bodyPartFileNotReachableWithError(atURL: URL, error: Error)
```

### `bodyPartFileIsDirectory`

``` swift
case bodyPartFileIsDirectory(at: URL)
```

### `bodyPartFileSizeNotAvailable`

``` swift
case bodyPartFileSizeNotAvailable(at: URL)
```

### `bodyPartFileSizeQueryFailedWithError`

``` swift
case bodyPartFileSizeQueryFailedWithError(forURL: URL, error: Error)
```

### `bodyPartInputStreamCreationFailed`

``` swift
case bodyPartInputStreamCreationFailed(for: URL)
```

### `outputStreamCreationFailed`

``` swift
case outputStreamCreationFailed(for: URL)
```

### `outputStreamFileAlreadyExists`

``` swift
case outputStreamFileAlreadyExists(at: URL)
```

### `outputStreamURLInvalid`

``` swift
case outputStreamURLInvalid(url: URL)
```

### `outputStreamWriteFailed`

``` swift
case outputStreamWriteFailed(error: Error)
```

### `inputStreamReadFailed`

``` swift
case inputStreamReadFailed(error: Error)
```

### `bodyPartURLInvalid`

The `fileURL` provided for reading an encodable body part isn't a file `URL`.

``` swift
case bodyPartURLInvalid(url: URL)
```

### `bodyPartFilenameInvalid`

The filename of the `fileURL` provided has either an empty `lastPathComponent` or \`pathExtension.

``` swift
case bodyPartFilenameInvalid(in: URL)
```

### `bodyPartFileNotReachable`

The file at the `fileURL` provided was not reachable.

``` swift
case bodyPartFileNotReachable(at: URL)
```

### `bodyPartFileNotReachableWithError`

Attempting to check the reachability of the `fileURL` provided threw an error.

``` swift
case bodyPartFileNotReachableWithError(atURL: URL, error: Error)
```

### `bodyPartFileIsDirectory`

The file at the `fileURL` provided is actually a directory.

``` swift
case bodyPartFileIsDirectory(at: URL)
```

### `bodyPartFileSizeNotAvailable`

The size of the file at the `fileURL` provided was not returned by the system.

``` swift
case bodyPartFileSizeNotAvailable(at: URL)
```

### `bodyPartFileSizeQueryFailedWithError`

The attempt to find the size of the file at the `fileURL` provided threw an error.

``` swift
case bodyPartFileSizeQueryFailedWithError(forURL: URL, error: Error)
```

### `bodyPartInputStreamCreationFailed`

An `InputStream` could not be created for the provided `fileURL`.

``` swift
case bodyPartInputStreamCreationFailed(for: URL)
```

### `outputStreamCreationFailed`

An `OutputStream` could not be created when attempting to write the encoded data to disk.

``` swift
case outputStreamCreationFailed(for: URL)
```

### `outputStreamFileAlreadyExists`

The encoded body data could not be written to disk because a file already exists at the provided `fileURL`.

``` swift
case outputStreamFileAlreadyExists(at: URL)
```

### `outputStreamURLInvalid`

The `fileURL` provided for writing the encoded body data to disk is not a file `URL`.

``` swift
case outputStreamURLInvalid(url: URL)
```

### `outputStreamWriteFailed`

The attempt to write the encoded body data to disk failed with an underlying error.

``` swift
case outputStreamWriteFailed(error: Error)
```

### `inputStreamReadFailed`

The attempt to read an encoded body part `InputStream` failed with underlying system error.

``` swift
case inputStreamReadFailed(error: Error)
```

### `bodyPartURLInvalid`

The `fileURL` provided for reading an encodable body part isn't a file `URL`.

``` swift
case bodyPartURLInvalid(url: URL)
```

### `bodyPartFilenameInvalid`

The filename of the `fileURL` provided has either an empty `lastPathComponent` or \`pathExtension.

``` swift
case bodyPartFilenameInvalid(in: URL)
```

### `bodyPartFileNotReachable`

The file at the `fileURL` provided was not reachable.

``` swift
case bodyPartFileNotReachable(at: URL)
```

### `bodyPartFileNotReachableWithError`

Attempting to check the reachability of the `fileURL` provided threw an error.

``` swift
case bodyPartFileNotReachableWithError(atURL: URL, error: Error)
```

### `bodyPartFileIsDirectory`

The file at the `fileURL` provided is actually a directory.

``` swift
case bodyPartFileIsDirectory(at: URL)
```

### `bodyPartFileSizeNotAvailable`

The size of the file at the `fileURL` provided was not returned by the system.

``` swift
case bodyPartFileSizeNotAvailable(at: URL)
```

### `bodyPartFileSizeQueryFailedWithError`

The attempt to find the size of the file at the `fileURL` provided threw an error.

``` swift
case bodyPartFileSizeQueryFailedWithError(forURL: URL, error: Error)
```

### `bodyPartInputStreamCreationFailed`

An `InputStream` could not be created for the provided `fileURL`.

``` swift
case bodyPartInputStreamCreationFailed(for: URL)
```

### `outputStreamCreationFailed`

An `OutputStream` could not be created when attempting to write the encoded data to disk.

``` swift
case outputStreamCreationFailed(for: URL)
```

### `outputStreamFileAlreadyExists`

The encoded body data could not be written to disk because a file already exists at the provided `fileURL`.

``` swift
case outputStreamFileAlreadyExists(at: URL)
```

### `outputStreamURLInvalid`

The `fileURL` provided for writing the encoded body data to disk is not a file `URL`.

``` swift
case outputStreamURLInvalid(url: URL)
```

### `outputStreamWriteFailed`

The attempt to write the encoded body data to disk failed with an underlying error.

``` swift
case outputStreamWriteFailed(error: Error)
```

### `inputStreamReadFailed`

The attempt to read an encoded body part `InputStream` failed with underlying system error.

``` swift
case inputStreamReadFailed(error: Error)
```

### `bodyPartURLInvalid`

The `fileURL` provided for reading an encodable body part isn't a file `URL`.

``` swift
case bodyPartURLInvalid(url: URL)
```

### `bodyPartFilenameInvalid`

The filename of the `fileURL` provided has either an empty `lastPathComponent` or \`pathExtension.

``` swift
case bodyPartFilenameInvalid(in: URL)
```

### `bodyPartFileNotReachable`

The file at the `fileURL` provided was not reachable.

``` swift
case bodyPartFileNotReachable(at: URL)
```

### `bodyPartFileNotReachableWithError`

Attempting to check the reachability of the `fileURL` provided threw an error.

``` swift
case bodyPartFileNotReachableWithError(atURL: URL, error: Error)
```

### `bodyPartFileIsDirectory`

The file at the `fileURL` provided is actually a directory.

``` swift
case bodyPartFileIsDirectory(at: URL)
```

### `bodyPartFileSizeNotAvailable`

The size of the file at the `fileURL` provided was not returned by the system.

``` swift
case bodyPartFileSizeNotAvailable(at: URL)
```

### `bodyPartFileSizeQueryFailedWithError`

The attempt to find the size of the file at the `fileURL` provided threw an error.

``` swift
case bodyPartFileSizeQueryFailedWithError(forURL: URL, error: Error)
```

### `bodyPartInputStreamCreationFailed`

An `InputStream` could not be created for the provided `fileURL`.

``` swift
case bodyPartInputStreamCreationFailed(for: URL)
```

### `outputStreamCreationFailed`

An `OutputStream` could not be created when attempting to write the encoded data to disk.

``` swift
case outputStreamCreationFailed(for: URL)
```

### `outputStreamFileAlreadyExists`

The encoded body data could not be written to disk because a file already exists at the provided `fileURL`.

``` swift
case outputStreamFileAlreadyExists(at: URL)
```

### `outputStreamURLInvalid`

The `fileURL` provided for writing the encoded body data to disk is not a file `URL`.

``` swift
case outputStreamURLInvalid(url: URL)
```

### `outputStreamWriteFailed`

The attempt to write the encoded body data to disk failed with an underlying error.

``` swift
case outputStreamWriteFailed(error: Error)
```

### `inputStreamReadFailed`

The attempt to read an encoded body part `InputStream` failed with underlying system error.

``` swift
case inputStreamReadFailed(error: Error)
```
