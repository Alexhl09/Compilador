# TopicReferenceResolutionResult

A topic reference that has been resolved, either successfully or not.

``` swift
public enum TopicReferenceResolutionResult: Hashable, CustomStringConvertible 
```

## Inheritance

`CustomStringConvertible`, `Hashable`

## Enumeration Cases

### `success`

A topic reference that has successfully been resolved to known documentation.

``` swift
case success(ResolvedTopicReference)
```

### `failure`

A topic reference that has failed to resolve to known documentation and an error message with information about why the reference failed to resolve.

``` swift
case failure(UnresolvedTopicReference, errorMessage: String)
```

## Properties

### `description`

``` swift
public var description: String 
```
