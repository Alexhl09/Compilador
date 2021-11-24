# Metadata

A directive that contains various metadata about a page.

``` swift
public final class Metadata: Semantic, DirectiveConvertible 
```

This directive acts as a container for metadata and configuration without any arguments of its own.

## Topics

### Child Directives

  - `DocumentationExtension`

  - `TechnologyRoot`

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
public static let directiveName = "Metadata"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```
