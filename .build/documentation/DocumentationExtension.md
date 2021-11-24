# DocumentationExtension

A directive that controls how the documentation-extension file merges with or overrides the in-source documentation.

``` swift
public final class DocumentationExtension: Semantic, DirectiveConvertible 
```

When the `behavior-swift.property` property is `Behavior-swift.enum/append`, the content from the documentation-extension file is added after the content from
the in-source documentation for that symbol.
If a documentation-extension file doesn't have a `DocumentationExtension` directive, then it has the `Behavior-swift.enum/append` behavior.

When the `behavior-swift.property` property is `Behavior-swift.enum/override`, the content from the documentation-extension file completely replaces the content
from the in-source documentation for that symbol

This directive is only valid within a `Metadata` directive:

``` 
@Metadata {
   @DocumentationExtension(mergeBehavior: override)
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
public static let directiveName = "DocumentationExtension"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `behavior`

The merge behavior for this documentation extension.

``` swift
public let behavior: Behavior
```
