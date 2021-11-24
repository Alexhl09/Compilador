# DocumentationNode.Name

The annotated name of a node.

``` swift
public enum Name: Hashable, CustomStringConvertible 
```

Extend this type to transform the name of a node into various forms,
such as for display as a title or in a task group, or normalized for
search indexing.

## Inheritance

`CustomStringConvertible`, `Hashable`

## Enumeration Cases

### `conceptual`

The name of a conceptual document is its title.

``` swift
case conceptual(title: String)
```

### `symbol`

The name of the symbol is derived from its declaration.

``` swift
case symbol(declaration: AttributedCodeListing.Line)
```

## Properties

### `description`

``` swift
public var description: String 
```

## Methods

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```
