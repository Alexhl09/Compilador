# LineHighlighter.Highlight

A single line's highlight.

``` swift
public struct Highlight: Codable 
```

## Inheritance

`Codable`

## Initializers

### `init(line:start:length:)`

Creates a new highlight for a single line.

``` swift
public init(line: Int, start: Int? = nil, length: Int? = nil) 
```

#### Parameters

  - line: The line to highlight.
  - start: The column in which to start the highlight.
  - length: The character length of the highlight.

## Properties

### `line`

The line to highlight.

``` swift
public let line: Int
```

### `start`

If non-`nil`, the column to start the highlight.

``` swift
public let start: Int?
```

### `length`

If non-`nil`, the length of the highlight in columns.

``` swift
public let length: Int?
```
