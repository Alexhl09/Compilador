# RenderReferenceStore.TopicContent

Pre-rendered pieces of content for a given node.

``` swift
struct TopicContent: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(renderReference:canonicalPath:taskGroups:source:isDocumentationExtensionContent:renderReferenceDependencies:)`

Creates a new content value given a render reference, canonical path, and task group information.

``` swift
public init(
            renderReference: RenderReference,
            canonicalPath: [ResolvedTopicReference]?,
            taskGroups: [DocumentationContentRenderer.ReferenceGroup]?,
            source: URL?,
            isDocumentationExtensionContent: Bool,
            renderReferenceDependencies: RenderReferenceDependencies = RenderReferenceDependencies()
        ) 
```

#### Parameters

  - renderReference: The topic render reference.
  - canonicalPath: The canonical path to a node.
  - taskGroups: A lookup of a topic's task groups.
  - source: The original source file location of the topic.
  - isDocumentationExtensionContent: Whether the topic is a documentation extension.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `renderReference`

The topic render reference.

``` swift
public let renderReference: RenderReference
```

### `renderReferenceDependencies`

Render reference dependencies.

``` swift
public let renderReferenceDependencies: RenderReferenceDependencies
```

### `canonicalPath`

The canonical path to a node.

``` swift
public let canonicalPath: [ResolvedTopicReference]?
```

### `taskGroups`

A lookup of a topic's task groups.

``` swift
public let taskGroups: [DocumentationContentRenderer.ReferenceGroup]?
```

### `source`

The original source file of the topic.

``` swift
public let source: URL?
```

### `isDocumentationExtensionContent`

Whether the topic is a documentation extension.

``` swift
public let isDocumentationExtensionContent: Bool
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
