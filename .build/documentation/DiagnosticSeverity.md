# DiagnosticSeverity

The severity of a diagnostic.

``` swift
public enum DiagnosticSeverity: Int, Codable, CustomStringConvertible 
```

Diagnostics have a severity in order to give the user an indication of what a message means to them and whether it's immediately actionable or blocking.

## Inheritance

`Codable`, `Comparable`, `CustomStringConvertible`, `Int`

## Initializers

### `init?(_:)`

``` swift
public init?(_ string: String?) 
```

## Enumeration Cases

### `error`

An error.

``` swift
case error = 1
```

Errors should ideally be actionable and give the user a clear indication of what must be done to fix the error. An error severity should be used if further progress can't be made in some process or workflow.

### `warning`

A warning.

``` swift
case warning = 2
```

Warnings should ideally be actionable and give the user a clear indication of what must be done to fix the error. A warning severity should be used for issues that don't block progress but the user ought to address as soon as possible.

### `information`

Information.

``` swift
case information = 3
```

Information needn't be immediately actionable but should be useful to the user. Recommendations should be saved for the `hint` diagnostic severity.

> Note: this maps to `analyzer` style information.

### `hint`

A hint.

``` swift
case hint = 4
```

A hint may be used to provide recommendations to resolve errors or warnings or may provide recommendations to the user proactively.

## Properties

### `description`

``` swift
public var description: String 
```

## Operators

### `<`

``` swift
public static func < (lhs: DiagnosticSeverity, rhs: DiagnosticSeverity) -> Bool 
```
