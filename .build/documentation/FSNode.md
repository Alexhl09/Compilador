# FSNode

An element in a virtual filesystem.

``` swift
public enum FSNode 
```

## Enumeration Cases

### `file`

A file in a filesystem.

``` swift
case file(File)
```

### `directory`

A directory in a filesystem.

``` swift
case directory(Directory)
```

## Properties

### `url`

The URL for the node in the filesystem.

``` swift
public var url: URL 
```
