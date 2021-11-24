# MarkupContainer

A general purpose `Markup` semantic container.

``` swift
public final class MarkupContainer: Semantic 
```

## Inheritance

[`Semantic`](/Semantic), `RandomAccessCollection`

## Initializers

### `init()`

Create an empty `Markup` semantic container.

``` swift
public convenience override init() 
```

### `init(_:)`

Creates a new general-purpose markup container with the given elements.

``` swift
public init(_ elements: Markup...) 
```

#### Parameters

  - elements: Zero or more markup elements.

### `init(_:)`

Creates a new general-purpose markup container with the elements of a sequence.

``` swift
public init<S: Sequence>(_ elements: S) where S.Element: Markup 
```

#### Parameters

  - elements: A sequence of markup elements.

### `init(_:)`

Creates a new general-purpose markup container with the elements of a sequence.

``` swift
public init<S: Sequence>(_ elements: S) where S.Element == Markup 
```

#### Parameters

  - elements: A sequence of markup elements.

## Properties

### `elements`

The `Markup` elements in the container.

``` swift
public let elements: [Markup]
```

### `startIndex`

``` swift
public var startIndex: Array<Markup>.Index 
```

### `endIndex`

``` swift
public var endIndex: Array<Markup>.Index 
```

## Methods

### `accept(_:)`

``` swift
public override func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```
