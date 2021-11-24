# Resources

Additional resources that help users learn a technology.

``` swift
public final class Resources: Semantic, DirectiveConvertible, Abstracted, Redirected 
```

A documentation section that provides additional resources,
such as references to sample code, videos, and external documentation.

## Inheritance

[`Semantic`](/Semantic), [`Abstracted`](/Abstracted), [`DirectiveConvertible`](/DirectiveConvertible), [`Redirected`](/Redirected)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "Resources"
```

### `title`

A user-facing title that describes the directive.

``` swift
public static let title = "Resources"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `content`

Introductory content to display before the tiles.

``` swift
public let content: MarkupContainer
```

### `tiles`

The `Tile`s to display on the resources section.

``` swift
public let tiles: [Tile]
```

### `abstract`

``` swift
public var abstract: Paragraph? 
```

### `redirects`

``` swift
public let redirects: [Redirect]?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
