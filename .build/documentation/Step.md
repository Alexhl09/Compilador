# Step

An instructional step to complete as a part of a `TutorialSection`. `DirectiveConvertible`

``` swift
public final class Step: Semantic, DirectiveConvertible 
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
public static let directiveName = "Step"
```

### `originalMarkup`

The original `Markup` node that was parsed into this semantic step,
or `nil` if it was created elsewhere.

``` swift
public let originalMarkup: BlockDirective
```

### `media`

A piece of media associated with the step to display when selected.

``` swift
public let media: Media?
```

### `code`

A code file associated with the step to display when selected.

``` swift
public let code: Code?
```

### `content`

`Markup` content inside the step.

``` swift
public let content: MarkupContainer
```

### `caption`

The step's caption.

``` swift
public let caption: MarkupContainer
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
