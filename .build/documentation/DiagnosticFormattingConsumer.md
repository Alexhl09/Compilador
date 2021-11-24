# DiagnosticFormattingConsumer

A type that can format received diagnostics in way that's suitable for writing to a destination such as a file or `TextOutputStream`.

``` swift
public protocol DiagnosticFormattingConsumer: DiagnosticConsumer 
```

## Inheritance

[`DiagnosticConsumer`](/DiagnosticConsumer)

## Requirements

### formattingOptions

Options for how problems should be formatted if written to output.

``` swift
var formattingOptions: DiagnosticFormattingOptions 
```
