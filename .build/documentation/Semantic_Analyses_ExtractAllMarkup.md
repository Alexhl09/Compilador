# Semantic.Analyses.ExtractAllMarkup

Separates `children` into markup elements that are of a specific type without performing any further analysis.

``` swift
public struct ExtractAllMarkup<Child: Markup>: SemanticAnalysis 
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
