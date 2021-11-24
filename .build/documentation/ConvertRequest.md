# ConvertRequest

A request to convert in-memory documentation.

``` swift
public struct ConvertRequest: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(externalIDsToConvert:documentPathsToConvert:includeRenderReferenceStore:bundleLocation:displayName:identifier:version:symbolGraphs:knownDisambiguatedSymbolPathComponents:markupFiles:miscResourceURLs:defaultCodeListingLanguage:)`

``` swift
@available(*, deprecated, message: "Use 'init(bundleInfo:externalIDsToConvert:...)' instead.")
    public init(
        externalIDsToConvert: [String]?,
        documentPathsToConvert: [String]? = nil,
        includeRenderReferenceStore: Bool? = nil,
        bundleLocation: URL? = nil,
        displayName: String,
        identifier: String,
        version: String,
        symbolGraphs: [Data],
        knownDisambiguatedSymbolPathComponents: [String: [String]]? = nil,
        markupFiles: [Data],
        miscResourceURLs: [URL],
        defaultCodeListingLanguage: String?
    ) 
```

### `init(bundleInfo:featureFlags:externalIDsToConvert:documentPathsToConvert:includeRenderReferenceStore:bundleLocation:symbolGraphs:knownDisambiguatedSymbolPathComponents:markupFiles:miscResourceURLs:)`

Creates a request to convert in-memory documentation.

``` swift
public init(
        bundleInfo: DocumentationBundle.Info,
        featureFlags: FeatureFlags = FeatureFlags(),
        externalIDsToConvert: [String]?,
        documentPathsToConvert: [String]? = nil,
        includeRenderReferenceStore: Bool? = nil,
        bundleLocation: URL? = nil,
        symbolGraphs: [Data],
        knownDisambiguatedSymbolPathComponents: [String: [String]]? = nil,
        markupFiles: [Data],
        miscResourceURLs: [URL]
    ) 
```

#### Parameters

  - bundleInfo: Information about the bundle to convert.
  - documentPathsToConvert: The paths of the documentation nodes to convert.
  - includeRenderReferenceStore: Whether the conversion's render reference store should be included in the response.
  - bundleLocation: The file location of the documentation bundle to convert, if any.
  - symbolGraphs: The symbols graph data included in the documentation bundle to convert.
  - knownDisambiguatedSymbolPathComponents: The mapping of external symbol identifiers to known disambiguated symbol path components.
  - markupFiles: The markup file data included in the documentation bundle to convert.
  - miscResourceURLs: The on-disk resources in the documentation bundle to convert.

## Properties

### `bundleInfo`

Information about the documentation bundle to convert.

``` swift
public var bundleInfo: DocumentationBundle.Info
```

#### See Also

  - `DocumentationBundle/Info-swift.struct`

### `featureFlags`

Feature flags to enable when performing this convert request.

``` swift
public var featureFlags: FeatureFlags
```

### `externalIDsToConvert`

The external IDs of the symbols to convert.

``` swift
public var externalIDsToConvert: [String]?
```

Use this property to indicate what symbol documentation nodes should be converted. When `externalIDsToConvert`
and `documentPathsToConvert` are both set, the documentation nodes that are in either arrays will be
converted.

If you want all the symbol render nodes to be returned as part of the conversion's response, set this property to `nil`.
For Swift, the external ID of the symbol is its USR.

### `knownDisambiguatedSymbolPathComponents`

The mapping of external symbol identifiers to known disambiguated symbol path components.

``` swift
public var knownDisambiguatedSymbolPathComponents: [String: [String]]?
```

Use this property to provide accurately disambiguated symbol path components for symbols
in the given `symbolGraphs` that collide with other symbols that exist in the module but
are not included in the given partial symbol graphs.

### `documentPathsToConvert`

The paths of the documentation nodes to convert.

``` swift
public var documentPathsToConvert: [String]?
```

Use this property to indicate what documentation nodes should be converted. When `externalIDsToConvert`
and `documentPathsToConvert` are both set, the documentation nodes that are in either arrays will be
converted.

If you want all the render nodes to be returned as part of the conversion's response, set this property to `nil`.

### `includeRenderReferenceStore`

Whether the conversion's render reference store should be included in the response.

``` swift
public var includeRenderReferenceStore: Bool?
```

The `RenderReferenceStore` contains compiled information for documentation nodes registered in a context. This
information can be used as a lightweight index of the available documentation content in the bundle that's been converted.

### `bundleLocation`

The file location of the bundle to convert, if any.

``` swift
public var bundleLocation: URL?
```

### `displayName`

The display name of the documentation bundle to convert.

``` swift
@available(*, deprecated, message: "Use 'bundleInfo.displayName' instead.")
    public var displayName: String 
```

#### See Also

  - `DocumentationBundle/displayName`

### `identifier`

The identifier of the documentation bundle to convert.

``` swift
@available(*, deprecated, message: "Use 'bundleInfo.identifier' instead.")
    public var identifier: String 
```

#### See Also

  - `DocumentationBundle/identifier`

### `version`

The version of the documentation bundle to convert.

``` swift
@available(*, deprecated, message: "Use 'bundleInfo.version' instead.")
    public var version: String 
```

#### See Also

  - `DocumentationBundle/version`

### `symbolGraphs`

The symbols graph data included in the documentation bundle to convert.

``` swift
public var symbolGraphs: [Data]
```

#### See Also

  - `DocumentationBundle/symbolGraphURLs`

### `markupFiles`

The markup file data included in the documentation bundle to convert.

``` swift
public var markupFiles: [Data]
```

#### See Also

  - `DocumentationBundle/markupURLs`

### `miscResourceURLs`

The on-disk resources in the documentation bundle to convert.

``` swift
public var miscResourceURLs: [URL]
```

#### See Also

  - `DocumentationBundle/miscResourceURLs`

### `defaultCodeListingLanguage`

The default code listing language for the documentation bundle to convert.

``` swift
@available(*, deprecated, message: "Use 'bundleInfo.defaultCodeListingLanguage' instead.")
    public var defaultCodeListingLanguage: String? 
```

#### See Also

  - `DocumentationBundle/defaultCodeListingLanguage`
