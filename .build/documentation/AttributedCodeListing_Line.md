# AttributedCodeListing.Line

A single line of tokenized code in an attributed code listing.

``` swift
public struct Line: Hashable 
```

## Inheritance

`Hashable`

## Initializers

### `init()`

Creates a new empty line.

``` swift
public init() 
```

Empty lines have no tokens.

### `init(_:)`

Creates a line consisting of the given tokens.

``` swift
public init(_ tokens: [Token]) 
```

## Properties

### `tokens`

The code elements in this line.

``` swift
public var tokens: [Token]
```

Tokens form a line's contents. A code line can be empty, to allow for line breaks between blocks of code.
An empty code line is indicated by a `AttributedCodeListing/Line` with an empty `tokens` array.

### `isEmpty`

Indicates whether the code line is empty, which means it contains no code elements.

``` swift
public var isEmpty: Bool 
```
