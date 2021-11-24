# DocumentationCoverageOptionsArgument

Resolves and validates the arguments needed to enable the documentation coverage feature.

``` swift
public struct DocumentationCoverageOptionsArgument: ParsableArguments 
```

These options are used by the `Docc/Convert` subcommand.

## Inheritance

`ParsableArguments`

## Initializers

### `init()`

``` swift
public init() 
```

## Properties

### `level`

The desired level of documentation coverage. Options are `none`, `brief`, and `detailed`. The default is `none`

``` swift
@Option(
        name: .long, // TODO: `.customLong("level", withSingleDash: true)` doesn't work with `swift run docc …`
        parsing: .next,
        help: ArgumentHelp(
            "Desired level of documentation coverage output."))
    public var level: DocumentationCoverageLevel = .none
```

### `kinds`

``` swift
@Option(
        name: .long,
        parsing: ArrayParsingStrategy.upToNextOption,
        help: ArgumentHelp(
            "The kinds of entities to filter generated documentation for.",
            valueName: "kind"))
    public var kinds: [DocumentationCoverageOptions.KindFilterOptions.BitFlagRepresentation] = []
```
