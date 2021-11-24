# NonInclusiveLanguageChecker

Checks for non-inclusive language in documentation.

``` swift
public struct NonInclusiveLanguageChecker: Checker 
```

Unlike the other checkers, this type performs global analysis on all types of documentation.

## Inheritance

[`Checker`](/Checker)

## Initializers

### `init(sourceFile:terms:)`

``` swift
public init(sourceFile: URL?, terms: [Term]? = nil) 
```

## Properties

### `severity`

The severity for this checker's diagnostics.

``` swift
public static let severity: DiagnosticSeverity = .information
```

### `problems`

``` swift
public var problems: [Problem] = []
```

## Methods

### `visitCodeBlock(_:)`

``` swift
public mutating func visitCodeBlock(_ codeBlock: CodeBlock) -> () 
```

### `visitInlineCode(_:)`

``` swift
public mutating func visitInlineCode(_ inlineCode: InlineCode) -> () 
```

### `visitText(_:)`

``` swift
public mutating func visitText(_ text: Text) 
```
