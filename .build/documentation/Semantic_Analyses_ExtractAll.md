# Semantic.Analyses.ExtractAll

Separates `children` into directives whose names match `Child.directiveName` and those remaining, attempting to convert extracted children to the semantic `Child` type.

``` swift
public struct ExtractAll<Child: Semantic & DirectiveConvertible>: SemanticAnalysis 
```

## Inheritance

[`SemanticAnalysis`](/SemanticAnalysis)

## Initializers

### `init()`

``` swift
public init() 
```

## Methods

### `analyze(_:children:source:for:in:problems:)`

``` swift
public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> ([Child], remainder: MarkupContainer) where Children.Element == Markup 
```
