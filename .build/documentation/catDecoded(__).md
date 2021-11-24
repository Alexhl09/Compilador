# catDecoded(\_:)

Create a new array of unwrapped `.Success` values, filtering out `.Failure`s.

``` swift
public func catDecoded<T>(_ xs: [Decoded<T>]) -> [T] 
```

This will iterate through the array of `Decoded<T>` elements and safely
unwrap the values.

If the element is `.Success(T)`, it will unwrap the value and add it into the
array.

If the element is `.Failure`, it will not be added to the new array.

## Parameters

  - xs: An array of `Decoded<T>` values

## Returns

An array of unwrapped values of type `T`

# catDecoded(\_:)

Create a new dictionary of unwrapped `.Success` values, filtering out
`.Failure`s.

``` swift
public func catDecoded<T>(_ xs: [String: Decoded<T>]) -> [String: T] 
```

This will iterate through the dictionary of `Decoded<T>` elements and safely
unwrap the values.

If the element is `.Success(T)`, it will unwrap the value and assign it to
the existing key in the new dictionary.

If the element is `.Failure`, it will not be added to the new dictionary.

## Parameters

  - xs: A dictionary of `Decoded<T>` values assigned to `String` keys

## Returns

A dictionary of unwrapped values of type `T` assigned to `String` keys
