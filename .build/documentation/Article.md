# Article

The in-memory representation of an article.

``` swift
public final class Article: Semantic, MarkupConvertible, Abstracted, Redirected, AutomaticTaskGroupsProviding 
```

An article is written using markdown headers and paragraphs. There is an implicit meaning to the structure of an article that's parsed from its markup
when the article is instantiated. For example, the leading level 1 heading is considered the article's title, the first paragraph of text is considered the
article's abstract, and following paragraphs up to the next heading is considered the article's discussion.

## Inheritance

[`Semantic`](/Semantic), [`AutomaticTaskGroupsProviding`](/AutomaticTaskGroupsProviding), [`Abstracted`](/Abstracted), [`MarkupConvertible`](/MarkupConvertible), [`Redirected`](/Redirected)

## Initializers

### `init?(from:source:for:in:problems:)`

Initializes a new article with a given markup and source for a given documentation bundle and documentation context.

``` swift
public convenience init?(from markup: Markup, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

#### Parameters

  - markup: The markup that makes up this article's content.
  - source: The location of the file that this article's content comes from.
  - bundle: The documentation bundle that the article belongs to.
  - context: The documentation context that the article belongs to.
  - problems: A mutable collection of problems to update with any problem encountered while initializing the article.

## Properties

### `redirects`

An optional list of previously known locations for this article.

``` swift
private(set) public var redirects: [Redirect]?
```

### `abstract`

The conceptual abstract for this article.

``` swift
public var abstract: Paragraph? 
```

This content is parsed from the markup that the article was initialized with.

### `deprecationSummary`

An optional custom deprecation summary for a deprecated symbol.

``` swift
private(set) public var deprecationSummary: MarkupContainer?
```

### `discussion`

The conceptual discussion section for this article.

``` swift
private(set) public var discussion: DiscussionSection?
```

The discussion section is parsed from the markup content between the `abstract`  and the "Topics" section.

### `abstractSection`

The abstract section of the article.

``` swift
private(set) public var abstractSection: AbstractSection?
```

### `topics`

The Topic curation section of the article.

``` swift
private(set) public var topics: TopicsSection?
```

### `seeAlso`

The See Also section of the article.

``` swift
private(set) public var seeAlso: SeeAlsoSection?
```

### `title`

The title of the article.

``` swift
internal(set) public var title: Heading?
```

## Methods

### `accept(_:)`

Visit the article using a semantic visitor and return the result of visiting the article.

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```

#### Parameters

  - visitor: The semantic visitor to visit this article.

#### Returns

The result of visiting the article.
