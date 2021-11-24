# CellRange

``` swift
public final class CellRange 
```

## Inheritance

`CustomDebugStringConvertible`, `CustomStringConvertible`, `Hashable`

## Initializers

### `init(from:to:)`

``` swift
public convenience init(from: (row: Int, column: Int), to: (row: Int, column: Int)) 
```

### `init(from:to:)`

``` swift
public convenience init(from: IndexPath, to: IndexPath) 
```

## Properties

### `from`

``` swift
public let from: Location
```

### `to`

``` swift
public let to: Location
```

### `columnCount`

``` swift
public let columnCount: Int
```

### `rowCount`

``` swift
public let rowCount: Int
```

### `hashValue`

``` swift
public var hashValue: Int 
```

### `description`

``` swift
public var description: String 
```

### `debugDescription`

``` swift
public var debugDescription: String 
```

## Methods

### `contains(_:)`

``` swift
public func contains(_ indexPath: IndexPath) -> Bool 
```

### `contains(_:)`

``` swift
public func contains(_ cellRange: CellRange) -> Bool 
```

## Operators

### `==`

``` swift
public static func ==(lhs: CellRange, rhs: CellRange) -> Bool 
```
