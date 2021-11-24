# Extensions on SymbolGraph.Relationship

## Methods

### `hash(into:)`

A custom hashing for the relationship.

``` swift
public func hash(into hasher: inout Hasher) 
```

> Important: If there are new relationship mixins they need to be added to the hasher in this function.

### `==`

A custom equality implmentation for a relationship.

``` swift
public static func == (lhs: SymbolGraph.Relationship, rhs: SymbolGraph.Relationship) -> Bool 
```

> Important: If there are new relationship mixins they need to be added to the equality function.
