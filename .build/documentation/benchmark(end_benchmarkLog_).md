# benchmark(end:benchmarkLog:)

Ends the given metric and adds it to the log.

``` swift
public func benchmark<E>(end event: @autoclosure () -> E?, benchmarkLog log: Benchmark = .main) where E: BenchmarkBlockMetric 
```

## Parameters

  - event: The metric to end and log.
