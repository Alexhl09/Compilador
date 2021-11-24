# RenderNode

A rendering-friendly representation of a documentation node.

``` swift
public struct RenderNode: VariantContainer 
```

A render node contains all the data required for a renderer to display a topic's documentation. This includes the topic's
authored markup documentation, hierarchy information (the topic's curation), API availability, and more.

The fields of a render node are populated depending on the documentation page's type. For example, reference
documentation pages (i.e., symbols and articles) have their child topics listed in `topicSections`, but for Tutorial pages,
that field is empty.

Information about external resources such as other documentation pages or media is stored in the `references` dictionary.

An OpenAPI specification for render node is available in the repo at `Sources/SwiftDocC/SwiftDocC.docc/Resources/RenderNode.spec.json`.

### Versioning

The render node schema constantly evolves to support new documentation features. To help clients maintain compatibility,
we associate each schema with a version. See `schemaVersion` for more details.

### Variants

Different variants of a documentation page can be represented by a single render node using the `variantOverrides` property.
This property holds overrides that clients should apply to the render JSON when processing documentation for specific programming languages. The overrides
are organized by traits (e.g., language) and it's up to the client to determine which trait is most appropriate for them. For example, a client that wants to
process the Objective-C version of documentation should apply the overrides associated with the `interfaceLanguage: objc` trait.

Use the `RenderJSONEncoder/makeEncoder(prettyPrint:emitVariantOverrides:)` API to instantiate a JSON encoder that's configured
to accumulate variant overrides and emit them to the `variantOverrides` property.

The overrides are emitted in the [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) format.

To apply variants onto a render node using `SwiftDocC`, use the `RenderNodeVariantOverridesApplier` API.

## Topics

### General

  - `schemaVersion`

  - `kind-swift.property`

  - `sections`

  - `references`

  - `hierarchy`

  - `metadata`

### Reference Documentation Data

Data specific for reference documentation nodes.

  - `abstract`

  - `primaryContentSections`

  - `topicSections`

  - `relationshipSections`

  - `defaultImplementationsSections`

  - `seeAlsoSections`

  - `deprecationSummary`

  - `variants`

  - `diffAvailability`

### Multi-Language Reference Documentation Data

Data specific for reference documentation nodes that are available in multiple programming languages.

  - `abstractVariants`

  - `primaryContentSectionsVariants`

  - `topicSectionsVariants`

  - `relationshipSectionsVariants`

  - `defaultImplementationsSectionsVariants`

  - `seeAlsoSectionsVariants`

  - `deprecationSummaryVariants`

### Sample Code Data

Data specific for sample code nodes.

  - `sampleDownload`

### Models

  - `Variant`

## Inheritance

`Codable`, [`Indexable`](/Indexable), [`VariantContainer`](/VariantContainer)

## Initializers

### `init(identifier:kind:)`

Creates an instance given an identifier and a kind.

``` swift
public init(identifier: ResolvedTopicReference, kind: Kind) 
```

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `headings`

``` swift
public var headings: [String] 
```

### `assetReferences`

All image, video, file, and download references of this node, grouped by their type.

``` swift
var assetReferences: [RenderReferenceType: [RenderReference]] 
```

### `schemaVersion`

The current version of the render node schema.

``` swift
public var schemaVersion 
```

The schema version describes the compatibility of a client with a render node value. Clients should be able to decode
render node values of the same major version, but are not guaranteed to be able to decode values of other major versions.
For example, a client that supports render node `2.5.0` should be able to process any render node of version greater than
or equal to `2.0.0` and less than `3.0.0` *with no regressions*, ignoring new fields in render nodes of version greater
than `2.5.0`.

The components should be incremented as follows:

  - The *major* component should be incremented when introducing a change that prevents clients from processing
    older render node values, for example when creating a new required property.

  - The *minor* component should be incremented when introducing a change that's compatible with older values, for example
    when creating a new optional property.

  - The *pre-release* component can be used during development to indicate a new version without incrementing the major or
    minor components. When creating a DocC release, the render node version should not have a pre-release
    component.

> Note: The patch value is currently unused and always set to `0`.

### `identifier`

The identifier of the render node.

``` swift
public var identifier: ResolvedTopicReference
```

The identifier of a render node is typically the same as the documentation node it's representing.

### `kind`

The kind of this documentation node.

``` swift
public var kind: Kind
```

### `references`

The values of the references used in documentation node. These can be references to other nodes, media, and more.

``` swift
public var references: [String: RenderReference] = [:]
```

### `hierarchy`

Hierarchy information about the context in which this documentation node is placed.

``` swift
public var hierarchy: RenderHierarchy?
```

### `metadata`

Arbitrary metadata information about the render node.

``` swift
public var metadata 
```

### `abstract`

The default value for the abstract of the node, which provides a short overview of its contents.

``` swift
public var abstract: [RenderInlineContent]? 
```

### `abstractVariants`

The variants of the abstract of the node, which provide a short overview of its contents.

``` swift
public var abstractVariants: VariantCollection<[RenderInlineContent]?> 
```

### `primaryContentSections`

The default value of the main sections of a reference documentation node.

``` swift
public var primaryContentSections: [RenderSection] 
```

### `primaryContentSectionsVariants`

The variants of the primary content sections of the node, which are the main sections of a reference documentation node.

``` swift
public var primaryContentSectionsVariants: [VariantCollection<CodableContentSection?>] = []
```

### `topicSections`

The default Topics sections of this documentation node, which contain links to useful related documentation nodes.

``` swift
public var topicSections: [TaskGroupRenderSection] 
```

### `topicSectionsVariants`

The variants for the Topics sections of this documentation node, which contain links to useful related documentation nodes.

``` swift
public var topicSectionsVariants: VariantCollection<[TaskGroupRenderSection]> 
```

### `relationshipSections`

The default Relationships sections of a reference documentation node, which describes how this symbol is related to others.

``` swift
public var relationshipSections: [RelationshipsRenderSection] 
```

### `relationshipSectionsVariants`

The variants of the Relationships sections of a reference documentation node, which describe how this symbol is related to others.

``` swift
public var relationshipSectionsVariants: VariantCollection<[RelationshipsRenderSection]> 
```

### `defaultImplementationsSections`

The default Default Implementations sections of symbol node, which list APIs that provide a default implementation of the symbol.

``` swift
public var defaultImplementationsSections: [TaskGroupRenderSection] 
```

### `defaultImplementationsSectionsVariants`

The variants of the Default Implementations sections of symbol node, which list APIs that provide a default implementation of the symbol.

``` swift
public var defaultImplementationsSectionsVariants: VariantCollection<[TaskGroupRenderSection]> 
```

### `seeAlsoSections`

The See Also sections of a node, which list documentation resources related to this documentation node.

``` swift
public var seeAlsoSections: [TaskGroupRenderSection] 
```

### `seeAlsoSectionsVariants`

The variants of the See Also sections of a node, which list documentation resources related to this documentation node.

``` swift
public var seeAlsoSectionsVariants: VariantCollection<[TaskGroupRenderSection]> 
```

### `deprecationSummary`

A description of why this symbol is deprecated.

``` swift
public var deprecationSummary: [RenderBlockContent]? 
```

### `deprecationSummaryVariants`

The variants of the description of why this symbol is deprecated.

``` swift
public var deprecationSummaryVariants: VariantCollection<[RenderBlockContent]?> 
```

### `variants`

List of variants of the same documentation node for various languages.

``` swift
public var variants: [RenderNode.Variant]?
```

### `variantOverrides`

Language-specific overrides for documentation.

``` swift
public var variantOverrides: VariantOverrides?
```

This property holds overrides that clients should apply to the render JSON when processing documentation for specific languages. The overrides are
organized by traits (e.g., language) and it's up to the client to determine which trait is most appropriate for them. For example, a client that wants to
process the Objective-C version of documentation should apply the overrides associated with the `interfaceLanguage: objc` trait.

The overrides are emitted in the [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) format.

### `diffAvailability`

Information about what API diffs are available for this symbol.

``` swift
public var diffAvailability: DiffAvailability?
```

### `sampleDownload`

Download information for sample code nodes.

``` swift
public var sampleDownload: SampleDownloadSection?
```

### `downloadNotAvailableSummary`

Download not available information.

``` swift
public var downloadNotAvailableSummary: [RenderBlockContent]?
```

### `sections`

The sections of this node.

``` swift
public var sections: [RenderSection] = []
```

For tutorial pages, this property is the top-level grouping for the page's contents.

## Methods

### `decode(fromJSON:with:)`

Decodes a render node value from the given JSON data.

``` swift
static func decode(fromJSON data: Data, with decoder: JSONDecoder = RenderJSONDecoder.makeDecoder()) throws -> RenderNode 
```

#### Parameters

  - data: The JSON data to decode.
  - decoder: The object that decodes the JSON data.

#### Throws

A `CodingError` in case the decoder is unable to find a key or value in the data, the type of a decoded value is wrong, or the data is corrupted.

#### Returns

The decoded render node value.

### `encodeToJSON(with:renderReferenceCache:)`

Encodes a render node value as JSON data.

``` swift
func encodeToJSON(
        with encoder: JSONEncoder = RenderJSONEncoder.makeEncoder(),
        renderReferenceCache: Synchronized<[String: Data]>? = nil
    ) throws -> Data 
```

#### Parameters

  - encoder: The object that encodes the render node.
  - renderReferenceCache: A cache for encoded render reference data. When encoding a large number of render nodes, use the same cache instance to avoid encoding the same reference objects repeatedly.

#### Throws

A `CodingError` in case the encoder couldn't encode the render node.

#### Returns

The data for the encoded render node.

### `navigatorPageType()`

Returns the NavigatorIndex.PageType indicating the type of the page.

``` swift
public func navigatorPageType() -> NavigatorIndex.PageType 
```

### `indexingRecords(onPage:)`

``` swift
public func indexingRecords(onPage page: ResolvedTopicReference) throws -> [IndexingRecord] 
```

### `childrenRelationship(for:)`

Returns a list of references for children pages.

``` swift
public func childrenRelationship(for language: String? = nil) -> [RenderRelationshipsGroup] 
```

#### Returns

A list of `RenderRelationshipsGroup`.

### `projectFiles()`

Return the project files for a given `RenderNode`, if possible.

``` swift
public func projectFiles() -> DownloadReference? 
```

#### Returns

The single `DownloadReference` listed as `projectFiles` in the Intro section.

### `downloadReferences()`

Return all the download references found in a single `RenderNode`.

``` swift
public func downloadReferences() -> [DownloadReference] 
```

#### Returns

A list of `DownloadReference` for all the content that can be downloaded from the page.

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
