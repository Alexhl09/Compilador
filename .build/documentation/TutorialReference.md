# TutorialReference

A reference to a `Tutorial` or `TutorialArticle` by `URL`.

``` swift
public final class TutorialReference: Semantic, DirectiveConvertible 
```

## Inheritance

[`Semantic`](/Semantic), [`DirectiveConvertible`](/DirectiveConvertible)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "TutorialReference"
```

### `originalMarkup`

``` swift
public var originalMarkup: BlockDirective
```

### `topic`

The tutorial page or tutorial article to which this refers.

``` swift
public let topic: TopicReference
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
