# Extensions on Sequence

## Properties

### `containsErrors`

Returns `true` if there are problems with diagnostics with `error` severity.

``` swift
public var containsErrors: Bool 
```

### `localizedDescription`

The human readable summary description for the problems.

``` swift
public var localizedDescription: String 
```

## Methods

### `formattedLocalizedDescription(withOptions:)`

``` swift
public func formattedLocalizedDescription(withOptions options: DiagnosticFormattingOptions) -> String 
```
