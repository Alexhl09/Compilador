# XcodeRequirement

An informal Xcode requirement for completing an instructional `Tutorial`.

``` swift
public final class XcodeRequirement: Semantic, DirectiveConvertible 
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
public static let directiveName = "XcodeRequirement"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `title`

Human readable title.

``` swift
public let title: String
```

### `destination`

Domain where requirement applies.

``` swift
public let destination: URL
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
