# IndexingRecord.Location

The location of the content for this record.

``` swift
public enum Location: Equatable 
```

Top-level pages are an obvious kind of search result in a list-like UI. However,
we may want to put subsections or other important items in the same list of search results.
This location may point to a top-level page or somewhere deeper in the page.

For example, a `Tutorial` may have its own search result and each of its `TutorialSection`s may be a search result as well.

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `topLevelPage`

A search result corresponds to a top-level page of documentation.

``` swift
case topLevelPage(ResolvedTopicReference)
```

### `contained`

A search result corresponds to something on a page of documentation.

``` swift
case contained(ResolvedTopicReference, inPage: ResolvedTopicReference)
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
