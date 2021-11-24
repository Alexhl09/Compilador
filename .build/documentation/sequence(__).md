# sequence(\_:)

Convert an `Array` of `Decoded<T>` values to a `Decoded` `Array` of unwrapped
`T` values.

``` swift
public func sequence<T>(_ xs: [Decoded<T>]) -> Decoded<[T]> 
```

This performs an all-or-nothing transformation on the array. If every element
is `.Success`, then this function will return `.Success` along with the array
of unwrapped `T` values.

However, if *any* of the elements are `.Failure`, this function will also
return `.Failure`, and no array will be returned.

## Parameters

  - xs: An `Array` of `Decoded<T>` values

## Returns

A `Decoded` `Array` of unwrapped `T` values

# sequence(\_:)

Convert a `Dictionary` with `Decoded<T>` values to a `Decoded` `Dictionary`
with unwrapped `T` values.

``` swift
public func sequence<Key, Value>(_ xs: [Key: Decoded<Value>]) -> Decoded<[Key: Value]> 
```

This performs an all-or-nothing transformation on the dictionary. If every
key is associated with a `.Success` value, then this function will return
`.Success` along with the dictionary of unwrapped `T` values associated with
their original keys.

However, if *any* of the keys are associated with a `.Failure` value, this
function will also return `.Failure`, and no dictionary will be returned.

## Parameters

  - xs: A `Dictionary` of arbitrary keys and `Decoded<T>` values

## Returns

A `Decoded` `Dictionary` of unwrapped `T` values assigned to their original keys
