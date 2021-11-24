# Justification

A short justification as to whether a `Choice` is correct for a question.

``` swift
public final class Justification: Semantic, DirectiveConvertible 
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
public static let directiveName = "Justification"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `content`

The explanatory content for this justification.

``` swift
public let content: MarkupContainer
```

### `reaction`

The reaction to the reader selecting the containing `Choice`. Defaults to nil.

``` swift
public let reaction: String?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
