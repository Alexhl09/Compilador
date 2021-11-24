# DiagnosticNote

A diagnostic note is a simple string message that should appear somewhere in a document.

``` swift
public struct DiagnosticNote: CustomStringConvertible 
```

## Inheritance

`CustomStringConvertible`

## Properties

### `source`

The source file to which to attach the `message`.

``` swift
public var source: URL
```

### `range`

The range to which to attach the `message`.

``` swift
public var range: SourceRange
```

### `message`

The message to attach to the document.

``` swift
public var message: String
```

### `description`

``` swift
public var description: String 
```
