# MultipleChoice

A multiple-choice question.

``` swift
public final class MultipleChoice: Semantic, DirectiveConvertible 
```

A collection of multiple-choice questions that form an `Assessments`.

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
public static let directiveName = "MultipleChoice"
```

### `questionPhrasing`

The phrasing of the question.

``` swift
public let questionPhrasing: MarkupContainer
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `content`

Additional introductory content.

``` swift
public let content: MarkupContainer
```

Typically, this content represents a question's code block.

### `image`

An optional image associated with the question's introduction.

``` swift
public let image: ImageMedia?
```

### `choices`

The possible answers to the question.

``` swift
public let choices: [Choice]
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
