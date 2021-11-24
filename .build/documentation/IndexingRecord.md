# IndexingRecord

A structure containing indexing information for a `RenderNode`.

``` swift
public struct IndexingRecord: Equatable 
```

## Inheritance

`Equatable`

## Properties

### `kind`

The kind of document or section whose text content this record collects.

``` swift
public let kind: Kind
```

### `location`

The location of a search result for this record.

``` swift
public let location: Location
```

### `title`

The title of the document or section.

``` swift
public let title: String
```

### `summary`

A summary phrase, sentence, or abstract from a document or section for use in previewing content in search results.

``` swift
public let summary: String
```

### `headings`

Headings and subheadings in the document or section.

``` swift
public let headings: [String]
```

### `rawIndexableTextContent`

A concatenation of all other raw text content in the document or section.

``` swift
public let rawIndexableTextContent: String
```

> Note: Titles, headings, and abstracts are not included in this string.
