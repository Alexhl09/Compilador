# DeprecationSummary

A directive to add custom deprecation summary to an already deprecated symbol.

``` swift
public final class DeprecationSummary: Semantic, DirectiveConvertible 
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
public static let directiveName = "DeprecationSummary"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `content`

The contents of the summary.

``` swift
public let content: MarkupContainer
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V>(_ visitor: inout V) -> V.Result where V : SemanticVisitor 
```
