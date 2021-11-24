# FSNode.Directory

A directory in a virtual file system.

``` swift
public struct Directory 
```

## Initializers

### `init(url:children:)`

Creates a new virtual directory with a given URL and contents.

``` swift
public init(url: URL, children: [FSNode]) 
```

#### Parameters

  - url: The URL to this directory.
  - children: The contents of this directory.

## Properties

### `url`

The URL to this directory.

``` swift
public var url: URL
```

### `children`

The contents of this directory.

``` swift
public var children: [FSNode]
```
