# Semantic.Analyses.HasOnlyKnownArguments

``` swift
public struct HasOnlyKnownArguments<Parent: Semantic & DirectiveConvertible>: SemanticAnalysis 
```

## Inheritance

[`SemanticAnalysis`](/SemanticAnalysis)

## Initializers

### `init(severityIfFound:allowedArguments:)`

``` swift
public init(severityIfFound: DiagnosticSeverity?, allowedArguments: [String]) 
```

## Methods

### `analyze(_:children:source:for:in:problems:)`

``` swift
public func analyze<Children>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> [String: Markdown.DirectiveArgument] where Children: Sequence, Children.Element == Markup 
```
