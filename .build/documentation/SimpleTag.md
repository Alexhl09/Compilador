# SimpleTag

A generic documentation tag.

``` swift
public struct SimpleTag 
```

Write a documentation tag by prepending a line of prose with something like a "- seeAlso:" or "- todo:".

## Initializers

### `init(tag:contents:)`

Creates a new tagged piece of documentation from the given name and content.

``` swift
public init(tag: String, contents: [Markup]) 
```

#### Parameters

  - tag: The name of the tag.
  - contents: The tagged content.

## Properties

### `tag`

The name of the tag.

``` swift
public var tag: String
```

### `contents`

The tagged content.

``` swift
public var contents: [Markup]
```
