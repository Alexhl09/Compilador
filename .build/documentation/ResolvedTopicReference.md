# ResolvedTopicReference

A reference to a piece of documentation which has been verified to exist.

``` swift
public struct ResolvedTopicReference: Hashable, Codable, Equatable, CustomStringConvertible 
```

A `ResolvedTopicReference` refers to some piece of documentation, such as an article or symbol. Once an `UnresolvedTopicReference` has been resolved to this type, it should be guaranteed that the content backing the documentation is available (i.e. there is a file on disk or data in memory ready to be recalled at any time).

## Inheritance

`Codable`, `Comparable`, `CustomStringConvertible`, `Equatable`, `Hashable`

## Initializers

### `init(bundleIdentifier:path:fragment:sourceLanguage:)`

``` swift
public init(bundleIdentifier: String, path: String, fragment: String? = nil, sourceLanguage: SourceLanguage) 
```

  - Note: The `path` parameter is escaped to a path readable string.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `urlScheme`

The URL scheme for `doc:​//` links.

``` swift
public static let urlScheme = "doc"
```

### `bundleIdentifier`

The identifier of the bundle that owns this documentation topic.

``` swift
public var bundleIdentifier: String 
```

### `path`

The absolute path from the bundle to this topic, delimited by `/`.

``` swift
public var path: String 
```

### `fragment`

A URL fragment referring to a resource in the topic.

``` swift
public var fragment: String? 
```

### `sourceLanguage`

The source language for which this topic is relevant.

``` swift
public var sourceLanguage: SourceLanguage 
```

### `sourceLanguages`

The source languages for which this topic is relevant.

``` swift
public var sourceLanguages: Set<SourceLanguage>
```

### `url`

The topic URL as you would write in a link.

``` swift
private (set) public var url: URL! = nil
```

### `lastPathComponent`

The last path component of this topic reference.

``` swift
public var lastPathComponent: String 
```

### `description`

``` swift
public var description: String 
```

## Methods

### `urlHasResolvedTopicScheme(_:)`

Returns `true` if the passed `URL` has a "doc" URL scheme.

``` swift
public static func urlHasResolvedTopicScheme(_ url: URL?) -> Bool 
```

### `withFragment(_:)`

Creates a new topic reference with the given fragment.

``` swift
public func withFragment(_ fragment: String?) -> ResolvedTopicReference 
```

Before adding the fragment to the reference, the fragment is encoded in a human readable format that avoids percent escape encoding in the URL.

You use a fragment to reference an element within a page:

``` 
doc://your.bundle.identifier/path/to/page#element-in-page
                                          ╰──────┬──────╯
                                              fragment
```

On-page elements can then be linked to using a fragment need to conform to the `Landmark` protocol.

#### Parameters

  - fragment: The new fragment.

#### Returns

The resulting topic reference.

### `appendingPath(_:)`

Creates a new topic reference by appending a path to this reference.

``` swift
public func appendingPath(_ path: String) -> ResolvedTopicReference 
```

Before appending the path, it is encoded in a human readable format that avoids percent escape encoding in the URL.

#### Parameters

  - path: The path to append.

#### Returns

The resulting topic reference.

### `appendingPathOfReference(_:)`

Creates a new topic reference by appending the path of another topic reference to this reference.

``` swift
public func appendingPathOfReference(_ reference: UnresolvedTopicReference) -> ResolvedTopicReference 
```

Before appending the path of the other reference, that path is encoded in a human readable format that avoids percent escape encoding in the URL.

#### Parameters

  - reference: The other reference from which the path is appended to this reference.

#### Returns

The resulting topic reference.

### `removingLastPathComponent()`

Creates a new topic reference by removing the last path component from this topic reference.

``` swift
public func removingLastPathComponent() -> ResolvedTopicReference 
```

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```

### `hash(into:)`

``` swift
public func hash(into hasher: inout Hasher) 
```

## Operators

### `<`

``` swift
public static func < (lhs: ResolvedTopicReference, rhs: ResolvedTopicReference) -> Bool 
```
