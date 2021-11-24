# Semantic.Analyses.HasExactlyOneUnorderedList

``` swift
public struct HasExactlyOneUnorderedList<Parent: Semantic & DirectiveConvertible, ListElement: Markup>: SemanticAnalysis 
```

## Inheritance

[`SemanticAnalysis`](/SemanticAnalysis)

## Methods

### `analyze(_:children:source:for:in:problems:)`

``` swift
public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> [ListElement]? where Children.Element == Markup 
```
