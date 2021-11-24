# Extensions on UInt

## Methods

### `decode(_:)`

Decode `JSON` into `Decoded<UInt>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<UInt> 
```

Succeeds if the value is a number that can be converted to a `UInt`,
otherwise it returns a type mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded `UInt` value
