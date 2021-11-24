# TextIndexing

A value that can collect plain text content for use in search indexing.

``` swift
public protocol TextIndexing 
```

## Requirements

### headings

Headings and sub-headings to drive search results.

``` swift
var headings: [String] 
```

### rawIndexableTextContent(references:​)

A concatenation of all raw text content under this value except for titles and headings.

``` swift
func rawIndexableTextContent(references: [String: RenderReference]) -> String
```

> Note: There are no formatting guarantees of this text except that some separation between words is maintained.

#### Parameters

  - references: A dictionary of references to resolve \`\`RenderInlineContent.reference\` elements' inlined titles.
