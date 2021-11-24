# BenchmarkMetric

A generic, named metric.

``` swift
public protocol BenchmarkMetric 
```

## Requirements

### identifier

A textual identifier for the metric.

``` swift
static var identifier: String 
```

### displayName

A human-friendly display name for the metric.

``` swift
static var displayName: String 
```

### result

The result of the metric.

``` swift
var result: MetricValue? 
```
