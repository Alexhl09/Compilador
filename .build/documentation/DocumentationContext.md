# DocumentationContext

The documentation context manages the in-memory model for the built documentation.

``` swift
public class DocumentationContext: DocumentationContextDataProviderDelegate 
```

A `DocumentationWorkspace` discovers serialized documentation bundles from a variety of sources (files on disk, databases, or web services), provides them to the `DocumentationContext`,
and notifies the context when bundles are added or removed using the `DocumentationContextDataProviderDelegate` protocol.

When a documentation bundle is registered with the context, all of its content is loaded into memory and relationships between documentation entities are built. When this is done, the context can be queried
about documentation entities, resources, and relationships between entities.

## Topics

### Getting documentation resources

  - `entity(with:)`

  - `resource(with:trait:)`

### Getting documentation relationships

  - `children(of:kind:)`

  - `parents(of:)`

## Inheritance

[`DocumentationContextDataProviderDelegate`](/DocumentationContextDataProviderDelegate)

## Nested Type Aliases

### `ReferenceCheck`

A closure type getting the information about a reference in a context and returns any possible problems with it.

``` swift
public typealias ReferenceCheck = (DocumentationContext, ResolvedTopicReference) -> [Problem]
```

## Initializers

### `init(dataProvider:diagnosticEngine:)`

Initializes a documentation context with a given `dataProvider` and registers all the documentation bundles that it provides.

``` swift
public init(dataProvider: DocumentationContextDataProvider, diagnosticEngine: DiagnosticEngine = .init()) throws 
```

#### Parameters

  - dataProvider: The data provider to register bundles from.
  - diagnosticEngine: The pre-configured engine that will collect problems encountered during compilation.

#### Throws

If an error is encountered while registering a documentation bundle.

### `init(dataProvider:diagnosticEngine:diagnosticConsumers:)`

Initializes a documentation context with a given `dataProvider` and `diagnosticConsumers`
and registers all the documentation bundles that `dataProvider` provides.

``` swift
@available(*, deprecated, message: "Use init(dataProvider:diagnosticEngine:) instead")
    public init(dataProvider: DocumentationContextDataProvider, diagnosticEngine: DiagnosticEngine = .init(), diagnosticConsumers: [DiagnosticConsumer]) throws 
```

#### Parameters

  - dataProvider: The data provider to register bundles from.
  - diagnosticEngine: The engine that will collect problems encountered during compilation.
  - diagnosticConsumers: A collection of types that can consume diagnostics. These will be registered with `diagnosticEngine`.

#### Throws

If an error is encountered while registering a documentation bundle.

## Properties

### `shouldStoreManuallyCuratedReferences`

A value to control whether the set of manually curated references found during bundle registration should be stored. Defaults to `false`. Setting this property to `false` clears any stored references from `manuallyCuratedReferences`.

``` swift
public var shouldStoreManuallyCuratedReferences: Bool = false 
```

### `manuallyCuratedReferences`

The set of all manually curated references if `shouldStoreManuallyCuratedReferences` was true at the time of processing and has remained `true` since.. Nil if curation has not been processed yet.

``` swift
public private(set) var manuallyCuratedReferences: Set<ResolvedTopicReference>?
```

### `rootTechnologies`

The root technology nodes of the Topic Graph.

``` swift
public var rootTechnologies: [ResolvedTopicReference] 
```

### `rootModules`

The root module nodes of the Topic Graph.

``` swift
public var rootModules: [ResolvedTopicReference] 
```

### `problems`

A list of all the problems that was encountered while registering and processing the documentation bundles in this context.

``` swift
public var problems: [Problem] 
```

### `diagnosticEngine`

The engine that collects problems encountered while registering and processing the documentation bundles in this context.

``` swift
public var diagnosticEngine: DiagnosticEngine
```

### `externalReferenceResolvers`

The dictionary mapping external documentation bundle identifiers to external reference resolvers.

``` swift
public var externalReferenceResolvers 
```

The context uses external reference resolvers to resolve links to documentation outside the context's registered bundles.

> 

#### See Also

  - `ExternalReferenceResolver`

### `fallbackReferenceResolvers`

The dictionary mapping known documentation bundle identifiers to fallback reference resolvers.

``` swift
public var fallbackReferenceResolvers 
```

