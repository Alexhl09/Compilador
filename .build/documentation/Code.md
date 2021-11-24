# Code

A code file to display alongside a `Step`.

``` swift
public final class Code: Semantic, DirectiveConvertible 
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
public static let directiveName = "Code"
```

### `originalMarkup`

The original `BlockDirective` node that was parsed into this semantic code.

``` swift
public let originalMarkup: BlockDirective
```

### `fileReference`

A reference to the file containing the code that should be loaded from the bundle.

``` swift
public let fileReference: ResourceReference
```

### `fileName`

The name of the file, for display and identification purposes.
If the `fileName` does not change between two consecutive steps (possibly across `TutorialSection`s),
the changes between the two files may be indicated in the UI.

``` swift
public let fileName: String
```

### `previousFileReference`

If specified, should present a diff between this property and `fileReference`.

``` swift
public let previousFileReference: ResourceReference?
```

### `shouldResetDiff`

Whether a diff should be shown. See `Code/fileName` for more information.

``` swift
public let shouldResetDiff: Bool
```

### `preview`

A preview image or video overlay.

``` swift
public let preview: Media?
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V>(_ visitor: inout V) -> V.Result where V : SemanticVisitor 
```
