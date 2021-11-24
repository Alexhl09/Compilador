# DocumentationCoverageOptions.KindFilterOptions

Represents kinds to select and display documentation coverage statistics for.
Note:​ This enum is not meant to be persisted between runs

``` swift
public struct KindFilterOptions: OptionSet, Hashable, CustomDebugStringConvertible 
```

## Inheritance

`CustomDebugStringConvertible`, `Hashable`, `OptionSet`

## Nested Type Aliases

### `RawValue`

``` swift
public typealias RawValue = Int
```

## Initializers

### `init(rawValue:)`

``` swift
public init(rawValue: Int) 
```

### `init(commandLineStringArray:)`

``` swift
public init(commandLineStringArray: [String]) 
```

### `init(bitFlags:)`

``` swift
public init<List>(bitFlags: List) where
        List: Collection,
        List.Element == BitFlagRepresentation 
```

## Properties

### `rawValue`

``` swift
public let rawValue: Int
```

### `none`

``` swift
public static let none: KindFilterOptions =     []
```

### `debugDescription`

``` swift
public var debugDescription: String 
```
