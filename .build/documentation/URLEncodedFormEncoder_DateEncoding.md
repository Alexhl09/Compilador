# URLEncodedFormEncoder.DateEncoding

Encoding to use for `Date` values.

``` swift
public enum DateEncoding 
```

## Enumeration Cases

### `deferredToDate`

Defers encoding to the `Date` type. This is the default encoding.

``` swift
case deferredToDate
```

### `secondsSince1970`

Encodes `Date`s as seconds since midnight UTC on January 1, 1970.

``` swift
case secondsSince1970
```

### `millisecondsSince1970`

Encodes `Date`s as milliseconds since midnight UTC on January 1, 1970.

``` swift
case millisecondsSince1970
```

### `iso8601`

Encodes `Date`s according to the ISO8601 and RFC3339 standards.

``` swift
case iso8601
```

### `formatted`

Encodes `Date`s using the given `DateFormatter`.

``` swift
case formatted(DateFormatter)
```

### `custom`

Encodes `Date`s using the given closure.

``` swift
case custom((Date) throws -> String)
```

### `deferredToDate`

Defers encoding to the `Date` type. This is the default encoding.

``` swift
case deferredToDate
```

### `secondsSince1970`

Encodes `Date`s as seconds since midnight UTC on January 1, 1970.

``` swift
case secondsSince1970
```

### `millisecondsSince1970`

Encodes `Date`s as milliseconds since midnight UTC on January 1, 1970.

``` swift
case millisecondsSince1970
```

### `iso8601`

Encodes `Date`s according to the ISO8601 and RFC3339 standards.

``` swift
case iso8601
```

### `formatted`

Encodes `Date`s using the given `DateFormatter`.

``` swift
case formatted(DateFormatter)
```

### `custom`

Encodes `Date`s using the given closure.

``` swift
case custom((Date) throws -> String)
```

### `deferredToDate`

Defers encoding to the `Date` type. This is the default encoding.

``` swift
case deferredToDate
```

### `secondsSince1970`

Encodes `Date`s as seconds since midnight UTC on January 1, 1970.

``` swift
case secondsSince1970
```

### `millisecondsSince1970`

Encodes `Date`s as milliseconds since midnight UTC on January 1, 1970.

``` swift
case millisecondsSince1970
```

### `iso8601`

Encodes `Date`s according to the ISO8601 and RFC3339 standards.

``` swift
case iso8601
```

### `formatted`

Encodes `Date`s using the given `DateFormatter`.

``` swift
case formatted(DateFormatter)
```

### `custom`

Encodes `Date`s using the given closure.

``` swift
case custom((Date) throws -> String)
```
