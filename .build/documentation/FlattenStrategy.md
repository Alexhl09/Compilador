# FlattenStrategy

Describes how multiple producers should be joined together.

``` swift
public enum FlattenStrategy: Equatable 
```

## Inheritance

`Equatable`

## Enumeration Cases

### `merge`

The producers should be merged, so that any value received on any of the
input producers will be forwarded immediately to the output producer.

``` swift
case merge
```

The resulting producer will complete only when all inputs have
completed.

### `concat`

The producers should be concatenated, so that their values are sent in
the order of the producers themselves.

``` swift
case concat
```

The resulting producer will complete only when all inputs have
completed.

### `latest`

Only the events from the latest input producer should be considered for
the output. Any producers received before that point will be disposed
of.

``` swift
case latest
```

The resulting producer will complete only when the producer-of-producers
and the latest producer has completed.

## Properties

### `Latest`

``` swift
@available(*, unavailable, renamed:"latest")
	public static var Latest: FlattenStrategy 
```

### `Concat`

``` swift
@available(*, unavailable, renamed:"concat")
	public static var Concat: FlattenStrategy 
```

### `Merge`

``` swift
@available(*, unavailable, renamed:"merge")
	public static var Merge: FlattenStrategy 
```
