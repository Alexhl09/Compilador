# Docc.Index

Indexes a documentation bundle.

``` swift
public struct Index: ParsableCommand 
```

## Inheritance

`ParsableCommand`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `configuration`

``` swift
public static var configuration 
```

### `documentationBundle`

The user-provided path to a `.doccarchive` documentation archive.

``` swift
@OptionGroup()
        public var documentationBundle: DocumentationArchiveOption
```

### `bundleIdentifier`

The user-provided bundle name to use for the produced index.

``` swift
@Option(help: "The bundle name for the index.")
        public var bundleIdentifier: String
```

### `verbose`

A user-provided value that is true if additional index information should be outputted to the terminal.

``` swift
@Flag(help: "Print out the index information while the process runs.")
        public var verbose = false
```

### `outputURL`

The path to the directory that all build output should be placed in.

``` swift
public var outputURL: URL 
```

## Methods

### `run()`

``` swift
public mutating func run() throws 
```
