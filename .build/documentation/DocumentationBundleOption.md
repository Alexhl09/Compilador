# DocumentationBundleOption

Resolves and validates a URL value that provides the path to a documentation bundle.

``` swift
public struct DocumentationBundleOption: DirectoryPathOption 
```

This option is used by the `Docc/Convert` subcommand.

## Inheritance

[`DirectoryPathOption`](/DirectoryPathOption)

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `url`

The path to a bundle to be compiled by DocC.

``` swift
@Argument(
        help: ArgumentHelp(
            "Path to a documentation bundle directory.",
            discussion: "The '.docc' bundle docc will build.",
            valueName: argumentValueName),
        transform: URL.init(fileURLWithPath:))
    public var url: URL?
```
