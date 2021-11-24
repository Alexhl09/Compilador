# RenderBlockContent

A block content element.

``` swift
public enum RenderBlockContent: Equatable 
```

Block elements introduce a break in their container's layout flow, and
usually represent a discrete item of their parent's content.

Historically, the name "block element" comes from rendering scrollable, vertical content.
A block element introduced a break in the horizontal flow, was preceded
with an empty new line, and took the whole width, which started a new horizontal flow.
These are headings, paragraphs, tables, and more.

``` 
[ Paragraph ...    ]
- - - - - - - - - -
[ Aside Note ...   ]
- - - - - - - - - -
[ Code Listing ... ]
- - - - - - - - - - 
[ Paragraph ...    ]
```

`RenderBlockContent` contains traditional elements like `paragraph(inlineContent:)` and
`heading(level:text:anchor:)` but also other documentation-specific elements like
`step(content:caption:media:code:runtimePreview:)` and `endpointExample(summary:request:response:)`.

Block elements can be nested, for example, an aside note contains one or more paragraphs of text.

## Inheritance

`Codable`, `Equatable`, [`TextIndexing`](/TextIndexing)

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `paragraph`

A paragraph of content.

``` swift
case paragraph(inlineContent: [RenderInlineContent])
```

### `aside`

An aside block.

``` swift
case aside(style: AsideStyle, content: [RenderBlockContent])
```

### `codeListing`

A block of sample code.

``` swift
case codeListing(syntax: String?, code: [String], metadata: RenderContentMetadata?)
```

### `heading`

A heading with the given level.

``` swift
case heading(level: Int, text: String, anchor: String?)
```

### `orderedList`

A list that contains ordered items.

``` swift
case orderedList(items: [ListItem])
```

### `unorderedList`

A list that contains unordered items.

``` swift
case unorderedList(items: [ListItem])
```

### `step`

A step in a multi-step tutorial.

``` swift
case step(content: [RenderBlockContent], caption: [RenderBlockContent], media: RenderReferenceIdentifier?, code: RenderReferenceIdentifier?, runtimePreview: RenderReferenceIdentifier?)
```

### `endpointExample`

A REST endpoint example that includes a request and the expected response.

``` swift
case endpointExample(summary: [RenderBlockContent]?, request: CodeExample, response: CodeExample)
```

### `dictionaryExample`

An example that contains a sample code block.

``` swift
case dictionaryExample(summary: [RenderBlockContent]?, example: CodeExample)
```

### `termList`

A list of terms.

``` swift
case termList(items: [TermListItem])
```

### `table`

A table that contains a list of row data.

``` swift
case table(header: HeaderType, rows: [TableRow], metadata: RenderContentMetadata?)
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
