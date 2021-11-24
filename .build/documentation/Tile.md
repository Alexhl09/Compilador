# Tile

A semantic model for a view that links to a content type that you specify.

``` swift
public final class Tile: Semantic, DirectiveConvertible 
```

A tile is a kind of thematic content block that contains links to resources
such as sample code, videos, or forum topics.

## Inheritance

[`Semantic`](/Semantic), [`DirectiveConvertible`](/DirectiveConvertible)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

A fake directive name, the actual tile directives are in `DirectiveNames`.

``` swift
public static let directiveName = "Tile"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `identifier`

An identifier for the tile.

``` swift
public let identifier: Tile.Identifier
```

### `title`

The title of the tile.

``` swift
public let title: String
```

### `destination`

The destination of the tile's primary link.

``` swift
public let destination: URL?
```

### `content`

The contents of the tile.

``` swift
public let content: MarkupContainer
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V>(_ visitor: inout V) -> V.Result where V : SemanticVisitor 
```
