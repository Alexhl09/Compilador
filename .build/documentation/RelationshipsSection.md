# RelationshipsSection

A section that contains symbol-relationship groups.

``` swift
public struct RelationshipsSection 
```

This section contains all the different kinds of relationships a symbol might
have. For example a protocol might have an "Inherits From" section to link to
a parent protocol, and also a "Conforming Types" section to list all implementation
types for the this protocol.

## Properties

### `title`

``` swift
public static let title = "Relationships"
```

### `groups`

All relationship groups in the section.

``` swift
public var groups 
```
