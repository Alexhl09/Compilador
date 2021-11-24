# Extensions on Collection

## Properties

### `requiredDisambiguationSuffixes`

Given a collection of colliding symbols, returns the disambiguation suffix required
for each symbol to disambiguate it from the others in the collection.

``` swift
var requiredDisambiguationSuffixes: [(shouldAddIdHash: Bool, shouldAddKind: Bool)] 
```

## Methods

### `decode(_:)`

Decode `JSON` into an array of values where the elements of the array are
`Decodable`.

``` swift
static func decode(_ json: JSON) -> Decoded<[Iterator.Element]> 
```

If the `JSON` is an array of `JSON` objects, this returns a decoded array
of values by mapping the element's `decode` function over the `JSON` and
then applying `sequence` to the result. This makes this `decode` function
an all-or-nothing operation (See the documentation for `sequence` for more
info).

If the `JSON` is not an array, this returns a type mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded array of values
