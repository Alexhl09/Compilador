# ExternalMetadata

External metadata injected into the documentation compiler, for example via command line arguments.

``` swift
public struct ExternalMetadata 
```

## Properties

### `currentPlatforms`

The current version and beta information for platforms that may be encountered while processing symbol graph files.

``` swift
public var currentPlatforms: [String: PlatformVersion]?
```

If the version that a symbol was introduced for a given platform (as indicated by the availability information in the symbol graph file) matches the
current version for that platform (as indicated by this metadata) and the current version is in beta, then that symbol is also considered in beta.

### `inheritDocs`

If `true`, inherited symbols retain their original docs.

``` swift
public var inheritDocs = false
```

### `isGeneratedBundle`

If `true`, there is no source bundle on disk and the inputs were passed via command line parameters.

``` swift
public var isGeneratedBundle = false
```

### `diagnosticLevel`

The granularity of diagnostics to emit via the engine.

``` swift
public var diagnosticLevel: DiagnosticSeverity = .warning
```

> Note: This setting is set by the convert command.
