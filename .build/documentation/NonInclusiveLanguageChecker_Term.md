# NonInclusiveLanguageChecker.Term

A structure that represents a term to match in content.

``` swift
public struct Term: Codable 
```

## Inheritance

`Codable`

## Properties

### `expression`

The term to search for in the content.

``` swift
public let expression: String
```

> 

### `message`

A user-facing message explaining why the term is problematic.

``` swift
public let message: String
```

### `replacement`

The suggested replacement for the word.

``` swift
public let replacement: String
```
