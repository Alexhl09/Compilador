# DiagnosticConsumer

A type that can receive diagnostics.

``` swift
public protocol DiagnosticConsumer: AnyObject 
```

## Inheritance

`AnyObject`

## Requirements

### receive(\_:​)

Receive diagnostics encountered by a `DiagnosticEngine`.

``` swift
func receive(_ problems: [Problem])
```

#### Parameters

  - problems: The encountered diagnostics.
