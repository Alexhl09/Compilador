# OutOfProcessReferenceResolver.ResolvedInformation

A type used to transfer information about a resolved reference to DocC from from a reference resolver in another executable.

``` swift
public struct ResolvedInformation: Codable 
```

## Inheritance

`Codable`

## Nested Type Aliases

### `PlatformAvailability`

Platform availability for a resolved symbol reference.

``` swift
public typealias PlatformAvailability = AvailabilityRenderItem
```

### `DeclarationFragments`

The declaration fragments for a resolved symbol reference.

``` swift
public typealias DeclarationFragments = SymbolGraph.Symbol.DeclarationFragments
```

## Initializers

### `init(kind:url:title:abstract:language:availableLanguages:platforms:declarationFragments:)`

Creates a new resolved information value with all its values.

``` swift
public init(
            kind: DocumentationNode.Kind,
            url: URL,
            title: String,
            abstract: String,
            language: SourceLanguage,
            availableLanguages: Set<SourceLanguage>,
            platforms: [PlatformAvailability]?,
            declarationFragments: DeclarationFragments?
        ) 
```

#### Parameters

  - kind: The resolved kind.
  - url: The resolved URL.
  - title: The resolved title
  - abstract: The resolved (plain text) abstract.
  - language: The resolved language.
  - availableLanguages: The languages where the resolved node is available.
  - platforms: The platforms and their versions where the resolved node is available, if any.
  - declarationFragments: The resolved declaration fragments, if any.

## Properties

### `kind`

Information about the resolved kind.

``` swift
public let kind: DocumentationNode.Kind
```

### `url`

Information about the resolved URL.

``` swift
public let url: URL
```

### `title`

Information about the resolved title.

``` swift
public let title: String 
```

### `abstract`

Information about the resolved abstract.

``` swift
public let abstract: String 
```

### `language`

Information about the resolved language.

``` swift
public let language: SourceLanguage
```

### `availableLanguages`

Information about the languages where the resolved node is available.

``` swift
public let availableLanguages:Set<SourceLanguage>
```

### `platforms`

Information about the platforms and their versions where the resolved node is available, if any.

``` swift
public let platforms: [PlatformAvailability]?
```

### `declarationFragments`

Information about the resolved declaration fragments, if any.

``` swift
public let declarationFragments: DeclarationFragments?
```

### `platformNames`

The platform names, derived from the platform availability.

``` swift
public var platformNames: Set<String>? 
```
