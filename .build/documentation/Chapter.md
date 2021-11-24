# Chapter

A chapter containing `Tutorial`s to complete.

``` swift
public final class Chapter: Semantic, DirectiveConvertible, Abstracted, Redirected 
```

## Inheritance

[`Semantic`](/Semantic), [`Abstracted`](/Abstracted), [`DirectiveConvertible`](/DirectiveConvertible), [`Redirected`](/Redirected)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "Chapter"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `name`

The name of the chapter.

``` swift
public let name: String
```

### `content`

Content describing the contents of the chapter.

``` swift
public let content: MarkupContainer
```

### `image`

A companion media element next to the chapter's contents.

``` swift
public let image: ImageMedia?
```

### `topicReferences`

The list of tutorials and articles categorized under this chapter.

``` swift
public let topicReferences: [TutorialReference]
```

> Note: Topics may be referenced by multiple chapters.

### `abstract`

``` swift
public var abstract: Paragraph? 
```

### `redirects`

``` swift
public let redirects: [Redirect]?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
