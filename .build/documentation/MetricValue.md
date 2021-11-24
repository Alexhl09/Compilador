# MetricValue

An encodable value which is either a number or a string.

``` swift
public enum MetricValue: Encodable 
```

Using either number or string values allows benchmark reports
to be compared without having a predefined list of possible value types.

For example when comparing two benchmark reports a delta can be produced
for any numeric value without the understanding whether a number is a duration
in seconds or megabytes.

Similarly, string values can be checked for equality without understanding
what the metric represents.

## Inheritance

`Encodable`

## Enumeration Cases

### `string`

A textual metric to produce match/no match deltas.

``` swift
case string(String)
```

### `number`

A number metric which can be used to produce percentage delta changes.

``` swift
case number(Double)
```

### `integer`

An integer metric suitable for counters or other non-floating numbers.

``` swift
case integer(Int64)
```

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
