# RelationshipsGroup

A group of symbol relationships.

``` swift
public struct RelationshipsGroup 
```

Group together references to multiple symbols having
the same `Kind` of relationship to the current symbol.
One `RelationshipsGroup` lists all parent symbols
of the current symbol and provides its sorting index and
a presentation-friendly title for the group to a renderer.

For example the `Collection` protocol from the Swift Standard Library
is inherited by the following group of protocols:

### Conforming Types

  - `BidirectionalCollection`

  - `LazyCollectionProtocol`

  - `MutableCollection`

  - `RangeReplaceableCollection`

## Initializers

### `init(kind:destinations:)`

Creates a new relationship group of the given kind, and with the given symbols.

``` swift
public init(kind: Kind, destinations: [TopicReference]) 
```
