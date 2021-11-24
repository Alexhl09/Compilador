# OutOfProcessReferenceResolver

A reference resolver that launches and interactively communicates with another process or service to resolve links.

``` swift
public class OutOfProcessReferenceResolver: ExternalReferenceResolver, FallbackReferenceResolver, ExternalSymbolResolver, FallbackAssetResolver 
```

If your external reference resolver or an external symbol resolver is implemented in another executable, you can use this object
to communicate between DocC and the `docc` executable.

The launched executable is expected to follow the flow outlined below, sending `OutOfProcessReferenceResolver/Request`
and `OutOfProcessReferenceResolver/Response` values back and forth:

``` 
          │
 1        ▼
┌──────────────────┐
│ Output bundle ID │
└──────────────────┘
          │
 2        ▼
┌──────────────────┐
│  Wait for input  │◀───┐
└──────────────────┘    │
          │             │
 3        ▼             │ repeat
┌──────────────────┐    │
│ Output resolved  │    │
│   information    │────┘
└──────────────────┘
```

When resolving against a server, the server is expected to be able to handle messages of type "resolve-reference" with a
`OutOfProcessReferenceResolver/Request` payload and respond with messages of type "resolved-reference-response"
with a `OutOfProcessReferenceResolver/Response` payload.

## See Also

  - `DocumentationContext/externalReferenceResolvers`

  - `DocumentationContext/fallbackReferenceResolvers`

  - `DocumentationContext/externalSymbolResolver`

  - `Request`

  - `Response`

## Inheritance

[`ExternalReferenceResolver`](/ExternalReferenceResolver), [`ExternalSymbolResolver`](/ExternalSymbolResolver), [`FallbackAssetResolver`](/FallbackAssetResolver), [`FallbackReferenceResolver`](/FallbackReferenceResolver)

## Initializers

### `init(processLocation:errorOutputHandler:)`

Creates a new reference resolver that interacts with another executable.

``` swift
public init(processLocation: URL, errorOutputHandler: @escaping (String) -> Void) throws 
```

Initializing the resolver will also launch the other executable. The other executable will remain running for the lifetime of this object.

#### Parameters

  - processLocation: The location of the other executable.
  - errorOutputHandler: A callback to process error messages from the other executable.

#### Throws

### `init(bundleIdentifier:server:convertRequestIdentifier:)`

Creates a new reference resolver that interacts with a documentation service.

``` swift
public init(bundleIdentifier: String, server: DocumentationServer, convertRequestIdentifier: String?) throws 
```

The documentation service is expected to be able to handle messages of kind "resolve-reference".

#### Parameters

  - bundleIdentifier: The bundle identifier the server can resolve references for.
  - server: The server to send link resolution requests to.

## Properties

### `bundleIdentifier`

The bundle identifier for the reference resolver in the other process.

``` swift
public let bundleIdentifier: String
```

## Methods

### `resolve(_:sourceLanguage:)`

Attempts to resolve an unresolved reference using a reference resolver in another process.

``` swift
public func resolve(_ reference: TopicReference, sourceLanguage: SourceLanguage) -> TopicReferenceResolutionResult 
```

> 

#### Parameters

  - reference: The unresolved reference.
  - sourceLanguage: The source language of the reference (in case the reference exists in multiple languages)

#### Returns

The resolved reference for the topic, or information about why the other process failed to resolve the reference.

### `entity(with:)`

Creates a new documentation node for the external reference by calling a reference resolver in another process.

``` swift
public func entity(with reference: ResolvedTopicReference) throws -> DocumentationNode 
```

> 

> 

#### Parameters

  - reference: The external reference that this resolver previously resolved.

#### Returns

A node with the documentation content for the referenced topic.

### `urlForResolvedReference(_:)`

Returns the web URL for the external topic.

``` swift
public func urlForResolvedReference(_ reference: ResolvedTopicReference) -> URL 
```

Some links may add query parameters, for example to link to a specific language variant of the topic.

> 

> 

#### Parameters

  - reference: The external reference that this resolver previously resolved.

#### Returns

The web URL for the resolved external reference.

### `entityIfPreviouslyResolved(with:)`

``` swift
public func entityIfPreviouslyResolved(with reference: ResolvedTopicReference) throws -> DocumentationNode? 
```

### `urlForResolvedReferenceIfPreviouslyResolved(_:)`

``` swift
public func urlForResolvedReferenceIfPreviouslyResolved(_ reference: ResolvedTopicReference) -> URL? 
```

### `symbolEntity(withPreciseIdentifier:)`

Creates a documentation node with a subset of the documentation content for the external symbol based on its precise identifier.

``` swift
public func symbolEntity(withPreciseIdentifier preciseIdentifier: String) throws -> DocumentationNode 
```

The precise identifier is assumed to be valid and to exist since it either comes from a trusted source, like a symbol graph file, or was
returned from the external symbol resolver or an authored symbol reference.

#### Parameters

  - preciseIdentifier: The precise identifier for an external symbol.

#### Throws

If no external symbol has this precise identifier.

#### Returns

A sparse documentation node with basic information about the symbol.

### `urlForResolvedSymbol(reference:)`

Returns the web URL for the external symbol.

``` swift
public func urlForResolvedSymbol(reference: ResolvedTopicReference) -> URL? 
```

Some links may add query parameters, for example to link to a specific language variant of the topic.

> 

> 

#### Parameters

  - reference: The external symbol reference that this resolver previously resolved.

#### Returns

The web URL for the resolved external symbol.

### `preciseIdentifier(forExternalSymbolReference:)`

Attempts to find the precise identifier for an authored symbol reference.

``` swift
public func preciseIdentifier(forExternalSymbolReference reference: TopicReference) -> String? 
```

The symbol resolver assumes that the precise identifier is valid and exist when creating a symbol node. You should pass authored
symbol references to this method to check if they exist before creating a documentation node for that symbol.

#### Parameters

  - reference: An authored reference to an external symbol.

#### Returns

The precise identifier of the referenced symbol, or `nil` if the reference is not for a resolved external symbol.

### `resolve(assetNamed:bundleIdentifier:)`

``` swift
public func resolve(assetNamed assetName: String, bundleIdentifier: String) -> DataAsset? 
```

### `symbolSemantic(kind:title:declarationFragments:platforms:)`

Creates a new symbol semantic from the resolved kind, title, declaration, and platform information, iff the kind is a symbol.

``` swift
public static func symbolSemantic(
        kind: DocumentationNode.Kind,
        title: String,
        declarationFragments: ResolvedInformation.DeclarationFragments?,
        platforms: [ResolvedInformation.PlatformAvailability]?
    ) -> Symbol? 
```

#### Parameters

  - kind: The kind of the resolved node.
  - title: The title of the resolved node
  - declarationFragments: The declaration fragments, if any, from the resolved node.
  - platforms: The platform availability information, if any, from the resolved node.

#### Returns

A new symbol semantic, or `nil` if the kind is not a symbol.
