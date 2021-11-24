# JSONPointer.EscapedCharacters

An enum representing characters that need escaping in JSON Pointer values.

``` swift
public enum EscapedCharacters: String, CaseIterable 
```

The characters that need to be escaped in JSON Pointer values are defined in
[RFC6901](https://datatracker.ietf.org/doc/html/rfc6901).

## Inheritance

`CaseIterable`, `String`

## Enumeration Cases

### `tilde`

The tilde character.

``` swift
case tilde = "~"
```

This character is encoded as `~0` in JSON Pointer.

### `forwardSlash`

The forward slash character.

``` swift
case forwardSlash = "/"
```

This character is encoded as `~1` in JSON Pointer.

## Properties

### `escaped`

The escaped character.

``` swift
public var escaped: String 
```
