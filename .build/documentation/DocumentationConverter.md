# DocumentationConverter

A converter from a documentation bundle to an output that can be consumed by a renderer.

``` swift
public struct DocumentationConverter: DocumentationConverterProtocol 
```

A documentation converter analyzes a documentation bundle and converts it to products that can be used by a documentation
renderer to render documentation. The output format of the conversion is controlled by a `ConvertOutputConsumer`, which
determines what to do with the conversion products, for example, write them to disk.

You can also configure the documentation converter to emit extra metadata such as linkable entities and indexing records
information.

## Inheritance

[`DocumentationConverterProtocol`](/DocumentationConverterProtocol)

## Initializers

### `init(documentationBundleURL:emitDigest:documentationCoverageOptions:currentPlatforms:workspace:context:dataProvider:externalIDsToConvert:documentPathsToConvert:bundleDiscoveryOptions:emitSymbolSourceFileURIs:emitSymbolAccessLevels:isCancelled:diagnosticEngine:)`

Creates a documentation converter given a documentation bundle's URL.

``` swift
public init(
        documentationBundleURL: URL?,
        emitDigest: Bool,
        documentationCoverageOptions: DocumentationCoverageOptions,
        currentPlatforms: [String : PlatformVersion]?,
        workspace: DocumentationWorkspace,
        context: DocumentationContext,
        dataProvider: DocumentationWorkspaceDataProvider,
        externalIDsToConvert: [String]? = nil,
        documentPathsToConvert: [String]? = nil,
        bundleDiscoveryOptions: BundleDiscoveryOptions,
        emitSymbolSourceFileURIs: Bool = false,
        emitSymbolAccessLevels: Bool = false,
        isCancelled: Synchronized<Bool>? = nil,
        diagnosticEngine: DiagnosticEngine = .init()
    ) 
```

#### Parameters

  - documentationBundleURL: The root URL of the documentation bundle to convert.
  - emitDigest: Whether the conversion should create metadata files, such as linkable entities information.
  - documentationCoverageOptions: What level of documentation coverage output should be emitted.
  - currentPlatforms: The current version and beta information for platforms that may be encountered while processing symbol graph files. that may be encountered while processing symbol graph files.
  - workspace: A provided documentation workspace. Creates a new empty workspace if value is `nil`.
  - context: A provided documentation context. Creates a new empty context in the workspace if value is `nil`.
  - dataProvider: A data provider to use when registering bundles.
  - fileManager: A file persistence manager
  - externalIDsToConvert: The external IDs of the documentation nodes to convert.
  - documentPathsToConvert: The paths of the documentation nodes to convert.
  - bundleDiscoveryOptions: Options to configure how the converter discovers documentation bundles.
  - emitSymbolSourceFileURIs: Before passing `true` please confirm that your use case doesn't include public
    distribution of any created render nodes as there are filesystem privacy and security
    concerns with distributing this data.

## Properties

### `setupContext`

An optional closure that sets up a context before the conversion begins.

``` swift
public var setupContext: ((inout DocumentationContext) -> Void)?
```

## Methods

### `firstAvailableBundle()`

Returns the first bundle in the source directory, if any.

``` swift
public func firstAvailableBundle() -> DocumentationBundle? 
```

> Note: The result of this function is not cached, it reads the source directory and finds all bundles.

### `convert(outputConsumer:)`

``` swift
mutating public func convert<OutputConsumer: ConvertOutputConsumer>(
        outputConsumer: OutputConsumer
    ) throws -> (analysisProblems: [Problem], conversionProblems: [Problem]) 
```