In situations where the local documentation context doesn't contain all the symbols or articles of a registered bundle—for example,
when using a `ConvertService` that contains partial symbol graph information—the documentation context will look up locally
unresolvable references using a fallback resolver (if one is set for the reference's bundle identifier).

> 

#### See Also

  - `ExternalReferenceResolver`

### `externalSymbolResolver`

A type that resolves symbols that are references from a symbol graph file but isn't included in any of the processed symbol graph files.

``` swift
public var externalSymbolResolver: ExternalSymbolResolver?
```

> 

### `fallbackAssetResolvers`

The dictionary mapping known documentation bundle identifiers to fallback reference resolvers.

``` swift
public var fallbackAssetResolvers 
```

In situations where the local documentation context doesn't contain all the assets of a registered bundle—for example, when
using a `ConvertService` that contains partial contents of a bundle—the documentation context will look up locally
unresolvable asset references using a fallback resolver (if one is set for the reference's bundle identifier.)

### `externalMetadata`

External metadata injected into the context, for example via command line arguments.

``` swift
public var externalMetadata 
```

### `registeredBundles`

The documentation bundles that are currently registered with the context.

``` swift
public var registeredBundles: Dictionary<String, DocumentationBundle>.Values 
```

### `knownIdentifiers`

The references of all nodes in the topic graph.

``` swift
public var knownIdentifiers: [ResolvedTopicReference] 
```

### `knownPages`

The references of all the pages in the topic graph.

``` swift
public var knownPages: [ResolvedTopicReference] 
```

## Methods

### `dataProvider(_:didAddBundle:)`

Respond to a new `bundle` being added to the `dataProvider` by registering it.

``` swift
public func dataProvider(_ dataProvider: DocumentationContextDataProvider, didAddBundle bundle: DocumentationBundle) throws 
```

#### Parameters

  - dataProvider: The provider that added this bundle.
  - bundle: The bundle that was added.

### `dataProvider(_:didRemoveBundle:)`

Respond to a new `bundle` being removed from the `dataProvider` by unregistering it.

``` swift
public func dataProvider(_ dataProvider: DocumentationContextDataProvider, didRemoveBundle bundle: DocumentationBundle) throws 
```

#### Parameters

  - dataProvider: The provider that removed this bundle.
  - bundle: The bundle that was removed.

### `bundle(identifier:)`

Returns the `DocumentationBundle` with the given `identifier` if it's registered with the context, otherwise `nil`.

``` swift
public func bundle(identifier: String) -> DocumentationBundle? 
```

### `isFileExtension(_:supported:)`

Checks if a given `fileExtension` is supported as a `type` of asset.

``` swift
public static func isFileExtension(_ fileExtension: String, supported type: AssetType) -> Bool 
```

#### Parameters

  - fileExtension: The file extension to check.
  - type: The type of asset to check if the `fileExtension` is supported for.

#### Returns

Whether or not the file extension is supported for the given type of asset.

### `registeredImageAssets(forBundleID:)`

Returns a list of all the image assets that registered for a given `bundleIdentifier`.

``` swift
public func registeredImageAssets(forBundleID bundleIdentifier: BundleIdentifier) -> [DataAsset] 
```

#### Parameters

  - bundleIdentifier: The identifier of the bundle to return image assets for.

#### Returns

A list of all the image assets for the given bundle.

### `registeredVideoAssets(forBundleID:)`

Returns a list of all the video assets that registered for a given `bundleIdentifier`.

``` swift
public func registeredVideoAssets(forBundleID bundleIdentifier: BundleIdentifier) -> [DataAsset] 
```

#### Parameters

  - bundleIdentifier: The identifier of the bundle to return video assets for.

#### Returns

A list of all the video assets for the given bundle.

### `registeredDownloadsAssets(forBundleID:)`

Returns a list of all the download assets that registered for a given `bundleIdentifier`.

``` swift
public func registeredDownloadsAssets(forBundleID bundleIdentifier: BundleIdentifier) -> [DataAsset] 
```

#### Parameters

  - bundleIdentifier: The identifier of the bundle to return download assets for.

#### Returns

A list of all the download assets for the given bundle.

### `setRegistrationEnabled(_:)`

Enables or disables bundle registration.

``` swift
public func setRegistrationEnabled(_ value: Bool) 
```

When given `false` the context will try to cancel as quick as possible
any ongoing bundle registrations.

### `addGlobalChecks(_:)`

Adds new checks to be run during the global topic analysis; after a bundle has been fully registered and its topic graph has been fully built.

``` swift
public func addGlobalChecks(_ newChecks: [ReferenceCheck]) 
```

#### Parameters

  - newChecks: The new checks to add.

### `resource(with:trait:)`

Look for a secondary resource among the registered bundles.

``` swift
public func resource(with identifier: ResourceReference, trait: DataTraitCollection = .init()) throws -> Data 
```

The context tracks resources by file name. If the documentation author specified a resource reference using a
qualified path, instead of a file name, the context will fail to find that resource.

#### Throws

\`\`ContextError/notFound(\_:​)\` if a resource with the given was not found.

#### Returns

A `Foundation.Data` object with the data for the given `ResourceReference`.

### `entity(with:)`

Look for a documentation node among the registered bundles and via any external resolvers.

``` swift
public func entity(with reference: ResolvedTopicReference) throws -> DocumentationNode 
```

#### Throws

`ContextError/notFound(_:​)` if a documentation node with the given identifier was not found.

#### Returns

A `DocumentationNode` with the given identifier.

### `children(of:kind:)`

Fetch the child nodes of a documentation node with the given `reference``,  optionally filtering to only children of the given `kind\`.

``` swift
public func children(of reference: ResolvedTopicReference, kind: DocumentationNode.Kind? = nil) -> [(reference: ResolvedTopicReference, kind: DocumentationNode.Kind)] 
```

#### Parameters

  - reference: The reference of the node to fetch children for.
  - kind: An optional documentation node kind to filter the children by.

#### Returns

A list of the reference and kind for each matching child node.

### `parents(of:)`

Fetches the parents of the documentation node with the given `reference`.

``` swift
public func parents(of reference: ResolvedTopicReference) -> [ResolvedTopicReference] 
```

#### Parameters

  - reference: The reference of the node to fetch parents for.

#### Returns

A list of the reference for the given node's parent nodes.

### `fileURL(for:)`

Attempt to locate the file for a given `reference`.

``` swift
public func fileURL(for reference: ResolvedTopicReference) -> URL? 
```

#### Parameters

  - reference: The identifier for the topic whose file URL to locate.

#### Returns

The absolute file URL of the topic if it could be found in a matching registered documentation bundle, otherwise `nil`.

### `referenceForFileURL(_:)`

Attempt to locate the reference for a given file.

``` swift
public func referenceForFileURL(_ url: URL) -> ResolvedTopicReference? 
```

#### Parameters

  - url: The file whose reference to locate.

#### Returns

The reference for the file if it could be found, otherwise `nil`.

### `title(for:)`

Attempt to retrieve the title for a given `reference`.

``` swift
public func title(for reference: ResolvedTopicReference) -> String? 
```

#### Parameters

  - reference: The reference for the topic whose title is desired.

#### Returns

The title of the topic if it could be found, otherwise `nil`.

### `resolve(_:in:fromSymbolLink:)`

Attempt to resolve a `TopicReference`.

``` swift
public func resolve(_ reference: TopicReference, in parent: ResolvedTopicReference, fromSymbolLink isCurrentlyResolvingSymbolLink: Bool = false) -> TopicReferenceResolutionResult 
```

> Note: If the reference is already resolved, the original reference is returned.

We have four approaches to trying to resolve a reference:

1.  we check if the link is already resolved, i.e. the path is fully formed and there is a matching documentation node
2.  we check if the link is resolvable in the local context (e.g. the parent), i.e. "MyClass" ~\> "MyClass/myFunction()"
3.  we check if the link is resolvable as a sibling to the parent, i.e. "MyClass/myFunction()" ~\> "MyClass/path"
4.  we check if the link is resolvable in the root context (e.g. the module) of its parent, i.e. we will try resolving 'MyClass' as 'MyKit/MyClass'
5.  we check if there is a registered external resolver for the link's bundle id and if so, use that resolver

If none of these succeeds we will return the original unresolved reference.

#### Parameters

  - reference: An unresolved (or resolved) identifer.
  - parentIdentifier: The *resolved* identifier that serves as an enclosing search context, especially the parent identifier's bundle identifier.
  - fromSymbolLink: If `true` will try to resolve relative links *only* in documentation symbol locations in the hierarchy. If `false` it will try to resolve relative links as tutorials, articles, symbols, etc.

#### Returns

The resolved identifier for the topic if the parent provided the correct context and the topic exists.

### `updateAsset(named:asset:in:)`

Update the asset with a new value given the assets name and the topic it's referenced in.

``` swift
public func updateAsset(named name: String, asset: DataAsset, in parent: ResolvedTopicReference) 
```

#### Parameters

  - name: The name of the asset to update.
  - asset: The new asset for this name.
  - parent: The topic where the asset is referenced.

### `resolveAsset(named:in:)`

Attempt to resolve an asset given its name and the topic it's referenced in.

``` swift
public func resolveAsset(named name: String, in parent: ResolvedTopicReference) -> DataAsset? 
```

#### Parameters

  - name: The name of the asset.
  - parent: The topic where the asset is referenced.

#### Returns

The data that's associated with a image asset if it was found, otherwise `nil`.

### `identifier(forAssetName:in:)`

Finds the identifier for a given asset name.

``` swift
public func identifier(forAssetName name: String, in parent: ResolvedTopicReference) -> String? 
```

`name` is one of the following formats:

  - "image" - asset name without extension

  - "image.png" - asset name including extension

#### Parameters

  - name: The name of the asset.
  - parent: The topic where the asset is referenced.

#### Returns

The best matching storage key if it was found, otherwise `nil`.

### `resolveCodeListing(_:in:)`

Attempt to resolve an unresolved code listing.

``` swift
public func resolveCodeListing(_ unresolvedCodeListingReference: UnresolvedCodeListingReference, in parent: ResolvedTopicReference) -> AttributedCodeListing? 
```

#### Parameters

  - unresolvedCodeListingReference: The code listing reference to resolve.
  - parent: The topic the code listing reference appears in.
