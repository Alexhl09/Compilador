# LocalFileSystemDataProvider

A type that provides documentation bundles that it discovers by traversing the local file system.

``` swift
public struct LocalFileSystemDataProvider: DocumentationWorkspaceDataProvider, FileSystemProvider 
```

## Inheritance

[`DocumentationWorkspaceDataProvider`](/DocumentationWorkspaceDataProvider), [`FileSystemProvider`](/FileSystemProvider)

## Initializers

### `init(rootURL:)`

Creates a new provider that recursively traverses the content of the given root URL to discover documentation bundles.

``` swift
public init(rootURL: URL) throws 
```

#### Parameters

  - rootURL: The location that this provider searches for documentation bundles in.

## Properties

### `identifier`

``` swift
public var identifier: String = UUID().uuidString
```

### `rootURL`

The location that this provider searches for documentation bundles in.

``` swift
public var rootURL: URL
```

### `fileSystem`

``` swift
public var fileSystem: FSNode
```

## Methods

### `contentsOfURL(_:)`

``` swift
public func contentsOfURL(_ url: URL) throws -> Data 
```
