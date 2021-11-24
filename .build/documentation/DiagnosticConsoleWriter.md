# DiagnosticConsoleWriter

Writes diagnostic messages to a text output stream.

``` swift
public final class DiagnosticConsoleWriter: DiagnosticFormattingConsumer 
```

By default, this type writes to `stderr`.

## Inheritance

[`DiagnosticFormattingConsumer`](/DiagnosticFormattingConsumer)

## Initializers

### `init(_:filterLevel:)`

Creates a new instance of this class with the provided output stream and filter level.

``` swift
@available(*, deprecated, message: "Use init(_:formattingOptions:) instead")
    public init(_ stream: TextOutputStream = LogHandle.standardError, filterLevel: DiagnosticSeverity = .warning) 
```

#### Parameters

  - stream: The output stream to which this instance will write.
  - filterLevel: Determines what diagnostics should be printed. This filter level is inclusive, i.e. if a level of `DiagnosticSeverity/information` is specified, diagnostics with a severity up to and including `.information` will be printed.

### `init(_:formattingOptions:)`

Creates a new instance of this class with the provided output stream.

``` swift
public init(_ stream: TextOutputStream = LogHandle.standardError, formattingOptions options: DiagnosticFormattingOptions = []) 
```

#### Parameters

  - stream: The output stream to which this instance will write.

## Properties

### `formattingOptions`

``` swift
public var formattingOptions: DiagnosticFormattingOptions
```

## Methods

### `receive(_:)`

``` swift
public func receive(_ problems: [Problem]) 
```
