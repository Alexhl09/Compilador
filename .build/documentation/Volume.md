# Volume

A grouping of chapters within a larger collection of tutorials.

``` swift
public final class Volume: Semantic, DirectiveConvertible, Abstracted, Redirected 
```

## Inheritance

[`Semantic`](/Semantic), [`Abstracted`](/Abstracted), [`DirectiveConvertible`](/DirectiveConvertible), [`Redirected`](/Redirected)

## Initializers

### `init(originalMarkup:name:image:content:chapters:redirects:)`

Creates a new volume from the given parameters.

``` swift
public init(originalMarkup: BlockDirective, name: String?, image: ImageMedia?, content: MarkupContainer?, chapters: [Chapter], redirects: [Redirect]?) 
```

#### Parameters

  - originalMarkup: A directive representation of the volume.
  - name: The volume's name.
  - image: An image that represents the volume.
  - content: The volume's content.
  - chapters: A list of chapters to complete.
  - redirects: A list of URLs that redirect to the volume.

### `init?(from:source:for:in:problems:)`

``` swift
public convenience init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem]) 
```

## Properties

### `directiveName`

``` swift
public static let directiveName = "Volume"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `name`

The name of this volume.

``` swift
public let name: String?
```

### `image`

An image representing this volume.

``` swift
public let image: ImageMedia?
```

### `content`

The content describing what you'll learn in this volume.

``` swift
public let content: MarkupContainer?
```

### `chapters`

A list of chapters to complete.

``` swift
public let chapters: [Chapter]
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
