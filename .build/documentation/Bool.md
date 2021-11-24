# Extensions on Bool

## Methods

### `decode(_:)`

Decode `JSON` into `Decoded<Bool>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<Bool> 
```

Succeeds if the value is a boolean or if the value is a number that is able
to be converted to a boolean, otherwise it returns a type mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded `Bool` value
