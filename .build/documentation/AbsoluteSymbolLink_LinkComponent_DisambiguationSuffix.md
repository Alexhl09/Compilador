# AbsoluteSymbolLink.LinkComponent.DisambiguationSuffix

A suffix attached to a documentation link to disambiguate it from other symbols
that share the same base name.

``` swift
public enum DisambiguationSuffix: Equatable, CustomStringConvertible 
```

## Inheritance

`CustomStringConvertible`, `Equatable`

## Enumeration Cases

### `none`

The link is not disambiguated.

``` swift
case none
```

### `kindIdentifier`

The symbol's kind.

``` swift
case kindIdentifier(String)
```

### `preciseIdentifierHash`

A hash of the symbol's precise identifier.

``` swift
case preciseIdentifierHash(String)
```

### `kindAndPreciseIdentifier`

The symbol's kind and precise identifier.

``` swift
case kindAndPreciseIdentifier(
            kindIdentifier: String, preciseIdentifierHash: String
        )
```

See `kindIdentifier(_:)` and `preciseIdentifierHash(_:)` for details.

## Properties

### `description`

``` swift
public var description: String 
```

### `asLinkSuffixString`

A string representation of the given disambiguation suffix.

``` swift
public var asLinkSuffixString: String 
```

This value will include the preceding "-" character if necessary.
For example, if this is a `kindAndPreciseIdentifier(kindIdentifier:preciseIdentifierHash:)` value,
the following might be returned:

``` 
-swift.var-h73kj
```

However, if this is a `none`, an empty string will be returned.
