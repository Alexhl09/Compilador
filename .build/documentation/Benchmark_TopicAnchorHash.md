# Benchmark.TopicAnchorHash

A anchor sections hash metric produced off the given documentation context.

``` swift
public class TopicAnchorHash: BenchmarkMetric 
```

Use this metric to verify that your code changes
did not affect the anchor sections in the compiled documentation.

## Inheritance

[`BenchmarkMetric`](/BenchmarkMetric)

## Initializers

### `init(context:)`

Creates a new metric and stores the checksum of the given documentation context anchor sections.

``` swift
public init(context: DocumentationContext) 
```

#### Parameters

  - context: A documentation context containing a topic graph.

## Properties

### `identifier`

``` swift
public static let identifier = "topic-anchor-hash"
```

### `displayName`

``` swift
public static let displayName = "Topic Anchor Checksum"
```

### `result`

``` swift
public var result: MetricValue?
```
