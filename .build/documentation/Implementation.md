# Implementation

An intermediate model to group together an implementation reference, its parent, and a fallback name.

``` swift
public struct Implementation: Hashable 
```

## Inheritance

`Hashable`

## Properties

### `reference`

The reference to the default implementation.

``` swift
public let reference: TopicReference
```

### `parent`

The name of the parent type of the referenced symbol, if available.

``` swift
public let parent: String?
```

### `fallbackName`

The fallback name of the parent type of the referenced symbol, if available.

``` swift
public let fallbackName: String?
```
