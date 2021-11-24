# Swift4ServerTimestamp

A compatibility version of `ServerTimestamp` that does not use property
wrappers, suitable for use in older versions of Swift.

``` swift
@available(swift, deprecated: 5.1)
public enum Swift4ServerTimestamp: Codable, Equatable 
```

Wraps a `Timestamp` field to mark that it should be populated with a server
timestamp. If a `Codable` object being written contains a `.pending` for an
`Swift4ServerTimestamp` field, it will be replaced with
`FieldValue.serverTimestamp()` as it is sent.

Example:

``` 
struct CustomModel {
  var ts: Swift4ServerTimestamp
}
```

Then `CustomModel(ts: .pending)` will tell server to fill `ts` with current
timestamp.

## Inheritance

`Codable`, `Equatable`

## Initializers

### `init(from:)`

``` swift
public init(from decoder: Decoder) throws 
```

## Enumeration Cases

### `pending`

When being read (decoded) from Firestore, NSNull values will be mapped to
`pending`. When being written (encoded) to Firestore, `pending` means
requesting server to set timestamp on the field (essentially setting value
to FieldValue.serverTimestamp()).

``` swift
case pending
```

### `resolved`

When being read (decoded) from Firestore, non-nil Timestamp will be mapped
to `resolved`. When being written (encoded) to Firestore,
`resolved(stamp)` will set the field value to `stamp`.

``` swift
case resolved(Timestamp)
```

## Properties

### `timestamp`

Returns this value as an `Optional<Timestamp>`.

``` swift
public var timestamp: Timestamp? 
```

If the server timestamp is still pending, the returned optional will be
`.none`. Once resolved, the returned optional will be `.some` with the
resolved timestamp.

## Methods

### `encode(to:)`

``` swift
public func encode(to encoder: Encoder) throws 
```
