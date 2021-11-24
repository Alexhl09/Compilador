# DocumentationCoverageOptions

Resolves and validates the arguments needed to enable the documentation coverage feature.

``` swift
public struct DocumentationCoverageOptions 
```

These options are used by the `Convert` subcommand.

## Initializers

### `init(level:kindFilterOptions:)`

``` swift
public init(
        level: DocumentationCoverageLevel,
        kindFilterOptions: KindFilterOptions = []) 
```

### `init(from:)`

``` swift
public init(from argumentInstance: DocumentationCoverageOptionsArgument) 
```

## Properties

### `noCoverage`

An instance configured to represent the choice not to produce any documentation coverage artifacts or output.

``` swift
public static var noCoverage: DocumentationCoverageOptions 
```

### `level`

``` swift
public var level: DocumentationCoverageLevel
```

### `kindFilterOptions`

``` swift
public var kindFilterOptions: KindFilterOptions
```

## Methods

### `generateFilterClosure()`

Creates a predicate closure based on the current configuration of the receiving instance

``` swift
public func generateFilterClosure() -> (CoverageDataEntry) -> Bool 
```

#### Returns

which will return `true` for `CoverageDataEntry`s which should accepted according to current configuration of the instance generating the closure.
