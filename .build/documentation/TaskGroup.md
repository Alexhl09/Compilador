# TaskGroup

A collection of curated child topics.

``` swift
public struct TaskGroup 
```

## Initializers

### `init(heading:content:)`

Creates a new task group with a given heading and content.

``` swift
public init(heading: Heading?, content: [Markup]) 
```

#### Parameters

  - heading: The heading for this task group.
  - content: The content, excluding the title, for this task group.

## Properties

### `heading`

The title heading of the group.

``` swift
public var heading: Heading?
```

### `originalContent`

The group's original contents, excluding its delimiting heading.

``` swift
public var originalContent: [Markup]
```

### `content`

The group's remaining content after stripping topic links.

``` swift
public var content: [Markup] 
```

### `links`

The curated child topic links in this group.

``` swift
public var links: [AnyLink] 
```

> 

### `abstract`

An optional abstract for the task group.

``` swift
public var abstract: AbstractSection? 
```

### `discussion`

An optional discussion section for the task group.

``` swift
public var discussion: DiscussionSection? 
```
