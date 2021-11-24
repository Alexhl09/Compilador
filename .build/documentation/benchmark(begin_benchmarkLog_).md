# benchmark(begin:benchmarkLog:)

Starts the given metric.

``` swift
public func benchmark<E>(begin event: @autoclosure () -> E, benchmarkLog log: Benchmark = .main) -> E? where E: BenchmarkBlockMetric 
```

## Parameters

  - event: The metric to start.
