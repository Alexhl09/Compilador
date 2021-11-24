# Solution

A solution to a `Problem`.

``` swift
public struct Solution 
```

## Initializers

### `init(summary:replacements:)`

Creates a new `Solution` with the provided summary and replacements

``` swift
public init(summary: String, replacements: [Replacement]) 
```

#### Parameters

  - summary: A brief description of the solution to a problem
  - replacements: The replacements necessary to fix a problem. This array may be empty.

## Properties

### `summary`

A *brief* description of what the solution is.

``` swift
public var summary: String
```

### `replacements`

The replacements necessary to fix a problem.

``` swift
public var replacements: [Replacement]
```
