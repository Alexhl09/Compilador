# UnresolvedTopicReference

An unresolved reference to a documentation node.

``` swift
public struct UnresolvedTopicReference: Hashable, CustomStringConvertible 
```

You can create unresolved references from partial information if that information can be derived from the enclosing context when the
reference is resolved. For example:

  - The bundle identifier can be inferred from the documentation bundle that owns the document from which the unresolved reference came.

  - The URL scheme of topic references is always "doc".

  - The symbol precise identifier suffix can be left out when there are no known overloads or name collisions for the symbol.

## Inheritance

`CustomStringConvertible`, `Hashable`

## Initializers

### `init(parent:unresolvedChild:)`

Creates a new unresolved reference from another unresolved reference with a resolved parent reference.

``` swift
public init(parent: ResolvedTopicReference, unresolvedChild: UnresolvedTopicReference) 
```

#### Parameters

  - parent: The resolved parent reference of the unresolved reference.
  - unresolvedChild: The other unresolved reference.

### `init(topicURL:)`

Creates a new untitled, unresolved reference with the given validated URL.

``` swift
public init(topicURL: ValidatedURL) 
```

#### Parameters

  - topicURL: The URL of this unresolved reference.

### `init(topicURL:title:)`

Creates a new unresolved reference with the given validated URL and title.

``` swift
public init(topicURL: ValidatedURL, title: String) 
```

#### Parameters

  - topicURL: The URL of this unresolved reference.
  - title: The title of this unresolved reference.

## Properties

### `topicURL`

The URL as originally spelled.

``` swift
public let topicURL: ValidatedURL
```

### `bundleIdentifier`

The bundle identifier, if one was provided in the host name component of the original URL.

``` swift
public var bundleIdentifier: String? 
```

### `path`

The path of the unresolved reference.

``` swift
public var path: String 
```

### `fragment`

The fragment of the unresolved reference, if the original URL contained a fragment component.

``` swift
public var fragment: String? 
```

### `title`

An optional title.

``` swift
public var title: String? = nil
```

### `description`

``` swift
public var description: String 
```
