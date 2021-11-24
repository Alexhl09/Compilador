# Comment

A general purpose comment directive. All contents inside are stripped from

``` swift
public final class Comment: Semantic, DirectiveConvertible 
```

> Warning: Content inside a comment should be considered absolutely confidential to the author. Never emit comments in anything that an end-user can receive. As an example, comments should not be emitted in `RenderNode` JSON.

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
public static let directiveName = "Comment"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `content`

The comment content.

``` swift
public let content: MarkupContainer
```
