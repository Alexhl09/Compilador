# ExternalIdentifier

A convenience structure to represent an external identifier of a symbol.

``` swift
public enum ExternalIdentifier 
```

## Enumeration Cases

### `usr`

An external identifier represented by a symbol's USR.

``` swift
case usr(_ usr: String)
```

## Properties

### `hash`

Returns the hashed identifier.

``` swift
public var hash: String 
```
