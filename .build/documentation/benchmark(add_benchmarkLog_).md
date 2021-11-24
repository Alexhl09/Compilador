# benchmark(add:benchmarkLog:)

Logs a one-off metric value.

``` swift
public func benchmark<E>(add event: @autoclosure () -> E, benchmarkLog log: Benchmark = .main) where E: BenchmarkMetric 
```

## Parameters

  - event: The metric to add to the log.
