# RenderHierarchy

Hierarchical information for a render node.

``` swift
public enum RenderHierarchy: Codable 
```

A render node's hierarchy information, such as its parent topics,
describes an API reference hierarchy that starts with a framework
landing page, or a Tutorials hierarchy that starts with a Tutorials landing page.

## Topics

### Hierarchy Types

  - `RenderReferenceHierarchy`

  - `RenderTutorialsHierarchy`

## Inheritance

`Codable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `reference`

The hierarchy for an API reference render node.

``` swift
case reference(RenderReferenceHierarchy)
```

### `tutorials`

The hierarchy for tutorials-related render node.

``` swift
case tutorials(RenderTutorialsHierarchy)
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
