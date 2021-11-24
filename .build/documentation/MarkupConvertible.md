# MarkupConvertible

A type that can be initialized from markup.

``` swift
public protocol MarkupConvertible 
```

## Requirements

### init?(from:​source:​for:​in:​problems:​)

Initializes a new element with a given markup and source for a given documentation bundle and documentation context.

``` swift
init?(from markup: Markup, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem])
```

#### Parameters

  - markup: The markup that makes up this element's content.
  - source: The location of the file that this element's content comes from.
  - bundle: The documentation bundle that the element belongs to.
  - context: The documentation context that the element belongs to.
  - problems: A mutable collection of problems to update with any problem encountered while initializing the element.
