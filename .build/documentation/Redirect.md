# Redirect

A directive that specifies an additional URL for the page where the directive appears.

``` swift
public final class Redirect: Semantic, DirectiveConvertible 
```

Use this directive to declare a URL where a piece of content was previously located.
For example, if you host the compiled documentation on a web server,
that server can read this data and set an HTTP "301 Moved Permanently" redirect from
the declared URL to the page's current URL and avoid breaking any existing links to the content.

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
public static let directiveName = "Redirected"
```

### `originalMarkup`

``` swift
public let originalMarkup: BlockDirective
```

### `oldPath`

The URL that redirects to the page associated with the directive.

``` swift
public let oldPath: URL
```
