# BenchmarkBlockMetric

A metric that runs over a period of time and needs
to be started and stopped to produce its result.

``` swift
public protocol BenchmarkBlockMetric: BenchmarkMetric 
```

## Inheritance

[`BenchmarkMetric`](/BenchmarkMetric)

## Requirements

### begin()

``` swift
func begin() -> Void
```

### end()

``` swift
func end() -> Void
```
