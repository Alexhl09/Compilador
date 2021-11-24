# Semantic.Analyses.HasAtMostOne

Checks to see if a parent directive has at most one child directive of a specified type. If so, return that child and the remainder.

``` swift
public struct HasAtMostOne<Parent: Semantic & DirectiveConvertible, Child: Semantic & DirectiveConvertible>: SemanticAnalysis 
```

## Inheritance

[`SemanticAnalysis`](/SemanticAnalysis)

## Methods

### `analyze(_:children:source:for:in:problems:)`

``` swift
public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> (Child?, remainder: MarkupContainer) where Children.Element == Markup 
```
