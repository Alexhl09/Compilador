# PrintCursor

The line and column of a position in text.

``` swift
public struct PrintCursor: Comparable, Hashable, CustomDebugStringConvertible 
```

## Inheritance

`Comparable`, `CustomDebugStringConvertible`, `Hashable`

## Initializers

### `init(line:column:)`

``` swift
public init(line: Int, column: Int) 
```

### `init?(offset:in:)`

``` swift
public init?(offset: Int, in source: String) 
```

## Properties

### `line`

The line of this position in text, starting at `1`.

``` swift
public let line: Int
```

### `column`

The column of this position in text, starting at `1`.

``` swift
public let column: Int
```

### `debugDescription`

``` swift
public var debugDescription: String 
```

## Operators

### `<`

``` swift
public static func < (lhs: PrintCursor, rhs: PrintCursor) -> Bool 
```
