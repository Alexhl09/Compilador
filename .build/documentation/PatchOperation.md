# PatchOperation

The patch operation to apply.

``` swift
public enum PatchOperation: String, Codable 
```

Values of this type follow the [JSON Patch](https://datatracker.ietf.org/doc/html/rfc6902) format.

> Warning: The cases of this enumeration are non-exhaustive for the supported operations of JSON Patch schema. Further JSON Patch operations may
> be added in the future.

## Inheritance

`Codable`, `String`

## Enumeration Cases

### `replace`

A replacement operation.

``` swift
case replace
```

### `add`

An add operation.

``` swift
case add
```

### `remove`

A removal operation.

``` swift
case remove
```
