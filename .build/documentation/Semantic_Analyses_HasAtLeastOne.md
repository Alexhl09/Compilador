# Semantic.Analyses.HasAtLeastOne

Checks to see if a parent directive has at least one child directive of a specified type. If so, return those that match and those that don't.

``` swift
public struct HasAtLeastOne<Parent: Semantic & DirectiveConvertible, Child: Semantic & DirectiveConvertible>: SemanticAnalysis 
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
public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> ([Child], remainder: MarkupContainer) where Children.Element == Markup 
```
