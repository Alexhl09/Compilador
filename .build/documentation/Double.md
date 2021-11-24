# Extensions on Double

## Methods

### `decode(_:)`

Decode `JSON` into `Decoded<Double>`.

``` swift
public static func decode(_ json: JSON) -> Decoded<Double> 
```

Succeeds if the value is a number that can be converted to a `Double`,
otherwise it returns a type mismatch.

#### Parameters

  - json: The `JSON` value to decode

#### Returns

A decoded `Double` value
