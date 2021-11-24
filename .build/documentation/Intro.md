# Intro

An introductory section for instructional pages.

``` swift
public final class Intro: Semantic, DirectiveConvertible 
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
public static let directiveName = "Intro"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `title`

The title of the containing `Tutorial`.

``` swift
public let title: String
```

### `video`

An optional video, displayed as a modal.

``` swift
public let video: VideoMedia?
```

### `image`

An optional standout image.

``` swift
public let image: ImageMedia?
```

### `content`

The child markup content.

``` swift
public let content: MarkupContainer
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
