# LinkDestinationSummary.TaskGroup

A collection of identifiers that all relate to some common task, as described by the title.

``` swift
public struct TaskGroup: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(title:identifiers:)`

Creates a new task group that lists a number of elements that relate to a common task.

``` swift
public init(title: String?, identifiers: [String]) 
```

#### Parameters

  - title: The optional title for this task group.
  - identifiers: The identifiers of all the elements that are part of this task group.

## Properties

### `title`

The title of this task group

``` swift
public let title: String?
```

### `identifiers`

The identifiers of all the elements that are part of this task group.

``` swift
public let identifiers: [String]
```
