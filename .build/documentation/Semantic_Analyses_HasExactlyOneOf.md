# Semantic.Analyses.HasExactlyOneOf

Checks a parent directive for the presence of exactly one of two child directives—but not both—to be converted to a type `SemanticAnalysis/Result`. If so, return that child and the remainder.

``` swift
public struct HasExactlyOneOf<Parent: Semantic & DirectiveConvertible, Child1: Semantic & DirectiveConvertible, Child2: Semantic & DirectiveConvertible>: SemanticAnalysis 
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
public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> (Child1?, Child2?, remainder: MarkupContainer) where Children.Element == Markup 
```
