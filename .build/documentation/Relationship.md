# Relationship

A relationship to a node in the topic graph.

``` swift
public enum Relationship 
```

## Enumeration Cases

### `conformsTo`

A conformance to a protocol, under optional constraints.

``` swift
case conformsTo(TopicReference, [SymbolGraph.Symbol.Swift.GenericConstraint]?)
```

### `conformingType`

A type that conforms to the current node, under optional constraints.

``` swift
case conformingType(TopicReference, [SymbolGraph.Symbol.Swift.GenericConstraint]?)
```

### `inheritsFrom`

A parent node for the current node.

``` swift
case inheritsFrom(TopicReference)
```

### `inheritedBy`

A child node for the current node.

``` swift
case inheritedBy(TopicReference)
```

### `defaultImplementationOf`

A protocol requirement of which that the current node is a default implementation.

``` swift
case defaultImplementationOf(TopicReference)
```

### `defaultImplementation`

A default implementation if the current node is a protocol requirement.

``` swift
case defaultImplementation(TopicReference)
```

### `requirementOf`

A protocol of which the current node is a requirement.

``` swift
case requirementOf(TopicReference)
```
