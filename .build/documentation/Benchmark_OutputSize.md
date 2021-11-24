# Benchmark.OutputSize

A disk size metric for a given directory.

``` swift
public class OutputSize: BenchmarkMetric 
```

> 

## Inheritance

[`BenchmarkMetric`](/BenchmarkMetric)

## Initializers

### `init(dataURL:)`

Logs the recursive file size of the given directory contents.

``` swift
public init(dataURL: URL) 
```

## Properties

### `identifier`

``` swift
public static let identifier = "output-size"
```

### `displayName`

``` swift
public static let displayName = "Compiled output size (bytes)"
```

### `result`

``` swift
public var result: MetricValue? = nil
```
