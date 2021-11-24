# Benchmark.PeakMemory

A peak memory footprint metric for the current process.

``` swift
public class PeakMemory: BenchmarkMetric 
```

## Inheritance

[`BenchmarkMetric`](/BenchmarkMetric)

## Initializers

### `init()`

Creates a new instance and fetches the peak memory usage.

``` swift
public init() 
```

## Properties

### `identifier`

``` swift
public static let identifier = "peak-memory"
```

### `displayName`

``` swift
public static let displayName = "Peak memory footprint (bytes)"
```

### `result`

``` swift
public var result: MetricValue? 
```
