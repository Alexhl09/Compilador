# Extensions on Int64

## Methods

### `decode(_:)`

Decode `JSON` into `Decoded<Int64>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<Int64> 
```

Succeeds if the value is a number that can be converted to an `Int64` or a
string that represents a large number, otherwise it returns a type
mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded `Int64` value
