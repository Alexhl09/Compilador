# NonOverviewHeadingChecker

``` swift
public struct NonOverviewHeadingChecker: Checker 
```

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(sourceFile:)`

``` swift
public init(sourceFile: URL?) 
```

## Properties

### `overviewHeading`

``` swift
public var overviewHeading: Heading?
```

### `nonOverviewHeadings`

``` swift
public var nonOverviewHeadings: [Heading] = []
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
