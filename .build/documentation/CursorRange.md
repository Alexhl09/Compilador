# CursorRange

A range in a document represented by a pair of line-column pairs.

``` swift
public struct CursorRange: Hashable, CustomDebugStringConvertible 
```

## Inheritance

`CustomDebugStringConvertible`, `Hashable`

## Initializers

### `init(start:end:in:)`

``` swift
public init(start: PrintCursor, end: PrintCursor, in source: String) 
```

## Properties

### `start`

The start of the range.

``` swift
public let start: PrintCursor
```

### `end`

The end of the range.

``` swift
public let end: PrintCursor
```

### `debugDescription`

``` swift
public var debugDescription: String 
```
