# Semantic.Analyses.HasOnlyKnownDirectives

Checks for any directives that are not valid as direct children of the parent directive.

``` swift
public struct HasOnlyKnownDirectives<Parent: Semantic & DirectiveConvertible>: SemanticAnalysis 
```

## Inheritance

[`SemanticAnalysis`](/SemanticAnalysis)

## Initializers

### `init(severityIfFound:allowedDirectives:allowsMarkup:)`

``` swift
public init(severityIfFound: DiagnosticSeverity?, allowedDirectives: [String], allowsMarkup: Bool = true) 
```

## Methods

### `analyze(_:children:source:for:in:problems:)`

``` swift
public func analyze<Children>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) where Children: Sequence, Children.Element == Markup 
```
