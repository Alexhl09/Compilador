# PresentationURLGenerator

A type that generates URLs that you use to link to rendered pages.

``` swift
public struct PresentationURLGenerator 
```

Compared to a `NodeURLGenerator`, this type also supports resolving presentation URLs via external resolvers.

## Initializers

### `init(context:baseURL:)`

Creates a new URL generator.

``` swift
public init(context: DocumentationContext, baseURL: URL) 
```

#### Parameters

  - context: The documentation context the URL generator will queries for external reference resolvers.
  - baseURL: The base URL for in-bundle references.

## Methods

### `presentationURLForReference(_:requireRelativeURL:)`

Returns the URL for linking to the rendered page of a given reference.

``` swift
public func presentationURLForReference(_ reference: ResolvedTopicReference, requireRelativeURL: Bool = false) -> URL 
```

> 

#### Parameters

  - reference: The reference which the URL generator generates a URL for.
  - requireRelativeURL: If `true`, the returned URL will be relative. If `false` the returned URL may be either relative or absolute.

#### Returns

The generated URL.
