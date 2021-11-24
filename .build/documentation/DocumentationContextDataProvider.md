# DocumentationContextDataProvider

A type that provides information about documentation bundles and their content.

``` swift
public protocol DocumentationContextDataProvider 
```

## Requirements

### delegate

An object to notify when bundles are added or removed.

``` swift
var delegate: DocumentationContextDataProviderDelegate? 
```

### bundles

The documentation bundles that this data provider provides.

``` swift
var bundles: [BundleIdentifier: DocumentationBundle] 
```

### contentsOfURL(\_:​in:​)

Returns the data for the specified `url` in the provided `bundle`.

``` swift
func contentsOfURL(_ url: URL, in bundle: DocumentationBundle) throws -> Data
```

#### Parameters

  - url: The URL of the file to read.
  - bundle: The bundle that the file is a part of.

#### Throws

When the file cannot be found in the workspace.
