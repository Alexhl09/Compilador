# DirectoryPathOption

A parsable argument for an optional directory path.

``` swift
public protocol DirectoryPathOption: ParsableArguments 
```

This option validates the the provided path exists and that it's a directory.

## Inheritance

`ParsableArguments`

## Default Implementations

### `urlOrFallback`

The provided `url` or the "current directory" if the user didn't provide an argument.

``` swift
public var urlOrFallback: URL 
```

### `validate()`

``` swift
public mutating func validate() throws 
```

## Requirements

### url

The path to a directory.

``` swift
var url: URL? 
```
