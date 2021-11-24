# Semantic

A semantic object is an abstract element with children which also are semantic objects.

``` swift
open class Semantic: Equatable 
```

The children of one semantic object doesn't need to be the same type as their parent or even the same as each other.
This allows semantic objects to describe a hierarchy of information that can be visited and altered in a structured manner using a `SemanticVisitor`.

Semantic objects are used to model the in-memory representation of documentation. Some key examples are `Article`, `Symbol`,
and directives such as `Tutorial`, `Chapter` and `Volume`.

## Inheritance

`Equatable`

## Initializers

### `init()`

Creates a new semantic object.

``` swift
public init() 
```

## Methods

### `accept(_:)`

Inform the `SemanticVisitor` to visit this node.

``` swift
public func accept<V: SemanticVisitor>(_ visitor: inout V) -> V.Result 
```

> 

### `dump()`

Visit the semantic object and all its children—and their children—to construct a string representation of the semantic hierarchy.

``` swift
public func dump() -> String 
```

#### Returns

A string representation of the semantic hierarchy.

## Operators

### `==`

Returns whether or not two semantics values are equal.

``` swift
public static func ==(lhs: Semantic, rhs: Semantic) -> Bool 
```

#### Parameters

  - lhs: A semantic to compare.
  - rhs: Another semantic to compare.

#### Returns

Whether or not the two semantics values are equal.
