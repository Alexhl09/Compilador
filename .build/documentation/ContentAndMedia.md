# ContentAndMedia

A piece of media, such as an image or video, with an attached description.

``` swift
public final class ContentAndMedia: Semantic, DirectiveConvertible 
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
public static let directiveName = "ContentAndMedia"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `title`

The title of this slide.

``` swift
public let title: String?
```

### `layout`

The `Layout` of the slide.

``` swift
public let layout: Layout?
```

### `mediaPosition`

The visual position of a semantic object's piece of media in relation to its prose content.

``` swift
public let mediaPosition: MediaPosition
```

### `eyebrow`

An optional eyebrow to display at the top of the slide.

``` swift
public let eyebrow: String?
```

### `content`

The prose content of the slide.

``` swift
public let content: MarkupContainer
```

### `media`

A `Media` item to display next to the `content`.

``` swift
public let media: Media?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V>(_ visitor: inout V) -> V.Result where V : SemanticVisitor 
```
