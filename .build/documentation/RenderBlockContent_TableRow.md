# RenderBlockContent.TableRow

A table row that contains a list of row cells.

``` swift
public struct TableRow: Codable, Equatable 
```

## Inheritance

`Codable`, `Equatable`

## Nested Type Aliases

### `Cell`

A list of rendering block elements.

``` swift
public typealias Cell = [RenderBlockContent]
```

## Initializers

### `init(cells:)`

Creates a new table row.

``` swift
public init(cells: [Cell]) 
```

#### Parameters

  - cells: The list of row cells to use.

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Properties

### `cells`

The list of row cells.

``` swift
public let cells: [Cell]
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
