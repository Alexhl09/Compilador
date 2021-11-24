# DocumentationWorkspaceDataProvider

A type that vends bundles and responds to requests for data.

``` swift
public protocol DocumentationWorkspaceDataProvider 
```

## Default Implementations

### `bundles(options:)`

``` swift
public func bundles(options: BundleDiscoveryOptions) throws -> [DocumentationBundle] 
```

### `bundles()`

Returns the documentation bundles that your data provider provides; discovered with the default options.

``` swift
func bundles() throws -> [DocumentationBundle] 
```

If your data provider also conforms to `FileSystemProvider`, there is a default implementation of this method
that traverses the `FileSystemProvider/fileSystem` to find all documentation bundles in it.

## Requirements

### identifier

A string that uniquely identifies this data provider.

``` swift
var identifier: String 
```

Unless your implementation needs a stable identifier to associate with an external system, it's reasonable to
use `UUID().uuidString`  for the provider's identifier.

### contentsOfURL(\_:​)

Returns the data backing one of the files that this data provider provides.

``` swift
func contentsOfURL(_ url: URL) throws -> Data
```

Your implementation can expect to only receive URLs that it provides. It's acceptable to assert if you receive
a URL that wasn't provided by your data provider, because this indicates a bug in the `DocumentationWorkspace`.

#### Parameters

  - url: The URL of a file to return the backing data for.

### bundles(options:​)

Returns the documentation bundles that your data provider provides.

``` swift
func bundles(options: BundleDiscoveryOptions) throws -> [DocumentationBundle]
```

If your data provider also conforms to `FileSystemProvider`, there is a default implementation of this method
that traverses the `FileSystemProvider/fileSystem` to find all documentation bundles in it.

#### Parameters

  - options: Configuration that controls how the provider discovers documentation bundles.
