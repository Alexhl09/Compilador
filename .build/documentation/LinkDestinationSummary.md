# LinkDestinationSummary

A summary of an element that you can link to from outside the documentation bundle.

``` swift
public struct LinkDestinationSummary: Codable, Equatable 
```

The non-optional properties of this summary are all the information needed when another bundle references this element.

Various information from the summary is used depending on what content references the summarized element. For example:

  - In a paragraph of text, a link to this element will use the `title` as the link text and style the tile in code font if the `kind` is a type of symbol.

  - In a task group, the the `title` and `abstract-swift.property` is displayed together to give more context about this element and the element may be marked as deprecated
    based on the values of its  `platforms` and other metadata about the current versions of the platforms.

## Inheritance

`Codable`, `Equatable`

## Nested Type Aliases

### `Abstract`

An abstract is a single paragraph of rendered inline content.

``` swift
public typealias Abstract = [RenderInlineContent]
```

### `PlatformAvailability`

The availability information for a platform.

``` swift
public typealias PlatformAvailability = AvailabilityRenderItem
```

### `DeclarationFragments`

The rendered fragments of a symbol's declaration.

``` swift
public typealias DeclarationFragments = [DeclarationRenderSection.Token]
```

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `kind`

The kind of the summarized element.

``` swift
public let kind: DocumentationNode.Kind
```

### `language`

The language of the summarized element.

``` swift
public let language: SourceLanguage
```

### `path`

The relative path to this element.

``` swift
public let path: String
```

### `referenceURL`

The resolved topic reference URL to this element.

``` swift
public var referenceURL: URL
```

### `title`

The title of the summarized element.

``` swift
public let title: String
```

### `abstract`

The abstract of the summarized element.

``` swift
public let abstract: Abstract?
```

### `availableLanguages`

All the languages in which the summarized element is available.

``` swift
public let availableLanguages: Set<SourceLanguage>
```

### `platforms`

Information about the platforms for which the summarized element is available.

``` swift
public let platforms: [PlatformAvailability]?
```

### `taskGroups`

The reference URLs of the summarized element's children, grouped by their task groups.

``` swift
public let taskGroups: [TaskGroup]?
```

> 

> 

### `usr`

The unique, precise identifier for this symbol that you use to reference it across different systems, or `nil` if the summarized element isn't a symbol.

``` swift
public let usr: String?
```

### `declarationFragments`

The fragments for this symbol's declaration, or `nil` if the summarized element isn't a symbol.

``` swift
public let declarationFragments: DeclarationFragments?
```

### `redirects`

Any previous URLs for this element.

``` swift
public let redirects: [URL]?
```

A web server can use this list of URLs to redirect to the current URL.

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
