# TutorialSection

A section containing steps to complete to finish a `Tutorial`.

``` swift
public final class TutorialSection: Semantic, DirectiveConvertible, Abstracted, Landmark, Redirected 
```

## Inheritance

[`Semantic`](/Semantic), [`Abstracted`](/Abstracted), [`DirectiveConvertible`](/DirectiveConvertible), [`Landmark`](/Landmark), [`Redirected`](/Redirected)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "Section"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `title`

The title of the section.

``` swift
public let title: String
```

### `introduction`

The  content in the task section.

``` swift
public let introduction: [MarkupLayout]
```

### `stepsContent`

The `Steps` necessary to complete this section.

``` swift
public let stepsContent: Steps?
```

### `children`

``` swift
public override var children: [Semantic] 
```

### `abstract`

``` swift
public var abstract: Paragraph? 
```

### `range`

``` swift
public var range: SourceRange? 
```

### `markup`

``` swift
public var markup: Markup 
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
