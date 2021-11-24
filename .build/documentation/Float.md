# Extensions on Float

## Methods

### `decode(_:)`

Decode `JSON` into `Decoded<Float>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<Float> 
```

Succeeds if the value is a number that can be converted to a `Float`,
otherwise it returns a type mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded `Float` value
