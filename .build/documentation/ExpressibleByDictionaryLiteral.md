# Extensions on ExpressibleByDictionaryLiteral

## Methods

### `decode(_:)`

Decode `JSON` into a dictionary of keys and values where the keys are
`String`s and the values are `Decodable`.

``` swift
static func decode(_ json: JSON) -> Decoded<[String: Value]> 
```

If the `JSON` is a dictionary of `String`/`JSON` pairs, this returns a decoded dictionary
of key/value pairs by mapping the value's `decode` function over the `JSON` and
then applying `sequence` to the result. This makes this `decode` function
an all-or-nothing operation (See the documentation for `sequence` for more
info).

If the `JSON` is not a dictionary, this returns a type mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded dictionary of key/value pairs
