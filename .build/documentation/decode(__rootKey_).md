# decode(\_:rootKey:)

Attempt to transform `Any` into a `Decodable` value using a specified
root key.

``` swift
public func decode<T: Decodable>(_ dict: [String: Any], rootKey: String) -> Decoded<T> where T == T.DecodedType 
```

This function attempts to extract the embedded `JSON` object from the
dictionary at the specified key and transform it into a `Decodable` value.
This works based on the type you ask for.

For example, the following code attempts to decode to `Decoded<String>`,
because that's what we have explicitly stated is the return type:

``` 
do {
  let dict = try NSJSONSerialization.JSONObjectWithData(data, options: nil) as? [String: Any] ?? [:]
  let str: Decoded<String> = decode(dict, rootKey: "value")
} catch {
  // handle error
}
```

## Parameters

  - dict: The dictionary containing the `Any` instance to attempt to decode
  - rootKey: The root key that contains the object to decode

## Returns

A `Decoded<T>` value where `T` is `Decodable`

# decode(\_:rootKey:)

Attempt to transform `Any` into an `Array` of `Decodable` value using a
specified root key.

``` swift
public func decode<T: Decodable>(_ dict: [String: Any], rootKey: String) -> Decoded<[T]> where T == T.DecodedType 
```

This function attempts to extract the embedded `JSON` object from the
dictionary at the specified key and transform it into an `Array` of
`Decodable` values. This works based on the type you ask for.

For example, the following code attempts to decode to `Decoded<[String]>`,
because that's what we have explicitly stated is the return type:

``` 
do {
  let dict = try NSJSONSerialization.JSONObjectWithData(data, options: nil) as? [String: Any] ?? [:]
  let str: Decoded<[String]> = decode(dict, rootKey: "value")
} catch {
  // handle error
}
```

## Parameters

  - dict: The dictionary containing the `Any` instance to attempt to decode
  - rootKey: The root key that contains the object to decode

## Returns

A `Decoded<[T]>` value where `T` is `Decodable`

# decode(\_:rootKey:)

Attempt to transform `Any` into a `Decodable` value using a specified
root key and return an `Optional`.

``` swift
public func decode<T: Decodable>(_ dict: [String: Any], rootKey: String) -> T? where T == T.DecodedType 
```

This function attempts to extract the embedded `JSON` object from the
dictionary at the specified key and transform it into a `Decodable` value,
returning an `Optional`. This works based on the type you ask for.

For example, the following code attempts to decode to `Optional<String>`,
because that's what we have explicitly stated is the return type:

``` 
do {
  let dict = try NSJSONSerialization.JSONObjectWithData(data, options: nil) as? [String: Any] ?? [:]
  let str: String? = decode(dict, rootKey: "value")
} catch {
  // handle error
}
```

## Parameters

  - dict: The dictionary containing the `Any` instance to attempt to decode
  - rootKey: The root key that contains the object to decode

## Returns

A `Decoded<T>` value where `T` is `Decodable`

# decode(\_:rootKey:)

Attempt to transform `Any` into an `Array` of `Decodable` value using a
specified root key and return an `Optional`

``` swift
public func decode<T: Decodable>(_ dict: [String: Any], rootKey: String) -> [T]? where T == T.DecodedType 
```

This function attempts to extract the embedded `JSON` object from the
dictionary at the specified key and transform it into an `Array` of
`Decodable` values, returning an `Optional`. This works based on the type you
ask for.

For example, the following code attempts to decode to `Optional<[String]>`,
because that's what we have explicitly stated is the return type:

``` 
do {
  let dict = try NSJSONSerialization.JSONObjectWithData(data, options: nil) as? [String: Any] ?? [:]
  let str: [String]? = decode(dict, rootKey: "value")
} catch {
  // handle error
}
```

## Parameters

  - dict: The dictionary containing the `Any` instance to attempt to decode
  - rootKey: The root key that contains the object to decode

## Returns

A `Decoded<[T]>` value where `T` is `Decodable`
