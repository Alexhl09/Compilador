# CoverageDataEntry.Error

``` swift
public enum Error: DescribedError 
```

## Inheritance

[`DescribedError`](/DescribedError)

## Enumeration Cases

### `unexpectedRoleHeader`

``` swift
case unexpectedRoleHeader(roleHeader: DocumentationNode.Kind)
```

### `failedConversion`

``` swift
case failedConversion(description: String)
```

### `inconsistentCoverageStatistic`

``` swift
case inconsistentCoverageStatistic(description: String)
```

### `serializationError`

``` swift
case serializationError(description: String)
```

## Properties

### `errorDescription`

``` swift
public var errorDescription: String 
```
