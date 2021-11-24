# DocumentationNode

A documentation node holds all the information about a documentation entity's content.

``` swift
public struct DocumentationNode 
```

Information about relationships between documentation entities can be retrieved from the `DocumentationContext`. The documentation context is also used
to look up nodes by their unique `reference`.

## Nested Type Aliases

### `Tags`

The collection of parsed callout tags for return values, thrown errors, and parameters.

``` swift
public typealias Tags = (returns: [Return], throws: [Throw], parameters: [Parameter])
```

When the symbol's markup contains callout tags like this:

``` 
- Parameter name: Description of the name parameter.
- Throws: Description of potential errors.
- Returns: Description of the return value.
```

That markup is parsed into collections of `Parameter` values, `Throw` values, and `Return` values.

The markup for the callout tags is excluded from the markup for the `DiscussionSection`.

## Initializers

### `init(reference:kind:sourceLanguage:availableSourceLanguages:name:markup:semantic:platformNames:)`

Initializes a documentation node with all its initial values.

``` swift
public init(reference: ResolvedTopicReference, kind: Kind, sourceLanguage: SourceLanguage, availableSourceLanguages: Set<SourceLanguage>? = nil, name: Name, markup: Markup, semantic: Semantic?, platformNames: Set<String>? = nil) 
```

#### Parameters

  - reference: The unique reference to the node.
  - kind: The type of node.
  - sourceLanguage: The programming language in which the node is relevant.
  - availableSourceLanguages: All the languages in which the node is available.
  - name: The name of the node.
  - markup: The markup that makes up the content for the node.
  - semantic: The parsed documentation structure that's described by the documentation content.
  - platformNames: The names of the platforms for which the node is available.

### `init(reference:symbol:platformName:moduleName:article:problems:)`

Initializes a documentation node to represent a symbol from a symbol graph.

``` swift
@available(*, deprecated, message: "Use init(reference:symbol:platformName:moduleName:article:engine:) instead")
    public init(reference: ResolvedTopicReference, symbol: SymbolGraph.Symbol, platformName: String?, moduleName: String, article: Article?, problems: inout [Problem]) 
```

> Warning: Using this initializer will not report any diagnostics raised during the initialization of `DocumentationNode`.

#### Parameters

  - reference: The unique reference to the node.
  - symbol: The symbol to create a documentation node for.
  - platformNames: The names of the platforms for which the node is available.
  - moduleName: The name of the module that the symbol belongs to.
  - article: The documentation extension content for this symbol.
  - problems: A mutable collection of problems to update with any problem encountered while initializing the node.

### `init(reference:symbol:platformName:moduleName:article:engine:bystanderModules:)`

Initializes a documentation node to represent a symbol from a symbol graph.

``` swift
public init(reference: ResolvedTopicReference, symbol: SymbolGraph.Symbol, platformName: String?, moduleName: String, article: Article?, engine: DiagnosticEngine, bystanderModules: [String]? = nil) 
```

#### Parameters

  - reference: The unique reference to the node.
  - symbol: The symbol to create a documentation node for.
  - platformNames: The names of the platforms for which the node is available.
  - moduleName: The name of the module that the symbol belongs to.
  - article: The documentation extension content for this symbol.
  - engine: The engine that collects any problems encountered during initialization.
  - bystanderModules: An optional list of cross-import module names.

## Properties

### `reference`

The unique reference to the node.

``` swift
public var reference: ResolvedTopicReference
```

### `kind`

The type of node.

``` swift
public var kind: Kind
```

### `sourceLanguage`

The programming language in which the node is relevant.

``` swift
public var sourceLanguage: SourceLanguage
```

### `availableSourceLanguages`

All the languages in which the node is available.

``` swift
public var availableSourceLanguages: Set<SourceLanguage>
```

### `platformNames`

The names of the platforms for which the node is available.

``` swift
public var platformNames: Set<String>?
```

### `name`

The name of the node.

``` swift
public var name: Name
```

### `markup`

The markup that makes up the content of this documentation node.

``` swift
public var markup: Markup
```

After the `semantic` object is created, consulting this property is likely incorrect because
it does not include information such as resolved links.

### `semantic`

The parsed documentation structure that's described by the documentation content of this documentation node.

``` swift
public var semantic: Semantic!
```

### `symbol`

The symbol that backs this node if it's backed by a symbol, otherwise `nil`.

``` swift
public var symbol: SymbolGraph.Symbol?
```

### `unifiedSymbol`

The unified symbol data that backs this node, if it's backed by a symbol; otherwise `nil`.

``` swift
public var unifiedSymbol: UnifiedSymbolGraph.Symbol?
```

### `tags`

Callout tags found in the symbol's markup.

``` swift
public var tags: Tags = (returns: [], throws: [], parameters: [])
```

These tags contain information about the symbol's return values, potential errors, and parameters.

## Methods

### `externallyLinkableElementSummaries(context:renderNode:)`

Summarizes the node and all of its child elements that you can link to from outside the bundle.

``` swift
func externallyLinkableElementSummaries(context: DocumentationContext, renderNode: RenderNode) -> [LinkDestinationSummary] 
```

#### Parameters

  - context: The context in which references that are found the node's content are resolved in.
  - renderNode: The render node representation of this documentation node.

#### Returns

The list of summary elements, with the node's summary as the first element.
