# MemoryFileServerProvider

``` swift
public class MemoryFileServerProvider: FileServerProvider 
```

## Inheritance

[`FileServerProvider`](/FileServerProvider)

## Initializers

### `init()`

``` swift
public init() 
```

## Methods

### `addFile(path:data:)`

Add a file to match a specific path.
Paths can be either a file, like "/js/file.js" or a path "/user/1".

``` swift
@discardableResult
    public func addFile(path: String, data: Data) -> Bool 
```

#### Parameters

  - path: The path to link the data.
  - data: The actual data.

#### Returns

A Boolean value indicating if the insertion has succeeded.

### `data(for:)`

Retrieve the data linked to a given path based on the `baseURL`.

``` swift
public func data(for path: String) -> Data? 
```

#### Parameters

  - path: The path.

#### Returns

The data matching the url, if possible.

### `addFiles(inFolder:inSubPath:recursive:)`

Retrieve the data linked to a given path based on the `baseURL`.

``` swift
public func addFiles(inFolder path: String, inSubPath subPath: String = "", recursive: Bool = true) 
```

#### Parameters

  - path: The path.

#### Returns

The data matching the url, if possible.

### `removeAllFiles()`

Remove all files served by the server.

``` swift
public func removeAllFiles() 
```

### `removeAllFiles(in:)`

Removes all files served matching a give subpath.

``` swift
public func removeAllFiles(in subPath: String) 
```

#### Parameters

  - path: The path used to match the files.
