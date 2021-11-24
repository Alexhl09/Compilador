# DecodeError

Possible decoding failure reasons.

``` swift
public enum DecodeError: Error 
```

## Inheritance

`CustomStringConvertible`, `Error`, `Hashable`

## Enumeration Cases

### `typeMismatch`

The type existing at the key didn't match the type being requested.

``` swift
case typeMismatch(expected: String, actual: String)
```

### `missingKey`

The key did not exist in the JSON.

``` swift
case missingKey(String)
```

### `custom`

A custom error case for adding explicit failure info.

``` swift
case custom(String)
```

### `multiple`

There were multiple errors in the JSON.

``` swift
case multiple([DecodeError])
```

## Properties

### `description`

``` swift
public var description: String 
```

### `hashValue`

``` swift
public var hashValue: Int 
```
