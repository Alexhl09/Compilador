# flatReduce(\_:initial:combine:)

Reduce a sequence with a combinator that returns a `Decoded` type, flattening
the result.

``` swift
public func flatReduce<S: Sequence, U>(_ sequence: S, initial: U, combine: (U, S.Iterator.Element) -> Decoded<U>) -> Decoded<U> 
```

This function is a helper function to make it easier to deal with combinators
that return `Decoded` types without ending up with multiple levels of nested
`Decoded` values.

For example, it can be used to traverse a JSON structure with an array of
keys. See the implementations of `<|` and `<||` that take an array of keys for
a real-world example of this use case.

## Parameters

  - sequence: Any `SequenceType` of values
  - initial: The initial value for the accumulator
  - combine: The combinator, which returns a `Decoded` type

## Returns

The result of iterating the combinator over every element of the sequence and flattening the result
