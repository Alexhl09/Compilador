# DocumentationWorkspace

The documentation workspace provides a unified interface for accessing serialized documentation bundles and their files, from a variety of sources.

``` swift
public class DocumentationWorkspace: DocumentationContextDataProvider 
```

The `DocumentationContext` and the workspace that the context is operating in are connected in two ways:

  - The workspace is the context's data provider.

  - The context is the workspace's `DocumentationContextDataProviderDelegate`.

The first lets the workspace multiplex the bundles from any number of data providers (`DocumentationWorkspaceDataProvider`) into a single list of
`DocumentationContextDataProvider/bundles` and allows the context to access the contents of the various bundles without knowing any specifics
of its source (files on disk, a database, or a web services).

The second lets the the workspace notify the context when bundles are added or removed so that the context stays up to date, even after the context is created.

``` 
                                                                                      ┌─────┐
                                                     ┌────────────────────────────────│ IDE │─────────────────────────────┐
      ┌──────────┐  ┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┐          │                                └─────┘                             │
      │FileSystem│─▶ WorkspaceDataProvider ─┐        │                                                                    │
      └──────────┘  └ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┘ │        │                                                                    │
                                            │        │                                                                    │
                                            │        │                                                                    │
      ┌──────────┐  ┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┐ │  ┌───────────┐     Read-only     ┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┐                 ┌─────────┐
      │WebService│─▶ WorkspaceDataProvider ─┼─▶│ Workspace │◀────interface───── ContextDataProvider ◀────get data────│ Context │
      └──────────┘  └ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┘ │  └───────────┘                   └ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┘                 └─────────┘
                                            │        │                                                                    ▲
                                            │        │                                                                    │
┌────────────────┐  ┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┐ │        │                                                                    │
│MyCustomDatabase│─▶ WorkspaceDataProvider ─┘        │    Bundle or       ┌ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┐     Event push    │
└────────────────┘  └ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┘          └───────file ───────▶ ContextDataProviderDelegate ─────interface─────┘
                                                            change        └ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ┘
```

> Note: Each data provider is treated as a separate file system. A single documentation bundle may not span multiple data providers.

## Topics

### Data Providers

  - `DocumentationWorkspaceDataProvider`

  - `LocalFileSystemDataProvider`

  - `PrebuiltLocalFileSystemDataProvider`

## See Also

  - `DocumentationContext`

  - `DocumentationContextDataProvider`

  - `DocumentationContextDataProviderDelegate`

## Inheritance

[`DocumentationContextDataProvider`](/DocumentationContextDataProvider)

## Initializers

### `init()`

Creates a new, empty documentation workspace.

``` swift
public init() 
```

## Properties

### `bundles`

A map of bundle identifiers to documentation bundles.

``` swift
public var bundles: [String: DocumentationBundle] = [:]
```

### `delegate`

The delegate to notify when documentation bundles are added or removed from this workspace.

``` swift
public weak var delegate: DocumentationContextDataProviderDelegate?
```

## Methods

### `contentsOfURL(_:in:)`

Reads the data for a given file in a given documentation bundle.

``` swift
public func contentsOfURL(_ url: URL, in bundle: DocumentationBundle) throws -> Data 
```

#### Parameters

  - url: The URL of the file to read.
  - bundle: The documentation bundle that the file belongs to.

#### Throws

A `WorkspaceError/unknownBundle(id:​)` error if the bundle doesn't exist in the workspace or a `WorkspaceError/unknownProvider(id:​)` error if the bundle's data provider doesn't exist in the workspace.

#### Returns

The raw data for the given file.

### `registerProvider(_:options:)`

Adds a new data provider to the workspace.

``` swift
public func registerProvider(_ provider: DocumentationWorkspaceDataProvider, options: BundleDiscoveryOptions = .init()) throws 
```

Adding a data provider also adds the documentation bundles that it provides, and notifies the `delegate` of the added bundles.

#### Parameters

  - provider: The workspace data provider to add to the workspace.

### `unregisterProvider(_:options:)`

Removes a given data provider from the workspace.

``` swift
public func unregisterProvider(_ provider: DocumentationWorkspaceDataProvider, options: BundleDiscoveryOptions = .init()) throws 
```

Removing a data provider also removes all its provided documentation bundles and notifies the `delegate` of the removed bundles.

#### Parameters

  - provider: The workspace data provider to remove from the workspace.
