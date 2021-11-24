# CoverageDataEntry

`CoverageDataEntry` represents coverage data for one symbol/USR.

``` swift
public struct CoverageDataEntry: CustomStringConvertible, Codable 
```

## Inheritance

`Codable`, `CustomStringConvertible`

## Properties

### `description`

``` swift
public var description: String 
```

## Methods

### `generateSummary(of:shouldGenerateBrief:shouldGenerateDetailed:)`

Outputs a short table summarizing the coverage statistics for a list of data entries.

``` swift
public static func generateSummary(
        of coverageInfo: [CoverageDataEntry],
        shouldGenerateBrief: Bool,
        shouldGenerateDetailed: Bool) -> String 
```

#### Parameters

  - coverageInfo: An array of entries to summarize.

### `generateSummary(ofDataAt:shouldGenerateBrief:shouldGenerateDetailed:)`

Outputs a short table summarizing the coverage statistics for a list of data entries in a file at the given URL.

``` swift
public static func generateSummary(
        ofDataAt url: URL,
        shouldGenerateBrief: Bool,
        shouldGenerateDetailed: Bool
    ) throws -> String 
```
