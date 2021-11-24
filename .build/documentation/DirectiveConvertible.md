# DirectiveConvertible

A semantic object formed from a directive after a series of semantic analysis checks.

``` swift
public protocol DirectiveConvertible 
```

## Default Implementations

### `canConvertDirective(_:)`

Returns a Boolean value indicating whether the `DirectiveConvertible` recognizes the given directive.

``` swift
static func canConvertDirective(_ directive: BlockDirective) -> Bool 
```

#### Parameters

  - directive: The directive to check for conversion compatibility.

## Requirements

### directiveName

The name that must match to convert a `BlockDirective` to this type.

``` swift
static var directiveName: String 
```

### originalMarkup

The `BlockDirective` that was analyzed and converted to this `Semantic` object.

``` swift
var originalMarkup: BlockDirective 
```

### init?(from:​source:​for:​in:​problems:​)

Initialize from a `BlockDirective`, performing semantic analyses to determine whether a valid object can form.

``` swift
init?(from directive: BlockDirective, source: URL?, for bundle: DocumentationBundle, in context: DocumentationContext, problems: inout [Problem])
```

#### Parameters

  - directive: The `BlockDirective` from which you want to form the object.
  - bundle: The documentation bundle that owns the directive.
  - context: The documentation context in which the bundle resides.
  - problems: An inout array of `Problem` to be collected for later diagnostic reporting.

### canConvertDirective(\_:​)

Returns a Boolean value indicating whether the `DirectiveConvertible` recognizes the given directive.

``` swift
static func canConvertDirective(_ directive: BlockDirective) -> Bool
```

#### Parameters

  - directive: The directive to check for conversion compatibility.
