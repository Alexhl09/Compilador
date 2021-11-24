# Extensions on Optional

## Initializers

### `init(reconstructing:)`

``` swift
public init(reconstructing value: Wrapped?) 
```

## Properties

### `optional`

``` swift
public var optional: Wrapped? 
```

## Methods

### `apply(_:)`

apply an optional function to `self`

``` swift
func apply<T>(_ f: ((Wrapped) -> T)?) -> T? 
```

  - If either self or the function are `.None`, the function will not be
    evaluated and this will return `.None`

  - If both self and the function are `.Some`, the function will be applied
    to the unwrapped value

#### Parameters

  - f: An optional transformation function from type `Wrapped` to type `T`

#### Returns

A value of type `Optional<T>`

### `decode(_:)`

Decode `JSON` into an `Optional<Wrapped>` value where `Wrapped` is `Decodable`.

``` swift
static func decode(_ json: JSON) -> Decoded<Wrapped?> 
```

Returns a decoded optional value from the result of performing `decode` on
the internal wrapped type.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded optional `Wrapped` value
