# SemanticWalker

An interface for walking a `Semantic` tree without altering it.

``` swift
public protocol SemanticWalker: SemanticVisitor where Result == Void 
```

## Inheritance

[`SemanticVisitor`](/SemanticVisitor)

## Default Implementations

### `descendIntoChildren(of:)`

Walks the children of the given semantic node.

``` swift
public mutating func descendIntoChildren(of semantic: Semantic) 
```

## Requirements

### descendIntoChildren(of:​)

``` swift
mutating func descendIntoChildren(of semantic: Semantic)
```
