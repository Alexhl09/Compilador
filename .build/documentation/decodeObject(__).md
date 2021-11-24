# decodeObject(\_:)

Decode `JSON` into a dictionary of keys and values where the keys are
`String`s and the values are `Decodable`.

``` swift
public func decodeObject<T: Decodable>(_ json: JSON) -> Decoded<[String: T]> where T.DecodedType == T 
```

If the `JSON` is a dictionary of `String`/`JSON` pairs, this returns a
decoded dictionary of key/value pairs by mapping the value's `decode`
function over the `JSON` and then applying `sequence` to the result. This
makes `decodeObject` an all-or-nothing operation (See the documentation for
`sequence` for more info).

If the `JSON` is not a dictionary, this returns a type mismatch.

This is a convenience function that is the same as `[String: T].decode(json)`
(where `T` is `Decodable`) and only exists to ease some pain around needing to
use the full type of the dictionary when calling `decode`. We expect this
function to be removed in a future version.

## Parameters

  - json: The `JSON` value to decode

## Returns

A decoded dictionary of key/value pairs
