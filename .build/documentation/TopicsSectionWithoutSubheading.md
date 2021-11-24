# TopicsSectionWithoutSubheading

A Topics section  should have at least one subheading.

``` swift
public struct TopicsSectionWithoutSubheading: Checker 
```

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(sourceFile:)`

Creates a new checker that detects Topics sections without subheadings.

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

### `visitDocument(_:)`

``` swift
public mutating func visitDocument(_ document: Document) -> () 
```
