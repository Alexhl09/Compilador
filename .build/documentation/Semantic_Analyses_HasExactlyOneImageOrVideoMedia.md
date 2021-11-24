# Semantic.Analyses.HasExactlyOneImageOrVideoMedia

``` swift
public struct HasExactlyOneImageOrVideoMedia<Parent: Semantic & DirectiveConvertible>: SemanticAnalysis 
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
public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> (Media?, remainder: MarkupContainer) where Children.Element == Markup 
```
