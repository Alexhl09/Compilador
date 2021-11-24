# FileSystemRenderNodeProvider

This class provides a simple way to transform a `FileSystemProvider` into a `RenderNodeProvider` to feed an index builder.
The data from the disk is fetched and processed in an efficient way to build a navigator index.

``` swift
public class FileSystemRenderNodeProvider: RenderNodeProvider 
```

## Inheritance

[`RenderNodeProvider`](/RenderNodeProvider)

## Initializers

### `init(fileSystemProvider:)`

Initialize an instance to provide `RenderNode` instances from a give `FileSystemProvider`.

``` swift
public init(fileSystemProvider: FileSystemProvider) 
```

## Methods

### `getRenderNode()`

Returns a render node that can be processed by an index creator, for example.

``` swift
public func getRenderNode() -> RenderNode? 
```

### `getProblems()`

Get the problems that happened during the process.

``` swift
public func getProblems() -> [Problem] 
```

#### Returns

An array with the problems encountered during the filesystem read of render nodes.
