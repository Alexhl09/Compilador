# AbsoluteSymbolLink.LinkComponent

A component of a symbol link.

``` swift
public struct LinkComponent: CustomStringConvertible 
```

## Inheritance

`CustomStringConvertible`

## Initializers

### `init?(string:)`

Creates an absolute symbol component from a raw string.

``` swift
public init?(string: String) 
```

For example, the input string can be `"foo-swift.var"`.

## Properties

### `name`

The name of the symbol represented by the link component.

``` swift
public let name: String
```

### `disambiguationSuffix`

The suffix used to disambiguate this symbol from other symbol's
that share the same name.

``` swift
public let disambiguationSuffix: DisambiguationSuffix
```

### `description`

``` swift
public var description: String 
```

### `asLinkComponentString`

A string representation of this link component.

``` swift
public var asLinkComponentString: String 
```

## Methods

### `disambiguateBetweenOverloadedSymbols(_:)`

Given an array of symbols that are overloads for the symbol represented
by this link component, returns those that are precisely identified by the component.

``` swift
public func disambiguateBetweenOverloadedSymbols<SymbolType: DocCSymbolRepresentable>(
        _ overloadedSymbols: [SymbolType]
    ) -> [SymbolType] 
```

If the link is not specific enough to disambiguate between the given symbols,
this function will return an empty array.
