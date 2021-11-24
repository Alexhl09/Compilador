# NavigatorTree.Node

A representation of a node in the tree wrapping a `NavigatorItem`.
The node holds the reference to children and parent for fast navigation.

``` swift
public class Node: Hashable, Equatable 
```

## Inheritance

`Equatable`, `Hashable`

## Initializers

### `init(item:bundleIdentifier:)`

Initialize a node with the given `NavigatorItem`.

``` swift
public init(item: NavigatorItem, bundleIdentifier: String) 
```

#### Parameters

  - item: The item to wrap inside the `Node` object.
  - bundleIdentifier: The bundle identifier of the item.

## Properties

### `id`

An id assigned by a process, for example to dump data into disk.

``` swift
public var id: UInt32?
```

### `bundleIdentifier`

Bundle identifier.

``` swift
public var bundleIdentifier: String
```

### `item`

The wrapped `NavigatorItem`.

``` swift
public var item: NavigatorItem
```

### `children`

The children of the node.

``` swift
public var children: [Node] = []
```

### `parent`

A weak link to the parent. Useful to fast navigate back up to the root.

``` swift
public weak var parent: Node? 
```

### `presentationIdentifier`

A value that can be used for identification purposes in presentation contexts.

``` swift
public var presentationIdentifier: String?
```

### `presentationDisambiguator`

A value that can be used for disambiguation purposes in presentation contexts.

``` swift
@available(*, deprecated, message: "Use presentationIdentifier instead.")
        public var presentationDisambiguator: String? 
```

## Methods

### `add(child:)`

Add a child to the current node.

``` swift
public func add(child: Node) 
```

> 

#### Parameters

  - child: The child to add to the current node.

### `countItems()`

Counts the number of all the items from a given node, including the current node plus all the descendants.

``` swift
public func countItems() -> Int 
```

#### Returns

The counted items.

### `filter(_:)`

Returns a node containing, in order, the elements of the tree that satisfy the given predicate.

``` swift
public func filter(_ isIncluded: (NavigatorItem) -> Bool) -> Node? 
```

> 

#### Parameters

  - isIncluded: A closure that takes an element of the node as its argument and returns a Boolean value indicating whether the element should be included in the returned tree.

#### Returns

A node of the elements that isIncluded allowed.

### `copy()`

Copy the current node and children to new instances preserving the node item.

``` swift
public func copy() -> NavigatorTree.Node 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

### `treeLines(_:_:)`

Creates an array with the tree data formatted in a readable way.

``` swift
public func treeLines(_ nodeIndent: String = "", _ childIndent: String = "") -> [String]
```

### `dumpTree()`

Dumps the tree data into a `String` in a human readable way.

``` swift
public func dumpTree() -> String 
```

## Operators

### `==`

``` swift
public static func == (lhs: NavigatorTree.Node, rhs: NavigatorTree.Node) -> Bool 
```
