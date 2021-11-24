# benchmark(wrap:benchmarkLog:body:)

Ends the given metric and adds it to the log.

``` swift
@discardableResult
public func benchmark<E, Result>(wrap event: @autoclosure () -> E, benchmarkLog log: Benchmark = .main, body: () throws -> Result) rethrows -> Result where E: BenchmarkBlockMetric 
```

## Parameters

  - event: The metric to end and log.
