# DiagnosticFormattingOptions

A type that encapsulate the possible formatting options for diagnostics.

``` swift
public struct DiagnosticFormattingOptions: OptionSet 
```

## Inheritance

`OptionSet`

## Initializers

### `init(rawValue:)`

``` swift
public init(rawValue: UInt) 
```

## Properties

### `rawValue`

``` swift
public let rawValue: UInt
```

### `showFixits`

Problem fix-its should be included when printing diagnostics to a file or output stream.

``` swift
public static let showFixits 
```

### `all`

All of the available formatting options.

``` swift
public static let all: DiagnosticFormattingOptions = [.showFixits]
```
