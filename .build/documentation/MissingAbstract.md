# MissingAbstract

A document should have an abstract.

``` swift
public struct MissingAbstract: Checker 
```

If the first element after the title (if there is one) is not a paragraph, a warning is produced.

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(sourceFile:)`

Creates a new checker that detects documents without abstracts.

``` swift
public init(sourceFile: URL?) 
```

#### Parameters

  - document: The documentation node that the checker checks.
  - sourceFile: The URL to the documentation file that the checker checks.

## Properties

### `problems`

``` swift
public var problems 
```

## Methods

### `visitDocument(_:)`

``` swift
public mutating func visitDocument(_ document: Document) 
```
