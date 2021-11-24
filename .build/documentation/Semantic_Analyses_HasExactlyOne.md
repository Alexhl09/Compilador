# Semantic.Analyses.HasExactlyOne

Checks a parent directive for the presence of exactly one child directive to be converted to a type `SemanticAnalysis/Result`. If so, return that child and the remainder.

``` swift
public struct HasExactlyOne<Parent: Semantic & DirectiveConvertible, Child: Semantic & DirectiveConvertible>: SemanticAnalysis 
```

## Inheritance

[`SemanticAnalysis`](/SemanticAnalysis)

## Initializers

### `init(severityIfNotFound:)`

``` swift
public init(severityIfNotFound: DiagnosticSeverity?) 
```

## Methods

### `analyze(_:children:source:for:in:problems:)`

``` swift
public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> (Child?, remainder: MarkupContainer) where Children.Element == Markup 
```
