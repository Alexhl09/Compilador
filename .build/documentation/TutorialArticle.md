# TutorialArticle

An article alongside tutorial content, with the following structure:​

``` swift
public final class TutorialArticle: Semantic, DirectiveConvertible, Abstracted, Titled, Timed, Redirected 
```

``` plain
Article (time)
    Intro
    Markup | Stack | ContentAndMedia
```

See `Stack` for more information about how to construct layouts. Markup outside of a stack is assumed full width.

## Inheritance

[`Semantic`](/Semantic), [`Abstracted`](/Abstracted), [`DirectiveConvertible`](/DirectiveConvertible), [`Redirected`](/Redirected), [`Timed`](/Timed), [`Titled`](/Titled)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "Article"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `durationMinutes`

``` swift
public let durationMinutes: Int?
```

### `intro`

The introductory section of the tutorial article.

``` swift
public let intro: Intro?
```

### `content`

The body content of the tutorial article.

``` swift
public let content: [MarkupLayout]
```

### `assessments`

A collection of questions related to the article's content.

``` swift
public let assessments: Assessments?
```

### `callToActionImage`

An image you use to encourage readers to visit another piece of documentation.

``` swift
public let callToActionImage: ImageMedia?
```

### `abstract`

``` swift
public var abstract: Paragraph? 
```

### `title`

``` swift
public var title: String? 
```

### `landmarks`

The linkable parts of the tutorial article.

``` swift
public var landmarks: [Landmark]
```

Use these elements to create direct links to discrete sections within the tutorial.

### `redirects`

``` swift
public let redirects: [Redirect]?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
