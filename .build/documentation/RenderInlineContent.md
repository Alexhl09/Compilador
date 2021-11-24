# RenderInlineContent

An inline content element.

``` swift
public enum RenderInlineContent: Equatable 
```

Typically, a renderer will append inline elements to previous inline elements.
Apart from simple content like an image or a piece of plain text,
a renderer uses inline elements to style content.

These elements don't introduce a break in their container's layout flow
like `RenderBlockContent` elements do.

``` 
[ Paragraph
   [Text] [Strong [Text]] [Text] [Emphasize [Reference]] ...
]
- - - - - - - -
[ Paragraph
  ...
]
```

Inline elements can be nested, for example, an inline piece of text can be wrapped in an emphasis element.
Block elements cannot be nested in inline elements.

## Inheritance

`Codable`, `Equatable`, [`TextIndexing`](/TextIndexing)

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `codeVoice`

A piece of code like a variable name or a single operator.

``` swift
case codeVoice(code: String)
```

### `emphasis`

An emphasized piece of inline content.

``` swift
case emphasis(inlineContent: [RenderInlineContent])
```

### `strong`

A strongly emphasized piece of inline content.

``` swift
case strong(inlineContent: [RenderInlineContent])
```

### `image`

An image element.

``` swift
case image(identifier: RenderReferenceIdentifier, metadata: RenderContentMetadata?)
```

### `reference`

A reference to another resource.

``` swift
case reference(identifier: RenderReferenceIdentifier, isActive: Bool, overridingTitle: String?, overridingTitleInlineContent: [RenderInlineContent]?)
```

### `text`

A piece of plain text.

``` swift
case text(String)
```

### `newTerm`

A piece of content that introduces a new term.

``` swift
case newTerm(inlineContent: [RenderInlineContent])
```

### `inlineHead`

An inline heading.

``` swift
case inlineHead(inlineContent: [RenderInlineContent])
```

### `` `subscript` ``

A subscript piece of content.

``` swift
case `subscript`(inlineContent: [RenderInlineContent])
```

### `superscript`

A superscript piece of content.

``` swift
case superscript(inlineContent: [RenderInlineContent])
```

### `strikethrough`

A strikethrough piece of content.

``` swift
case strikethrough(inlineContent: [RenderInlineContent])
```

## Properties

### `headings`

``` swift
public var headings: [String] 
```

## Methods

### `rawIndexableTextContent(references:)`

``` swift
public func rawIndexableTextContent(references: [String : RenderReference]) -> String 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
