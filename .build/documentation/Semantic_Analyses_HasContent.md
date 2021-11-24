# Semantic.Analyses.HasContent

Checks to see if a directive has child markup content.

``` swift
public struct HasContent<Parent: Semantic & DirectiveConvertible>: SemanticAnalysis 
```

## Inheritance

[`SemanticAnalysis`](/SemanticAnalysis)

## Initializers

### `init(additionalContext:)`

``` swift
public init(additionalContext: String? = nil) 
```

## Methods

### `analyze(_:children:source:for:in:problems:)`

``` swift
public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> MarkupContainer where Children.Element == Markup 
```
