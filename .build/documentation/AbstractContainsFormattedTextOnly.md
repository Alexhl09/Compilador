# AbstractContainsFormattedTextOnly

A document's abstract may only contain formatted text. Images and links are not allowed.

``` swift
public struct AbstractContainsFormattedTextOnly: Checker 
```

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(sourceFile:)`

Creates a new checker that detects non-text elements in abstracts.

``` swift
public init(sourceFile: URL?) 
```

#### Parameters

  - sourceFile: The URL to the documentation file that the checker checks.

## Properties

### `problems`

``` swift
public var problems: [Problem] 
```

## Methods

### `visitDocument(_:)`

``` swift
public mutating func visitDocument(_ document: Document) -> () 
```

### `visitImage(_:)`

``` swift
public mutating func visitImage(_ image: Image) 
```

### `visitLink(_:)`

``` swift
public mutating func visitLink(_ link: Link) 
```
