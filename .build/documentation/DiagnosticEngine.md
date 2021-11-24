# DiagnosticEngine

A type that collects and dispatches diagnostics during compilation.

``` swift
public final class DiagnosticEngine 
```

## Initializers

### `init(filterLevel:)`

Creates a new diagnostic engine instance with no consumers.

``` swift
public init(filterLevel: DiagnosticSeverity = .warning) 
```

## Properties

### `filterLevel`

Determines which problems will be emitted to consumers.

``` swift
public var filterLevel: DiagnosticSeverity 
```

This filter level is inclusive, i.e. if a level of `DiagnosticSeverity/information` is specified,
diagnostics with a severity up to and including `.information` will be printed.

### `problems`

A convenience accessor for retrieving all of the diagnostics this engine currently holds.

``` swift
public var problems: [Problem] 
```

## Methods

### `clearDiagnostics()`

Removes all of the encountered diagnostics from this engine.

``` swift
public func clearDiagnostics() 
```

### `emit(_:)`

Dispatches a diagnostic to all subscribed consumers.

``` swift
public func emit(_ problem: Problem) 
```

#### Parameters

  - problem: The diagnostic to dispatch to this engine's currently subscribed consumers.

### `emit(_:)`

Dispatches multiple diagnostics to consumers.

``` swift
public func emit(_ problems: [Problem]) 
```

> Note: Diagnostics are dispatched asynchronously.

#### Parameters

  - problems: The array of diagnostics to dispatch to this engine's currently subscribed consumers.

### `add(_:)`

Subscribes a given consumer to the diagnostics emitted by this engine.

``` swift
public func add(_ consumer: DiagnosticConsumer) 
```

#### Parameters

  - consumer: The consumer to subscribe to this engine.

### `remove(_:)`

Unsubscribes a given consumer

``` swift
public func remove(_ consumer: DiagnosticConsumer) 
```

#### Parameters

  - consumer: The consumer to remove from this engine.
