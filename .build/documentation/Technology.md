# Technology

An overview of the educational materials under a specific technology or technology area.

``` swift
public final class Technology: Semantic, DirectiveConvertible, Abstracted, Redirected 
```

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
public static let directiveName = "Tutorials"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `name`

The name of the technology.

``` swift
public let name: String
```

### `intro`

The `Intro` section for this technology.

``` swift
public let intro: Intro
```

### `volumes`

The sections that outline the technology.

``` swift
public let volumes: [Volume]
```

### `resources`

Additional resources to aid in learning the technology.

``` swift
public let resources: Resources?
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
