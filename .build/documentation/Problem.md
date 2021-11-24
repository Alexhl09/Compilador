# Problem

A problem with a document along with possible solutions to the problem.

``` swift
public struct Problem 
```

## Initializers

### `init(diagnostic:possibleSolutions:)`

``` swift
public init<Solutions: Sequence>(diagnostic: Diagnostic, possibleSolutions: Solutions) where Solutions.Element == Solution 
```

### `init(diagnostic:)`

``` swift
public init(diagnostic: Diagnostic) 
```

### `init(description:source:file:)`

Creates a new problem with the given description and documentation source location.

``` swift
public init(description: String, source: URL?, file: String = #file) 
```

Use this to provide a user-friendly description of an error,
along with a direct reference to the source file and line number where you call this initializer.

#### Parameters

  - description: A brief description of the problem.
  - source: The URL for the documentation file that caused this problem, if any.
  - file: The source file where you call this initializer.

## Properties

### `diagnostic`

A diagnostic describing the problem.

``` swift
public var diagnostic: Diagnostic
```

### `possibleSolutions`

The possible solutions to the problem if there are any.

``` swift
public var possibleSolutions: [Solution]
```
