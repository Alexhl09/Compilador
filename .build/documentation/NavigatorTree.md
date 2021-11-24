# NavigatorTree

A `NavigatorTree` is a class holding information about a tree of data that can be navigated using a tree navigator.

``` swift
public class NavigatorTree 
```

A tree is a data structure containing a number of nodes equal or greater than 1. Each node can have multiple children, but only
one parent and assigning the same node as children of multiple nodes results in a broken data structure. There's no validation
when adding a node as children to another node.

A tree can get serialized to the disk using the following structure:

``` 
┌──────────────┬──────────────┬──────────────────────┐
│   parentID   │ objectLength │        object        │
│    UInt32    │    UInt32    │         Data         │
│  (4 bytes)   │  (4 bytes)   │   (variable size)    │
└──────────────┴──────────────┴──────────────────────┘
```

The object needs to be conforming to `Serializable` so it can be transformed to raw data and reconstructed back using the same one.

> 

## Nested Type Aliases

### `BroadcastCallback`

The broadcast callback notifies a listener about the latest items loaded from the disk.

``` swift
public typealias BroadcastCallback = (_ items: [NavigatorTree.Node], _ isCompleted: Bool, _ error: Error?) -> Void
```

## Initializers

### `init(root:numericIdentifierToNode:)`

Initialize a navigator tree with a given root node.

``` swift
public init(root: Node, numericIdentifierToNode: [UInt32: Node] = [:]) 
```

#### Parameters

  - root: The root node of the tree.
  - numericIdentifierToNode: A dictionary containing the mapping from the internal numeric identifier to a node.

### `init()`

Initialize an empty NavigatorTree with a placeholder root.

``` swift
public init() 
```

## Properties

### `root`

The root node of the tree.

``` swift
public private(set) var root: Node
```

### `identifierToNode`

A map holding the mapping from topicIdentifier to the node.

``` swift
@available(*, deprecated)
    public private(set) var identifierToNode: [ResolvedTopicReference: Node] = [:]
```

> 

### `nodeToIdentifier`

A map holding the mapping from node to the topicIdentifier.

``` swift
@available(*, deprecated)
    public private(set) var nodeToIdentifier: [Node: ResolvedTopicReference] = [:]
```

> 

### `numericIdentifierToNode`

A map holding the mapping from  the numeric identifier to the node.

``` swift
public private(set) var numericIdentifierToNode: [UInt32: Node] = [:]
```

## Methods

### `read(from:bundleIdentifier:interfaceLanguages:timeout:delay:queue:presentationIdentifier:broadcast:)`

Read a tree from disk from a given path.
The read is atomically performed, which means it reads all the content of the file from the disk and process the tree from loaded data.

``` swift
public func read(from url: URL, bundleIdentifier: String? = nil, interfaceLanguages: Set<InterfaceLanguage>, timeout: TimeInterval, delay: TimeInterval = 0.01, queue: DispatchQueue, presentationIdentifier: String? = nil, broadcast: BroadcastCallback?) throws 
```

#### Parameters

  - url: The file URL from which the tree should be read.
  - bundleIdentifier: The bundle identifier used to generate the mapping topicID to node on tree.
  - interfaceLanguages: A set containing the indication about the interface languages a tree contains.
  - timeout: The amount of time we can load a batch of items from data, once the timeout time pass, the reading process will reschedule asynchronously using the given queue.
  - delay: The delay to wait before schedule the next read. Default: 0.01 seconds.
  - queue: The queue to use.
  - presentationIdentifier: Defines if nodes should have a presentation identifier useful in presentation contexts.
  - broadcast: The callback to update get updates of the current process.

### `write(to:writePaths:callback:)`

Serialize the node and descendants to the disk.
Every node is written in order using a breath first approach, assigning to each node a virtual identifier in `UInt32` which is then used to identify the parent.
The initial index is 0 and the root gets id 0 and parent id 0, so it can be easily recognized inside the serialized data and it's expected to be the first element.

``` swift
public func write(to url: URL, writePaths: Bool = false, callback: ((Node) -> ())? = nil) throws 
```

#### Parameters

  - url: The URL to the file in which the tree gets serialized.
  - writePaths: If true, writes the path component to disk.
  - callback: A block called each time after a node is written to the disk. If the nodes are N, the block is called N times.

### `rootNode(bundleIdentifier:)`

Returns an instance of `NavigatorTree.Node` that can be used as root.

``` swift
public static func rootNode(bundleIdentifier: String) -> NavigatorTree.Node 
```

> 
