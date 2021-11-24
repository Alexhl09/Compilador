# LMDB.Database.WriteFlags

The set of flags used by the database when writing a value.

``` swift
public struct WriteFlags: OptionSet 
```

> 

## Inheritance

`OptionSet`

## Initializers

### `init(rawValue:)`

``` swift
public init(rawValue: Int32) 
```

## Properties

### `rawValue`

``` swift
public let rawValue: Int32
```

### `noOverwrite`

``` swift
public static let noOverwrite 
```

### `noDuplicateData`

``` swift
public static let noDuplicateData 
```

### `current`

``` swift
public static let current 
```

### `reserve`

``` swift
public static let reserve 
```

### `append`

``` swift
public static let append 
```

### `appendDuplicate`

``` swift
public static let appendDuplicate 
```

### `multiple`

``` swift
public static let multiple 
```
