# Extensions on UInt64

## Methods

### `decode(_:)`

Decode `JSON` into `Decoded<UInt64>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<UInt64> 
```

Succeeds if the value is a number that can be converted to an `UInt64` or a
string that represents a large number, otherwise it returns a type
mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded `UInt` value
