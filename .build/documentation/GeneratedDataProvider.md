# GeneratedDataProvider

A type that provides documentation bundles that it discovers by traversing the local file system.

``` swift
public struct GeneratedDataProvider: DocumentationWorkspaceDataProvider 
```

## Inheritance

[`DocumentationWorkspaceDataProvider`](/DocumentationWorkspaceDataProvider)

## Nested Type Aliases

### `SymbolGraphDataLoader`

``` swift
public typealias SymbolGraphDataLoader = (URL) -> Data?
```

## Initializers

### `init(options:symbolGraphDataLoader:)`

Creates a new provider that recursively traverses the content of the given root URL to discover documentation bundles.

``` swift
public init(options: BundleDiscoveryOptions, symbolGraphDataLoader: @escaping SymbolGraphDataLoader) throws 
```

#### Parameters

  - options: Options to configure how the converter discovers documentation bundles.
  - symbolGraphDataLoader: A closure that loads the raw data for a symbol graph file at a given URL.

## Properties

### `identifier`

``` swift
public var identifier: String = UUID().uuidString
```

### `options`

Options to configure how the provider generates documentation bundles.

``` swift
public var options: BundleDiscoveryOptions
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
