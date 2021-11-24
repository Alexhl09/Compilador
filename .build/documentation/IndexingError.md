# IndexingError

``` swift
public enum IndexingError: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Enumeration Cases

### `missingTitle`

A page or other piece of documentation doesn't have a title, so it can't
have a useful search record.

``` swift
case missingTitle(ResolvedTopicReference)
```

## Properties

### `errorDescription`

``` swift
public var errorDescription: String 
```
