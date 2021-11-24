# Benchmark.ExternalTopicsHash

A hash metric produced off the externally resolved links and symbols.

``` swift
public class ExternalTopicsHash: BenchmarkMetric 
```

Use this metric to verify that your code changes
did not affect external resolving.

## Inheritance

[`BenchmarkMetric`](/BenchmarkMetric)

## Initializers

### `init(context:)`

Creates a new metric and stores the checksum of the given documentation context external topics.

``` swift
public init(context: DocumentationContext) 
```

#### Parameters

  - context: A documentation context.

## Properties

### `identifier`

``` swift
public static let identifier = "external-topics-hash"
```

### `displayName`

``` swift
public static let displayName = "External Topics Checksum"
```

### `result`

``` swift
public var result: MetricValue?
```
