# SemanticAnalysis

A focused semantic analysis of a `BlockDirective`, recording problems and producing a result.

``` swift
public protocol SemanticAnalysis 
```

A semantic analysis should check focus on the smallest meaningful aspect of the incoming `BlockDirective`.
This eases testing and helps prevent a tangle of dependencies and side effects. For every analysis, there
should be some number of tests for its robustness.

For example, if an argument is required and is expected to be an integer, a semantic analysis
would check only that argument, attempt to convert it to an integer, and return it as the result.

> Important: A `SemanticAnalysis` should not mutate outside state or directly depend on the results
> of another analysis. This prevents runaway performance problems and strange bugs.
> It also makes it more amenable to parallelization should the need arise.

## Requirements

### Result

The result of the analysis.

``` swift
associatedtype Result
```

> Note: This result may be `Void` as some analyses merely validate aspects of a `BlockDirective`.

### analyze(\_:​children:​source:​for:​in:​problems:​)

Perform the analysis on a directive, collect problems, and attempt to return a `SemanticAnalysis/Result` if required.

``` swift
func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> Result where Children.Element == Markup
```

#### Parameters

  - directive: The `BlockDirective` that allegedly represents a `Semantic` object
  - children: The subset of `directive`'s children to analyze
  - source: A `URL` to the source file from which the `directive` came, if there was one. This is used for printing the location of a diagnostic.
  - bundle: The `DocumentationBundle` that owns the incoming `BlockDirective`
  - context: The `DocumentationContext` in which the bundle resides
  - problems: A container to append `Problem`s encountered during the analysis

#### Returns

A result of the analysis if required, such as a validated parameter or subsection.
