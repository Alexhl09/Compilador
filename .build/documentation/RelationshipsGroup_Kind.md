# RelationshipsGroup.Kind

Possible symbol relationships.

``` swift
public enum Kind: String 
```

## Inheritance

`String`

## Enumeration Cases

### `conformsTo`

One or more protocols to which a type conforms.

``` swift
case conformsTo
```

### `conformingTypes`

One or more types that conform to a protocol.

``` swift
case conformingTypes
```

### `inheritsFrom`

One or more types that are parents of the symbol.

``` swift
case inheritsFrom
```

### `inheritedBy`

One or more types that are children of the symbol.

``` swift
case inheritedBy
```
