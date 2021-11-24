# RenderReferenceHierarchy

A node that represents API symbol hierarchy.

``` swift
public struct RenderReferenceHierarchy: Codable 
```

## Inheritance

`Codable`

## Properties

### `paths`

The paths (breadcrumbs) that lead from the landing page to the given symbol.

``` swift
public let paths: [[String]]
```

A single path is a list of topic-graph references, that trace the curation
through the documentation hierarchy from a framework landing page to a
given target symbol.

Symbols curated multiple times have multiple paths, for example:

  - Example Framework / Example Type / Example Property

  - Example Framework / My Article / Example Type / Example Property

  - Example Framework / Related Type / Example Property

> Note: The first element in `paths` is the *canonical* breadcrumb for the symbol.

Landing pages' hierarchy contains a single, empty path.
