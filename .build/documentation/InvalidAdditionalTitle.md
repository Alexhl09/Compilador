# InvalidAdditionalTitle

A document should have a single title, i.e. a single first-level heading.

``` swift
public struct InvalidAdditionalTitle: Checker 
```

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(sourceFile:)`

Creates a new checker that detects documents with multiple titles.

``` swift
public init(sourceFile: URL?) 
```

#### Parameters

  - sourceFile: The URL to the documentation file that the checker checks.

## Properties

### `problems`

``` swift
public var problems 
```

## Methods

### `visitHeading(_:)`

``` swift
public mutating func visitHeading(_ heading: Heading) 
```
