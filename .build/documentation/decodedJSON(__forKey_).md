# decodedJSON(\_:forKey:)

Pull an embedded `JSON` value from a specified key.

``` swift
public func decodedJSON(_ json: JSON, forKey key: String) -> Decoded<JSON> 
```

If the `JSON` value is an object, it will attempt to return the embedded
`JSON` value at the specified key, failing if the key doesn't exist.

If the `JSON` value is not an object, this will return a type mismatch.

This is similar to adding a subscript to `JSON`, except that it returns a
`Decoded` type.

## Parameters

  - json: The `JSON` value that contains the key
  - key: The key containing the embedded `JSON` object

## Returns

A decoded `JSON` value representing the success or failure of extracting the value from the object
