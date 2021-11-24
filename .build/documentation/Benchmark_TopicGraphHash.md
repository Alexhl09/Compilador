# Benchmark.TopicGraphHash

A hash metric produced off the given documentation context.

``` swift
public class TopicGraphHash: BenchmarkMetric 
```

Use this metric to verify that your code changes
did not affect the topic graph of the compiled documentation.

## Inheritance

[`BenchmarkMetric`](/BenchmarkMetric)

## Initializers

### `init(context:)`

Creates a new metric and stores the checksum of the given documentation context topic graph.

``` swift
public init(context: DocumentationContext) 
```

#### Parameters

  - context: A documentation context containing a topic graph.

## Properties

### `identifier`

``` swift
public static let identifier = "topic-graph-hash"
```

### `displayName`

``` swift
public static let displayName = "Topic Graph Checksum"
```

### `result`

``` swift
public var result: MetricValue?
```
