# Semantic.Analyses.HasOnlySequentialHeadings

Checks for any direct heading children that do not meet the minimum heading level (`startingFromLevel`) or that exceed the level of a previous *valid* heading by more than one.

``` swift
public struct HasOnlySequentialHeadings<Parent: Semantic & DirectiveConvertible>: SemanticAnalysis 
```

For example, when `startingFromLevel` is `2`:

``` markdown
# H1 <- invalid, too low
## H2 <- valid, meets minimum
## H2 <- valid, equal to previous valid
### H3 <- valid, one more than previous
#### H4 <- valid, one more than previous
## H2 <- valid, exceeds minimum heading level
#### H4 <- invalid, skips H3 heading level
```

## Inheritance

[`SemanticAnalysis`](/SemanticAnalysis)

## Initializers

### `init(severityIfFound:startingFromLevel:)`

``` swift
public init(severityIfFound: DiagnosticSeverity?, startingFromLevel: Int) 
```

## Methods

### `analyze(_:children:source:for:in:problems:)`

``` swift
@discardableResult public func analyze<Children: Sequence>(_ directive: BlockDirective, children: Children, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) -> [Heading] where Children.Element == Markup 
```

  - returns: All valid headings.
