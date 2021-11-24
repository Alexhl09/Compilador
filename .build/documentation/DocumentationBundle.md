# DocumentationBundle

A documentation bundle.

``` swift
public struct DocumentationBundle 
```

A documentation bundle stores all of the authored content and metadata for a collection of topics and/or frameworks.

No content data is immediately loaded when creating a `DocumentationBundle` except for its `Info.plist`. Its purpose is to provide paths on disk for documentation resources.

## Topics

### Bundle Metadata

  - `displayName`

  - `identifier`

  - `version`

  - `defaultCodeListingLanguage`

  - `defaultAvailability`

## Initializers

### `init(displayName:identifier:version:baseURL:attributedCodeListings:symbolGraphURLs:markupURLs:miscResourceURLs:customHeader:customFooter:defaultCodeListingLanguage:defaultAvailability:)`

Creates a documentation bundle.

``` swift
@available(*, deprecated, message: "Use 'init(info:baseURL:...)' instead.")
    public init(displayName: String, identifier: String, version: Version, baseURL: URL = URL(string: "/")!, attributedCodeListings: [String: AttributedCodeListing] = [:], symbolGraphURLs: [URL], markupURLs: [URL], miscResourceURLs: [URL], customHeader: URL? = nil, customFooter: URL? = nil, defaultCodeListingLanguage: String? = nil, defaultAvailability: DefaultAvailability? = nil) 
```

#### Parameters

  - displayName: The display name of the documentation bundle.
  - identifier: A reverse-DNS style identifier indicating the documentation bundle.
  - version: The version of the documentation bundle.
  - attributedCodeListings: Code listings extracted from the documented modules' source, indexed by their identifier.
  - symbolGraphURLs: Symbol Graph JSON files for the modules documented by the bundle.
  - markupURLs: DocC Markup files of the bundle.
  - miscResourceURLs: Miscellaneous resources of the bundle.
  - defaultCodeListingLanguage: The default language for code blocks.
  - defaultAvailability: Default availability information for modules in this bundle.

### `init(info:baseURL:attributedCodeListings:symbolGraphURLs:markupURLs:miscResourceURLs:customHeader:customFooter:)`

Creates a documentation bundle.

``` swift
public init(
        info: Info,
        baseURL: URL = URL(string: "/")!,
        attributedCodeListings: [String: AttributedCodeListing] = [:],
        symbolGraphURLs: [URL],
        markupURLs: [URL],
        miscResourceURLs: [URL],
        customHeader: URL? = nil,
        customFooter: URL? = nil
    ) 
```

#### Parameters

  - info: Information about the bundle.
  - baseURL: A URL prefix to be appended to the relative presentation URL.
  - attributedCodeListings: Code listings extracted from the documented modules' source, indexed by their identifier.
  - symbolGraphURLs: Symbol Graph JSON files for the modules documented by the bundle.
  - markupURLs: DocC Markup files of the bundle.
  - miscResourceURLs: Miscellaneous resources of the bundle.
  - customHeader: Custom HTML file to use as the header for rendered output.
  - customFooter: Custom HTML file to use as the footer for rendered output.

## Properties

### `info`

Information about this documentation bundle that's unrelated to its documentation content.

``` swift
public let info: Info
```

### `displayName`

The bundle's human-readable display name.

``` swift
public var displayName: String 
```

### `identifier`

The documentation bundle identifier.

``` swift
public var identifier: String 
```

An identifier string that specifies the app type of the bundle. The string should be in reverse DNS format using only the Roman alphabet in upper and lower case (A–Z, a–z), the dot (“.”), and the hyphen (“-”).

### `version`

The documentation bundle's version.

``` swift
public var version: Version 
```

The build version number should be a string comprised of three non-negative, period-separated integers with the first integer being greater than zero—for example, `3.1.2`. The string should only contain numeric (0-9) and period (.) characters. Leading zeros are truncated from each integer and will be ignored (that is, `1.02.3` is equivalent to `1.2.3`).

The meaning of each element is as follows:

  - The first number represents the most recent major release and is limited to a maximum length of four digits.

  - The second number represents the most recent significant revision and is limited to a maximum length of two digits.

  - The third number represents the most recent minor bug fix and is limited to a maximum length of two digits.

If the value of the third number is 0, you can omit it and the second period.

### `attributedCodeListings`

Code listings extracted from the documented modules' source, indexed by their identifier.

``` swift
public var attributedCodeListings: [String: AttributedCodeListing]
```

### `symbolGraphURLs`

Symbol Graph JSON files for the modules documented by this bundle.

``` swift
public let symbolGraphURLs: [URL]
```

### `markupURLs`

DocC Markup files of the bundle.

``` swift
public let markupURLs: [URL]
```

### `miscResourceURLs`

Miscellaneous resources of the bundle.

``` swift
public let miscResourceURLs: [URL]
```

### `customHeader`

Custom HTML file to use as the header for rendered output.

``` swift
public let customHeader: URL?
```

### `customFooter`

Custom HTML file to use as the footer for rendered output.

``` swift
public let customFooter: URL?
```

### `defaultCodeListingLanguage`

Default syntax highlighting to use for code samples in this bundle.

``` swift
@available(*, deprecated, message: "Use 'info.defaultCodeListingLanguage' instead.")
    public var defaultCodeListingLanguage: String? 
```

### `defaultAvailability`

``` swift
@available(*, deprecated, message: "Use 'info.defaultAvailability' instead.")
    public var defaultAvailability: DefaultAvailability? 
```

### `baseURL`

A URL prefix to be appended to the relative presentation URL.

``` swift
public let baseURL: URL
```

This is used when a bundle's documentation is hosted in a known location.

### `rootReference`

``` swift
public private(set) var rootReference: ResolvedTopicReference
```

### `documentationRootReference`

Default path to resolve symbol links.

``` swift
public private(set) var documentationRootReference: ResolvedTopicReference
```

### `tutorialsRootReference`

Default path to resolve technology links.

``` swift
public var tutorialsRootReference: ResolvedTopicReference
```

### `technologyTutorialsRootReference`

Default path to resolve tutorials.

``` swift
public var technologyTutorialsRootReference: ResolvedTopicReference
```

### `articlesDocumentationRootReference`

Default path to resolve articles.

``` swift
public var articlesDocumentationRootReference: ResolvedTopicReference
```
