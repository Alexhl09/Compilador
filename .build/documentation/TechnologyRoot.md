# TechnologyRoot

A directive to set this page as a documentation root-level node.

``` swift
public final class TechnologyRoot: Semantic, DirectiveConvertible 
```

This directive is only valid within a top-level `Metadata` directive:

``` 
@Metadata {
   @TechnologyRoot
}
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
public static let directiveName = "TechnologyRoot"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```
