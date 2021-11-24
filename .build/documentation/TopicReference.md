# TopicReference

A resolved or unresolved reference to a piece of documentation.

``` swift
public enum TopicReference: Hashable, CustomStringConvertible 
```

A reference can exist in one of three states:

  - It has not yet been resolved.

  - It has successfully resolved.

  - It has failed to resolve.

References that have resolved, either successfully or not, are represented by `TopicReferenceResolutionResult`.

## Topics

### Topic References

  - `UnresolvedTopicReference`

  - `ResolvedTopicReference`

  - `TopicReferenceResolutionResult`

  - `SourceLanguage`

## Inheritance

`CustomStringConvertible`, `Hashable`

## Enumeration Cases

### `unresolved`

A topic reference that hasn't been resolved to known documentation.

``` swift
case unresolved(UnresolvedTopicReference)
```

### `resolved`

A topic reference that has either been resolved to known documentation or failed to resolve to known documentation.

``` swift
case resolved(TopicReferenceResolutionResult)
```

## Properties

### `description`

``` swift
public var description: String 
```
