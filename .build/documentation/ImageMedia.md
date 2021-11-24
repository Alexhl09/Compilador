# ImageMedia

A block filled with an image.

``` swift
public final class ImageMedia: Media, DirectiveConvertible 
```

## Inheritance

[`Media`](/Media), [`DirectiveConvertible`](/DirectiveConvertible)

## Initializers

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "Image"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `altText`

Optional alternate text for an image.

``` swift
public let altText: String?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V>(_ visitor: inout V) -> V.Result where V : SemanticVisitor 
```
