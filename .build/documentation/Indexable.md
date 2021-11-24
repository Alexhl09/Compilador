# Indexable

A value that can provide search results.

``` swift
public protocol Indexable 
```

## Requirements

### indexingRecords(onPage:​)

A list of `IndexingRecord`s that can become search results.

``` swift
func indexingRecords(onPage page: ResolvedTopicReference) throws -> [IndexingRecord]
```

> Note: A document may have a search result for itself and sometimes notable subsections.

#### Throws

`IndexingError`
