# AnyChecker

A type-erased container for any `Checker`.

``` swift
public struct AnyChecker: Checker 
```

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(_:)`

Creates an instance that type erases the given checker.

``` swift
public init<C: Checker>(_ checker: C) 
```

## Properties

### `problems`

``` swift
public var problems: [Problem] 
```

## Methods

### `visitBlockQuote(_:)`

``` swift
public mutating func visitBlockQuote(_ blockQuote: BlockQuote) 
```

### `visitCodeBlock(_:)`

``` swift
public mutating func visitCodeBlock(_ codeBlock: CodeBlock) 
```

### `visitCustomBlock(_:)`

``` swift
public mutating func visitCustomBlock(_ customBlock: CustomBlock) 
```

### `visitDocument(_:)`

``` swift
public mutating func visitDocument(_ document: Document) 
```

### `visitHeading(_:)`

``` swift
public mutating func visitHeading(_ heading: Heading) 
```

### `visitThematicBreak(_:)`

``` swift
public mutating func visitThematicBreak(_ thematicBreak: ThematicBreak) 
```

### `visitHTMLBlock(_:)`

``` swift
public mutating func visitHTMLBlock(_ html: HTMLBlock) 
```

### `visitListItem(_:)`

``` swift
public mutating func visitListItem(_ listItem: ListItem) 
```

### `visitOrderedList(_:)`

``` swift
public mutating func visitOrderedList(_ orderedList: OrderedList) 
```

### `visitUnorderedList(_:)`

``` swift
public mutating func visitUnorderedList(_ unorderedList: UnorderedList) 
```

### `visitParagraph(_:)`

``` swift
public mutating func visitParagraph(_ paragraph: Paragraph) 
```

### `visitInlineCode(_:)`

``` swift
public mutating func visitInlineCode(_ inlineCode: InlineCode) 
```

### `visitCustomInline(_:)`

``` swift
public mutating func visitCustomInline(_ customInline: CustomInline) 
```

### `visitEmphasis(_:)`

``` swift
public mutating func visitEmphasis(_ emphasis: Emphasis) 
```

### `visitImage(_:)`

``` swift
public mutating func visitImage(_ image: Image) 
```

### `visitInlineHTML(_:)`

``` swift
public mutating func visitInlineHTML(_ inlineHTML: InlineHTML) 
```

### `visitLineBreak(_:)`

``` swift
public mutating func visitLineBreak(_ lineBreak: LineBreak) 
```

### `visitLink(_:)`

``` swift
public mutating func visitLink(_ link: Link) 
```

### `visitSoftBreak(_:)`

``` swift
public mutating func visitSoftBreak(_ softBreak: SoftBreak) 
```

### `visitStrong(_:)`

``` swift
public mutating func visitStrong(_ strong: Strong) 
```

### `visitText(_:)`

``` swift
public mutating func visitText(_ text: Text) 
```
