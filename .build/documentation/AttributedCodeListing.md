# AttributedCodeListing

A code block represented as lines of lexical tokens.

``` swift
public struct AttributedCodeListing: Hashable 
```

Use attributed code listings to represent code written in a specific programming language.

## Inheritance

`Hashable`

## Initializers

### `init(sourceLanguage:plainText:title:)`

Creates an attributed code listing from plain text.

``` swift
public init(sourceLanguage: SourceLanguage?, plainText: String, title: String?) 
```

This initializer splits the given plain text by newline characters and represents each line in a plain-text lexical token. Use this API
if you don't have a tokenized version of your code block.

#### Parameters

  - sourceLanguage: The source-code language in which the code is written in.
  - plainText: The code as plain text.
  - title: The title of the code listing.

## Properties

### `sourceLanguage`

The source-code language for this code listing.

``` swift
public let sourceLanguage: SourceLanguage?
```

### `codeLines`

The lines of code in the listing.

``` swift
public let codeLines: [Line]
```

### `title`

An identifiable title for this code listing.

``` swift
public let title: String?
```

### `isEmpty`

Indicates whether the code listing is empty or contains exclusively empty code.

``` swift
public var isEmpty: Bool 
```
