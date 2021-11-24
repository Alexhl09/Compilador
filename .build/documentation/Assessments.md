# Assessments

A collection of questions about the concepts the documentation presents.

``` swift
public final class Assessments: Semantic, DirectiveConvertible 
```

## Inheritance

[`Semantic`](/Semantic), [`DirectiveConvertible`](/DirectiveConvertible)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "Assessments"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `questions`

The multiple-choice questions that make up the assessment.

``` swift
public let questions: [MultipleChoice]
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
