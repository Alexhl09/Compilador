# VideoMedia

A block filled with a video.

``` swift
public final class VideoMedia: Media, DirectiveConvertible 
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
public static let directiveName = "Video"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `poster`

An image to be shown when the video isn't playing.

``` swift
public let poster: ResourceReference?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V>(_ visitor: inout V) -> V.Result where V : SemanticVisitor 
```
