# LogHandle

An object that writes logs to the given output device.

``` swift
public enum LogHandle: TextOutputStream 
```

You can use log handle objects to write to standard output, standard error, or any given file handle.

## Inheritance

`TextOutputStream`

## Enumeration Cases

### `standardOutput`

A log handle that will perform writes to standard output.

``` swift
case standardOutput
```

### `standardError`

A log handle that will perform writes to standard error.

``` swift
case standardError
```

### `none`

A log handle that will ignore all write requests.

``` swift
case none
```

This log handle's intended use case is for testing scenarios when logs can be ignored.

### `file`

A log handle that will write to the given file handle.

``` swift
case file(FileHandle)
```

### `memory`

A log handle that writes to an NSString reference.

``` swift
case memory(LogStorage)
```

## Methods

### `write(_:)`

Writes the given string to the log handle.

``` swift
public mutating func write(_ string: String) 
```
