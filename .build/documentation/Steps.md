# Steps

Wraps a series of `Step`s in a tutorial task section.

``` swift
public final class Steps: Semantic, DirectiveConvertible 
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
public static let directiveName = "Steps"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `content`

The `Steps` necessary to complete this section.

``` swift
public let content: [Semantic]
```

### `children`

``` swift
public override var children: [Semantic] 
```

### `steps`

The child `Step`s in this section.

``` swift
public var steps: [Step] 
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
