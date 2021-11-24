# NavigatorTree.Error

``` swift
public enum Error: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Enumeration Cases

### `cannotOpenFile`

The navigator tree can't open the file.

``` swift
case cannotOpenFile(path: String)
```

### `cannotCreateFile`

The navigator tree can't create the file.

``` swift
case cannotCreateFile(path: String)
```

### `invalidData`

The navigator tree found invalid data to read.

``` swift
case invalidData
```

## Properties

### `errorDescription`

``` swift
public var errorDescription: String 
```
