# Choice

One of possibly many choices in a `MultipleChoice` question.

``` swift
public final class Choice: Semantic, DirectiveConvertible 
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
public static let directiveName = "Choice"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `isCorrect`

`true` if this choice is a correct one; there can be multiple correct choices.

``` swift
public let isCorrect: Bool
```

### `content`

The markup content of the choice, what the user examines to decide to select this choice.

``` swift
public let content: MarkupContainer
```

### `image`

Optional image illustrating the answer.

``` swift
public let image: ImageMedia?
```

### `justification`

A justification as to whether this choice is correct.

``` swift
public let justification: Justification
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
