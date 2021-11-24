# DocumentationArchiveOption

Resolves and validates a URL value that provides the path to a documentation archive.

``` swift
public struct DocumentationArchiveOption: DirectoryPathOption 
```

This option is used by the `Docc/Index` subcommand.

## Inheritance

[`DirectoryPathOption`](/DirectoryPathOption)

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `url`

The path to an archive to be indexed by DocC.

``` swift
@Argument(
        help: ArgumentHelp(
            "Path to a documentation archive data directory of JSON files.",
            discussion: "The '.doccarchive' bundle docc will index.",
            valueName: argumentValueName),
        transform: URL.init(fileURLWithPath:))
    public var url: URL?
```
