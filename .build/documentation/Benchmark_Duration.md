# Benchmark.Duration

A duration metric in milliseconds.

``` swift
public class Duration: DynamicallyIdentifiableMetric, BenchmarkBlockMetric 
```

Use this metric to measure how long a given named task takes.

## Inheritance

[`DynamicallyIdentifiableMetric`](/DynamicallyIdentifiableMetric), [`BenchmarkBlockMetric`](/BenchmarkBlockMetric)

## Initializers

### `init(id:)`

Creates a new instance with the given name.

``` swift
public init(id: String) 
```

Since this metric can be used multiple times to measure
the duration of various tasks, `init(id:)` requires you
to provide an id for the task being measured. The `id`
parameter will be appended to the metric identifier in the
exported benchmark report to keep the various durations
distinguishable like so: `duration-myTask1`, `duration-my-other-task`, etc.

### `init(id:duration:)`

Convenience init to use when the duration is tracked elsewhere.

``` swift
public init(id: String, duration: TimeInterval) 
```

#### Parameters

  - id: The id for the metric.
  - duration: The duration value in milliseconds to be logged.

## Properties

### `identifier`

``` swift
public static let identifier = "duration"
```

### `displayName`

``` swift
public static let displayName = "Duration for an operation"
```

### `identifier`

``` swift
public var identifier: String 
```

### `displayName`

``` swift
public var displayName: String 
```

### `result`

``` swift
public var result: MetricValue?
```

## Methods

### `begin()`

``` swift
public func begin() 
```

### `end()`

``` swift
public func end() 
```
