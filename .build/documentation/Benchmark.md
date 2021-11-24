# Benchmark

A logger that runs benchmarks and stores the results.

``` swift
public class Benchmark: Encodable 
```

## Inheritance

`Encodable`

## Properties

### `isEnabled`

True if the process is supposed to run benchmarks.

``` swift
public let isEnabled: Bool
```

### `metricsFilter`

If defined, filter the metrics to log with that value.

``` swift
public let metricsFilter: String?
```

### `main`

The shared instance to use for logging.

``` swift
public static let main: Benchmark 
```

### `date`

The benchmark timestamp.

``` swift
public let date 
```

### `platform`

<dl>
<dt><code>os(macOS)</code></dt>
<dd>

``` swift
public let platform = "macOS"
```

</dd>
</dl>

### `platform`

<dl>
<dt><code>os(iOS)</code></dt>
<dd>

``` swift
public let platform = "iOS"
```

</dd>
</dl>

### `platform`

<dl>
<dt><code>os(Linux)</code></dt>
<dd>

``` swift
public let platform = "Linux"
```

</dd>
</dl>

### `platform`

<dl>
<dt><code>os(Android)</code></dt>
<dd>

``` swift
public let platform = "Android"
```

</dd>
</dl>

### `platform`

<dl>
<dt><code>!((os(macOS))&&(os(iOS))&&(os(Linux))&&(os(Android)))</code></dt>
<dd>

``` swift
public let platform = "unsupported"
```

</dd>
</dl>

### `metrics`

The list of metrics included in this benchmark.

``` swift
public var metrics: [BenchmarkMetric] = []
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
