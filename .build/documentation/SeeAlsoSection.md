# SeeAlsoSection

A section that contains groups of related symbols or external links.

``` swift
public struct SeeAlsoSection: GroupedSection 
```

## Inheritance

[`GroupedSection`](/GroupedSection)

## Properties

### `title`

``` swift
public private(set) static var title: String? = "See Also"
```

### `content`

``` swift
public var content: [Markup]
```

### `taskGroups`

The list of groups for the section.

``` swift
public var taskGroups: [TaskGroup] 
```
