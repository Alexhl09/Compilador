# IndexAction

An action that creates an index of a documentation bundle.

``` swift
public struct IndexAction: Action 
```

## Inheritance

[`Action`](/Action), [`Action`](/Action)

## Initializers

### `init(documentationBundleURL:outputURL:bundleIdentifier:diagnosticEngine:)`

Initializes the action with the given validated options, creates or uses the given action workspace & context.

``` swift
public init(documentationBundleURL: URL, outputURL:URL, bundleIdentifier: String, diagnosticEngine: DiagnosticEngine = .init()) throws
```

## Methods

### `perform(logHandle:)`

Converts each eligable file from the source documentation bundle,
saves the results in the given output alongside the template files.

``` swift
mutating public func perform(logHandle: LogHandle) throws -> ActionResult 
```
