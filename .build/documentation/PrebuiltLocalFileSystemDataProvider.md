# PrebuiltLocalFileSystemDataProvider

A data provider that provides existing in-memory documentation bundles with files on the local filesystem.

``` swift
public struct PrebuiltLocalFileSystemDataProvider: DocumentationWorkspaceDataProvider 
```

## Inheritance

[`DocumentationWorkspaceDataProvider`](/DocumentationWorkspaceDataProvider)

## Initializers

### `init(bundles:)`

Creates a new provider to provide the given documentation bundles.

``` swift
public init(bundles: [DocumentationBundle]) 
```

#### Parameters

  - bundles: The existing documentation bundles for this provider to provide.

## Properties

### `identifier`

``` swift
public var identifier: String = UUID().uuidString
```

## Methods

### `bundles(options:)`

``` swift
public func bundles(options: BundleDiscoveryOptions) throws -> [DocumentationBundle] 
```

### `contentsOfURL(_:)`

``` swift
public func contentsOfURL(_ url: URL) throws -> Data 
```
