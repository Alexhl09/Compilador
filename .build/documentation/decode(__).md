# decode(\_:)

Attempt to transform `Any` into a `Decodable` value.

``` swift
public func decode<T: Decodable>(_ object: Any) -> Decoded<T> where T == T.DecodedType 
```

This function takes `Any` (usually the output from
`NSJSONSerialization`) and attempts to transform it into a `Decodable` value.
This works based on the type you ask for.

For example, the following code attempts to decode to `Decoded<String>`,
because that's what we have explicitly stated is the return type:

``` 
do {
  let object = try NSJSONSerialization.JSONObjectWithData(data, options: nil)
  let str: Decoded<String> = decode(object)
} catch {
  // handle error
}
```

## Parameters

  - object: The `Any` instance to attempt to decode

## Returns

A `Decoded<T>` value where `T` is `Decodable`

# decode(\_:)

Attempt to transform `Any` into an `Array` of `Decodable` values.

``` swift
public func decode<T: Decodable>(_ object: Any) -> Decoded<[T]> where T == T.DecodedType 
```

This function takes `Any` (usually the output from
`NSJSONSerialization`) and attempts to transform it into an `Array` of
`Decodable` values. This works based on the type you ask for.

For example, the following code attempts to decode to
`Decoded<[String]>`, because that's what we have explicitly stated is
the return type:

``` 
do {
  let object = try NSJSONSerialization.JSONObjectWithData(data, options: nil)
  let str: Decoded<[String]> = decode(object)
} catch {
  // handle error
}
```

## Parameters

  - object: The `Any` instance to attempt to decode

## Returns

A `Decoded<[T]>` value where `T` is `Decodable`

# decode(\_:)

Attempt to transform `Any` into a `Decodable` value and return an `Optional`.

``` swift
public func decode<T: Decodable>(_ object: Any) -> T? where T == T.DecodedType 
```

This function takes `Any` (usually the output from
`NSJSONSerialization`) and attempts to transform it into a `Decodable` value,
returning an `Optional`. This works based on the type you ask for.

For example, the following code attempts to decode to `Optional<String>`,
because that's what we have explicitly stated is the return type:

``` 
do {
  let object = try NSJSONSerialization.JSONObjectWithData(data, options: nil)
  let str: String? = decode(object)
} catch {
  // handle error
}
```

## Parameters

  - object: The `Any` instance to attempt to decode

## Returns

An `Optional<T>` value where `T` is `Decodable`

# decode(\_:)

Attempt to transform `Any` into an `Array` of `Decodable` values and
return an `Optional`.

``` swift
public func decode<T: Decodable>(_ object: Any) -> [T]? where T == T.DecodedType 
```

This function takes `Any` (usually the output from
`NSJSONSerialization`) and attempts to transform it into an `Array` of
`Decodable` values, returning an `Optional`. This works based on the type you
ask for.

For example, the following code attempts to decode to
`Optional<[String]>`, because that's what we have explicitly stated is
the return type:

``` 
do {
  let object = try NSJSONSerialization.JSONObjectWithData(data, options: nil)
  let str: [String]? = decode(object)
} catch {
  // handle error
}
```

## Parameters

  - object: The `Any` instance to attempt to decode

## Returns

An `Optional<[T]>` value where `T` is `Decodable`
