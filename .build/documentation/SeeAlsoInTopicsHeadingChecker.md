# SeeAlsoInTopicsHeadingChecker

``` swift
public struct SeeAlsoInTopicsHeadingChecker: Checker 
```

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(sourceFile:)`

``` swift
public init(sourceFile: URL?) 
```

## Properties

### `seeAlsoInTopicsHeadings`

``` swift
public var seeAlsoInTopicsHeadings: [Heading] = []
```

### `problems`

``` swift
public var problems: [Problem] 
```

## Methods

### `visitHeading(_:)`

``` swift
public mutating func visitHeading(_ heading: Heading) 
```
