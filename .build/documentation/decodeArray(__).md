# decodeArray(\_:)

Decode `JSON` into an array of values where the elements of the array are
`Decodable`.

``` swift
public func decodeArray<T: Decodable>(_ json: JSON) -> Decoded<[T]> where T.DecodedType == T 
```

If the `JSON` is an array of `JSON` objects, this returns a decoded array
of values by mapping the element's `decode` function over the `JSON` and
then applying `sequence` to the result. This makes `decodeArray` an
all-or-nothing operation (See the documentation for `sequence` for more
info).

If the `JSON` is not an array, this returns a type mismatch.

This is a convenience function that is the same as `[T].decode(json)` (where `T`
is `Decodable`) and only exists to ease some pain around needing to use the
full type of the array when calling `decode`. We expect this function to be
removed in a future version.

## Parameters

  - json: The `JSON` value to decode

## Returns

A decoded array of values
